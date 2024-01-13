-- Task 3
-- DBMS - SQLite, DBMS with GUI - SQLiteStudio

select Customers.name, Customers.surname,
    Orders.product_name, Orders.amount as quantity
from Customers inner join Orders on Customers.id = Orders.customer_id
where lower(Customers.name) LIKE 'aleksei'
order by Customers.surname asc, Customers.name asc,
    Orders.product_name asc;