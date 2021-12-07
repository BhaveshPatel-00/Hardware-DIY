use master

create database PROG7311_POE_DB

use PROG7311_POE_DB 

--Table to store New/Exists users

create table UsersDetails (
Username varchar(25) primary key not null,
Firstname varchar (20) not null, 
Surname varchar (20) not null,
Email varchar(50) not null, 
Password varchar(100) not null,
Roles varchar (10) not null
);

--Table containing product information

create table product (
Product_ID varchar(100) primary key not null,
Product_Name varchar(100) not null,
[Description] varchar (200),
Categories varchar (50),
[Price-(R)] float not null,
);

--Table containing the users order

create table PlacedOrders (
Username varchar(25) foreign key REFERENCES UsersDetails(Username),
Product_ID varchar(100) foreign key REFERENCES product(Product_ID),
NumberOfItem int,
DateOfOrder dateTime,
CheckOut varchar(20)
);

--Drills
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('DCD778S2K-QW', 'DeWalt Hammer Drill 18V', 'Various drilling and screwdriving and hammer drilling functions', 'Drills', 5960.00);
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('JNSD89123', 'Ryobi Circular Saw And Drill Driver Kit', 'TCordless circular saw. 4V input power. 125Mm (20mm bore) blade diameter..', 'Drills', 5800.00);
--Compressor
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('RS-DD1.5-24', 'Ross Direct Drive Air Compressor (24L)', '• RS-DD1.5-24 24Lair compressor 206 L/minimum 8 bar pressure.', 'Compressor', 2199.00);
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('SC-G3080-VO', 'Ryobi 50L Air Compressor with Spray Gun Kit (1500W)', '5-pc accessory kit includes: Air tyre inflator, gravity powered paint spray gun, engine cleaning gun, air duster gun and air recoil hose.', 'Compressor', 2899.00);
--Sanders
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('BDCROS18N-XJ', 'BLACK+DECKER Random Orbital Sander 18V BDCROS18N-XJ', 'High quality finish - the motion of the sander allows you to safely sand across the grain of the wood without leaving swirl marks on your finish.', 'Sander', 1100.00);
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('BFD93NFDK-DA', 'Ryobi Power File Sander 400W PF-125K', 'Adjustable sanding arm pivots 100 degrees for hard to reach areas.', 'Sander', 1700.00);
--Sodlering
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('NJF83-N3F', 'Topline TS7130 Soldering Iron (30W)', 'Light weight iron pencil handle for delicate soldering jobs.', 'Soldering', 160.00);
--Heat Gun
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('KX1650-QS', 'BLACK+DECKER Heat Gun 1750W', 'Ideal for stripping paint, varnishes and adhesives. Built in stand for hands free applications and cooling.', 'Heat Gun', 448.00);
--Hobby Tools
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('MGJ349-SD', 'Dremel Spiral Cutting Drywall Drill Bit (3.2mm)', 'General purpose routing or grooving', 'Hobby-Tools', 25.00);
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('HJADSJNASD', 'Dremel 687 Multi-Purpose Set (50 Pack)', 'Multi-Purpose Set', 'Hobby-Tools', 375.00);
--Screwdriver
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('CS-1480', 'Ryobi Screwdriver 4.8V', 'Soft grip handle for user comfort. 6 piece accessory kit. Automatic spindle lock.', 'Screwdriver', 260.00);
insert into product (Product_ID, Product_Name, [Description] , Categories, [Price-(R)]) values ('DTD154Z 18V', 'Makita Screwdriver 18V', 'Drywall Screwdriver, with variable speed control, powered by 18V Li-ion battery (not included) to supply energy to the brushless motor to deliver up to 2,500 rpm.', 'Screwdriver', 6700.00);

--Other sql statements

drop table PlacedOrders
drop table product
drop table UsersDetails

Delete from UsersDetails where Username = 'User';
Delete from PlacedOrders where Username = 'User';

select * from product;

select * from PlacedOrders;

select * from usersdetails;