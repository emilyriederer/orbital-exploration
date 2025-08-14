import polars as pl
import re

df = pl.read_csv('Telco-Customer-Churn.csv')
df.glimpse()

# cleanup data
def to_snake_case(col):
  
    patt=r'([A-Z][a-z]+)([A-Z].*)'
    repl='\\1_\\2'
    col_out = re.sub(patt, repl, col).lower()
    return col_out

df = df.rename({'customerID': 'customer_id'}).rename( lambda c: to_snake_case(c))

# subset columns to be more realistic of database design
df_demo = df.select( pl.nth([0,1,2,3,4]) )
df_serv = df.select( pl.nth([0,5,6,7,8,9,10,11,12,13,14]) )
df_bill = df.select( pl.nth([0,15,16,17,18,19]) )
df_chrn = df.select( pl.nth([0,20]))

# add renewal date column to subscription info
df_serv = (
  df_serv
  .with_columns( 
    dt_renewal = 
    pl.when( pl.col('customer_id').rank("ordinal") < 100 )
      .then( pl.lit('2025-09-01').cast(pl.Date) )
      .when( pl.col('customer_id').rank("ordinal") < 1800)
      .then( pl.lit('2025-08-01').cast(pl.Date) )
      .otherwise( pl.lit('2025-07-01').cast(pl.Date) )
    )
  .with_columns(
    internet_service = pl.when( (pl.col('dt_renewal') == pl.lit('2025-09-01').cast(pl.Date)) & 
                                (pl.col('internet_service') == pl.lit('Fiber optic')) )
                         .then( pl.lit('Fiber'))
                         .otherwise( pl.col('internet_service'))
  )
)

df_demo.write_csv("../seeds/demo.csv", quote_style = "non_numeric")
df_serv.write_csv("../seeds/serv.csv", quote_style = "non_numeric")
df_bill.write_csv("../seeds/bill.csv", quote_style = "non_numeric")
df_chrn.write_csv("../seeds/chrn.csv", quote_style = "non_numeric")