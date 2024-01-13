-- Task 2
-- DBMS - SQLite, DBMS with GUI - SQLiteStudio

drop table if exists Orders;
create table if not exists Orders(
    id integer primary key,
    [date] date not null,
    customer_id integer not null references Customers (id),
    product_name nvarchar(40) not null,
    amount double not null check (amount > 0)
);

delete from  Orders;
insert into Orders ([date], customer_id, product_name, amount)
values
    ('2024-01-12', 1, 'bananas', 2.0),
    ('2024-01-13', 1, 'apples', 1.5),
    ('2024-01-13', 1, 'oranges', 2.5),
    ('2024-01-11', 2, 'bread', 3),
    ('2024-01-12', 2, 'onion', 1.0),
    ('2024-01-12', 2, 'sweets', 1.5),
    ('2024-01-10', 3, 'potato', 4.0),
    ('2024-01-10', 3, 'carrot', 2.0),
    ('2024-01-10', 3, 'beet', 3.0),
    ('2024-01-11', 4, 'cake', 1),
    ('2024-01-11', 4, 'tea', 2),
    ('2024-01-11', 4, 'cookies', 1),
    ('2024-01-12', 5, 'potato', 2.0),
    ('2024-01-12', 5, 'carrot', 0.5),
    ('2024-01-12', 5, 'cucumber', 1),
    ('2024-01-12', 5, 'eggs', 3),
    ('2024-01-12', 5, 'green peas', 1),
    ('2024-01-12', 5, 'onion', 1),
    ('2024-01-12', 5, 'mayonnaise', 1),
    ('2024-01-13', 6, 'coffee', 1),
    ('2024-01-13', 6, 'cake', 1);
select * from Orders;