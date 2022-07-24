# Use subquery:
SELECT name from salesperson
where sales_id not in 
(select sales_id from orders where com_id in 
(select com_id from company where name='RED'));

# Use subquery and left join
SELECT name FROM salesperson
where sales_id not in
(SELECT sales_id FROM orders
LEFT JOIN
company 
ON orders.com_id=company.com_id 
WHERE company.name='RED');

