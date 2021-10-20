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
-- UC-3: Inserting data in table
insert into Address_Book values
('Tony','Stark','Stark Tower 59th Street Broadway','Manhattan','NewYork','100001','8987224534','ironman@gmail.com'),
('Steve','Rogers','Times Square','Brooklyn','Texas','11224','9876778434','captainAmerica@yahoo.com'),
('Bruce','Banner','Vandalia','Greater Dayton','Florida','45441','1403425611','incredibleHulk@gmail.com'),
('Peter','Parker','20 Ingram Street, Forest Hills, Queens','NewYork City','NewYork','10023','4013224355','spiderman@gmail.com'),
('Stephen','Strange','177A Bleecker Street, Greenwich Village','Manhattan','NewYork','10431','6300964579','drStrange@yahoo.com'),
('Thor','Odinson','RoyalPalace','Asgard','Florida','224','7849876734','thor@rediffmail.com'),
('Natasha','Romanoff','Broadway street','NewYork City','NewYork','10028','45667365277','blackwidow@gmail.com')