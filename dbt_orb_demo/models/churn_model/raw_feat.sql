select 
  * exclude (dt_renewal, exclusion_reason)
from 
  {{ ref('raw_popn') }}
  left join {{ ref('serv') }} using (customer_id)
  left join {{ ref('demo') }} using (customer_id)
  left join {{ ref('bill') }} using (customer_id)
where
  exclusion_reason = 'None'
  