# Write your MySQL query statement below

select Customers.name AS Customers
from Customers
left join Orders
on Customers.id = Orders.customerId
where Orders.id is null;