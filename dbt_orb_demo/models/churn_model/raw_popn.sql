select 
  customer_id,
  case
    when (hash(customer_id) % 100000) / 100000 < {{ var('train_percent') }}
    then 'Train'
    else 'Test'
    end as cat_train_test,
  case
    when dt_renewal > '{{ var('fake_today') }}' then 'Immature'
    when phone_service = 'Free Trial' then 'Trial'
    else 'None'
    end as exclusion_reason
from 
  {{ ref('serv') }}

  