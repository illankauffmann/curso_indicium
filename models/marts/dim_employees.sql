with 
int_employess as (
select * 
from {{ ref('int_employees__self_join') }}
)

select * from int_employess