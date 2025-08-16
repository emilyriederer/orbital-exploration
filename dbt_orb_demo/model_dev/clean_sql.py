import sqlglot
from sqlglot import parse_one, exp 

def clean_sql(sql_raw: str, 
              tbl_ref: str, 
              model_version: str = None,
              col_id: str = 'id', 
              cols_renm: dict[str, str] = {'output_probability.1':'pred', 
                                           'output_probability.0': '0', 
                                           'output_label': '0'},
              ) -> str:

    """Opinionated clean-up of SQL returned by orbital

    This function executes the following transformations:
    - Rename desired columns such as the prediction column (per result of cols_renm)
    - Remove unwanted variables (those being "renamed" to "0")
    - Add back ID variable for joining predictions to other datasets 
    - Fix table reference from default TBL_REF to a specific dbt model reference
    - Reformats SQL for improved readability

    Parameters
    ----------
    sql_raw: SQL string provided by `orbital`
    tbl_ref: Name of dbt model to be referenced in query's FROM clause
    model_version: Version number of model to be added as own column. Defaults to None to add no column
    col_id: Name of the column representing the unique identifier of entities to be predicted
    cols_renm: Dictionary of {default_name: desired_name} to rename fields

    Returns
    -------
    str
        A formatted and updated SQL query
    """


    ast = parse_one(sql_raw)
    
    for e in ast.expressions:
        # rename prediction column
        if cols_renm.get(e.alias) == '0':
            e.set(arg_key='this',value=None)
            e.set(arg_key='alias',value=None)
        if e.alias in cols_renm.keys():
            e.set(arg_key='alias',value=cols_renm.get(e.alias))
    
    # add back a variable for reference (typically like an ID for joining to other tables)
    # this is tricky because sometimes orbital uses CTEs and other times it doesn't;
    # generally, we need to get the identifier inside the CTE if it exists
    col = exp.Column(this=exp.to_identifier(col_id))
    if ast.find(exp.CTE) is not None:
        cte_select = ast.find(exp.CTE).this
        cte_select.expressions.append(col)
    ast = ast.select(col_id)

    # add model version to outer query if desired
    if model_version is not None:

        col_version = exp.Alias(
            this=exp.Literal.string(model_version), 
            alias="model_version")
        ast.find(exp.Select).expressions.append(col_version)
    
    # pretty print
    sql_fmt = sqlglot.transpile(ast.sql(), 
                                write="duckdb", 
                                identify=True, 
                                pretty=True)[0]
    
    # change out table to dbt reference
    ref_str = f"{{{{ ref('{tbl_ref}')}}}}"
    sql_fnl = sql_fmt.replace('"TBL_REF"', ref_str) 
  
    return sql_fnl