select
  customer_id,
  case when churn = 'Yes' then 1 else 0 end as churn
from {{ ref('chrn') }}
where 
  churn is not null