select 
  t.customer_id,
  t.churn,
  p.pred
from
  {{ ref('raw_targ') }} as t
  left join {{ ref('pred_churn') }} as p using customer_id
where t.churn is not null