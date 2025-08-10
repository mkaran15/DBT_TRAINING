with emp as (
Select 
    emp_id, 
    employee_name,
    city
from employee_table
),
division as (
    select * from {{ ref('stg_division')}}
)
SELECT emp.emp_id, emp.employee_name, emp.city, division.grade FROM emp, division 
where emp.emp_id=division.emp_id
order by 1