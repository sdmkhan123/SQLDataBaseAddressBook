-- UC-1: Create a database
create database AddressBookServiceDB;
-- View database name
use AddressBookServiceDB;
select DB_NAME()
--UC-2: Create table in the database
create table Address_Book
(
FirstName varchar(25) not null,
LastName varchar(25) not null,
Address varchar(60) not null,
City varchar(15) not null,
State varchar(15) not null,
Zipcode varchar(6) not null,
PhoneNumber varchar(12) not null,
Email varchar(25) not null
);