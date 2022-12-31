-- creating database
CREATE DATABASE BusManagement

-- using managemnt
use BusManagement


-- student table
CREATE TABLE Student
(
	SID varchar(7) NOT NULL PRIMARY KEY,
	Name Varchar(20),
	ContactNumber Varchar(12),
	email Varchar(30),
	address varchar(40),
	Username varchar(25) NOT NULL ,
	Password varchar(20) NOT NULL ,
	status varchar(10)   
);

select * from Student
insert into Student Values('1974','Musaab Imran','03215842334','i201794@nu.edu.pk','media town 418 street 26','mz','work101','Student')



-- driver table
CREATE TABLE Driver
(
	DID Varchar(7) NOT NULL PRIMARY KEY,
	Name Varchar(20),
	ContactNumber Varchar(12),
	email Varchar(30),
	address varchar(40),
	Username varchar(25) NOT NULL ,
	Password varchar(20) NOT NULL ,
	status varchar(10),

);

insert into Driver Values('2004','Musaab Imran','03215842334','i201794@nu.edu.pk','media town 418 street 26','mz','work101','driver')
SELECT * FROM driver


-- admin table
CREATE TABLE Admin
(
	AID Varchar(7) NOT NULL PRIMARY KEY,
	Name Varchar(20),
	ContactNumber Varchar(12),
	email Varchar(30),
	address varchar(40),
	Username varchar(25) NOT NULL ,
	Password varchar(20) NOT NULL ,
	status varchar(10),
);

insert into Admin Values('0007','Musaab Imran','03215842334','i201794@nu.edu.pk','media town 418 street 26','mz','work101','admin')


-- notifications table
CREATE TABLE Notifications
(
	TEXT varchar(100) NOT NULL,
	dat varchar(20),
	AdminId VARCHAR(7),

	FOREIGN KEY (AdminId) REFERENCES dbo.Admin (AID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

insert into Notifications values('Due to prevailing politican situation buses wont be available tomorrow',GETDATE(), '0007')


-- bus table
CREATE TABLE Bus 
(
	BId varchar(10) NOT NULL PRIMARY KEY,
	rid Varchar(10),
	DriverId Varchar(7),
	FOREIGN KEY (DriverId) REFERENCES dbo.Driver (DID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

insert into Bus values('BKF201','1','2004' )
select * from Bus


-- route table
CREATE TABLE Route
(
Routeid Varchar(10) NOT NULL PRIMARY KEY,
Routeare Varchar(50) unique,
BId varchar(10),
FOREIGN KEY (BId ) REFERENCES dbo.Bus (BId )
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

select * from Route
insert into Route values('1','Bahria Town', 'BKF201');


-- 3 nested query
Select name
from Driver where DID IN(
select Bus.DriverId
from Bus
where BID in(select BId from Route Where Routeare = 'Bahria Town'));


select BId 
from Route Where Routeare = 'Bahria Town';

Select Bus.BId from dbo.Bus inner join Route on route.Routeare = 'Bahria Town'


-- driver info table
create table driverinfo
(
Name Varchar(20),
address varchar(40),
Routeare Varchar(50) 
);

Insert into driverinfo values ('Baqir', 'Queen Chowk', 'Bahria Town');
select * from driverinfo


-- booking table
create table book
(
	Routearea Varchar(50),
	FOREIGN KEY ( Routearea) REFERENCES dbo.Route (Routeare)
	ON DELETE CASCADE
    ON UPDATE CASCADE,

	SID Varchar(7),
	FOREIGN KEY (SID) REFERENCES dbo.STUDENT (SID)
	ON DELETE CASCADE
    ON UPDATE CASCADE,
);


-- audit table
create table Auditlog(
	auditid int IDENTITY(1,1) primary key,
	auditdate datetime default(getdate()),
	tablename varchar(30) not null,
	action varchar(6) not null,
	userid varchar(100) not null,
	machinename varchar(100) not null,
	pidoftable varchar(100) not null,
	olddata xml null,
	newdata xml null,
)

select * from Auditlog

