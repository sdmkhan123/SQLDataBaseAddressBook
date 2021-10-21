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
-- View AddressBook table
select * from Address_Book

-- UC-4: Edit existing contact using persons's name
update Address_Book
set PhoneNumber = '7654567885',Zipcode='534260' where FirstName = 'Bruce';
select* from Address_Book;

-- UC-5: Delete contact using person's name
delete Address_Book
where FirstName = 'Natasha';
select* from Address_Book;

-- UC-6: Retrieve contacts belonging to City or state from Address_Book
select * from Address_Book
where City = 'Brooklyn' or State = 'Texas';

--UC-7:
-- Count contacts by City in Address_Book  
select City,count(City) from Address_Book group by City;
-- Count contacts by State in Address_Book  
select State,count(State) from Address_Book group by State;
-- UC-8: Retrieve entries sorted alphabetically by Person�s name for a given city
select * from Address_Book
where City = 'Brooklyn'
order by FirstName asc;

-- UC-9:
-- Add a new address book name and type columns
alter table Address_book add addressbook_name varchar(255), type varchar(255);
-- update records for newly added columns
update address_book set addressbook_name = 'Home',type = 'Family' where FirstName = 'Tony' or FirstName = 'Peter';
update address_book set addressbook_name = 'Home',type = 'Friends' where FirstName = 'Steve' or FirstName = 'Bruce' or FirstName = 'Thor';
update address_book set addressbook_name = 'Office',type = 'Profession' where FirstName = 'Stephen' or FirstName = 'Natasha';
select * from Address_book;
-- UC-10: Count contacts by type
select type, COUNT(FirstName) from address_book group by type;