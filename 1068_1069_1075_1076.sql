# 1068:
select Product.product_name, Sales.year, Sales.price
from Sales 
inner join Product on Product.product_id = Sales.product_id;

# 1069
select product_id, sum(quantity) as total_quantity
from Sales
group by product_id;


# 1075 
select Project.project_id, round(avg(Employee.experience_years), 2)  as average_years
from Project 
inner join Employee on Project.employee_id = Employee.employee_id
group by Project.project_id;


$ 1076
select project_id 
from Project 
group by project_id
having count(*) = (
    select count(*) from Project group by project_id order by count(*) desc limit 1
);



    
   