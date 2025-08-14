select 
  * exclude (dt_renewal)
from 
  {{ ref('serv') }}
  left join {{ ref('demo') }} using (customer_id)
  left join {{ ref('bill') }} using (customer_id)
where
  dt_renewal <= '{{ var('fake_today') }}'
  