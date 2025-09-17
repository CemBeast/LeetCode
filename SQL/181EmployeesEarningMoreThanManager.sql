# Write your MySQL query statement below
select E1.name as Employee
from Employee E1, Employee E2
where E1.managerId = E2.id and E1.salary > E2.salary