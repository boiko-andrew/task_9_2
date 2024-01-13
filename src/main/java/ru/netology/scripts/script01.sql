-- DBMS - SQLite, DBMS with GUI - SQLiteStudio
-- Task 1
-- Note: In SQLite, a column with type INTEGER PRIMARY KEY
-- is an alias for the ROWID.

drop table if exists Customers;
create table if not exists Customers(
    id integer primary key,
    name nvarchar(20) not null unique,
    surname nvarchar(20) not null unique,
    age integer check (age > 0),
    phone char(16) not null unique
);

delete from Customers;
insert into Customers(name, surname, age, phone)
values
    ('Aleksei', 'Pazhitnov', 68, '+7(903)012-34-56'),
    ('aleksei', 'Sitnokov', 52, '+7(903)789-01-23'),
    ('ALEKSEI', 'Varaksin', 52, '+7(903)456-78-90'),
    ('German', 'Gref', 59, '+7(903)123-45-67'),
    ('Pavel', 'Durov', 39, '+7(903)890-12-34'),
    ('Evgenii', 'Kasperskii', 58, '+7(903)567-89-01');
select * from Customers;