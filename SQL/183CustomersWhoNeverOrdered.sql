# Write your MySQL query statement below
select Customers.name as Customers
from Customers
Left Join Orders
on Customers.id = Orders.customerId
where customerId is null