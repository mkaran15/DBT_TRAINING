 with emp as (
    select 
        emp_id,
        marks
    from
        {{ source('source_info','employee_table') }}
    where
        marks > 100 or marks < 0
)
Select * from emp