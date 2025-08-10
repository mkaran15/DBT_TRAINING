-- with stg_division as (
-- Select 
--     emp_id, 
--     marks,
-- case 
--     when marks >= 90 then 'A' 
--     when marks >= 80 and marks < 90 then 'B'
--     else 'C'
-- END as GRADE 
-- from employee_table
-- )
-- Select * from stg_division

with stg_division as (
Select 
    emp_id, 
    marks,
case 
    when marks >= 90 then 'A' 
    when marks >= 80 and marks < 90 then 'B'
    else 'C'
END as GRADE 
from {{ source('source_info', 'employee_table') }}
)
Select * from stg_division