Welcome to your new dbt project!
## `dbt` + `orbital` Model Deployment Demo 

This project is a demo of deploying a ML model with `dbt`. 

### Navigation

In addition to a standard `dbt` project, it contains the following:

- `setup/`: File to reproduce the datasets in the `seeds/` directory. This isn't something that is part of a realistic project or model deployment. It just breaks up a toy "one big table" dataset into something moderately more similar to what one would find in a database
- `model_dev/`: Shows the process of interacting with a database while training a model and deploying the SQL representation to your dbt project. **Please don't train models in notebooks!** This is just part of the demo so I can narrate the steps. 
  + `clean_sql.py`: Manipulates the `sqlglot` AST to better tailor `orbital` output
  + `train_and_convert.ipynb`: Shows the process of deploying separate feature engineering and prediction tables
  + `compare_results.ipynb`: Confirms that we can recover the same results in python or via the database
  + `table_tour.ipynb`: Shows some of the resulting table structures

### Running Instructions

0. Activate uv environment from the main directory

1. Setup seeds & duckdb database:

```
python setup/prep-seeds.py
dbt seed
```

2. Train models and generate SQL in the `model_dev/train_and_convert.ipynb` notebook

3. Run `dbt` project:

```
dbt run
dbt test --store-failures
dbt snapshot
```

### Acknowledgements 

Churn dataset is borrowed from IBM sample datasets: https://github.com/IBM/telco-customer-churn-on-icp4d/blob/master/data/Telco-Customer-Churn.csv
