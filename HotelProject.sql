--Create Our Database

USE Master

DROP DATABASE IF EXISTS Hotel

CREATE DATABASE Hotel
GO

USE Hotel
GO

-- Create table for Rooms in Hotel

CREATE TABLE dbo.GuestRooms
(
	RoomId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	RoomNumber varchar(50) NOT NULL UNIQUE,
	BedsInRoom int NOT NULL ,
	BedSize varchar(50) NOT NULL ,
)


-- Create table for Staff in Hotel

CREATE TABLE dbo.Staff
(
	StaffId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varchar(50) NULL ,
	MiddleName varchar(100) NULL ,
	LastName varchar(50) NOT NULL ,
	PreferredName varchar(50) NOT NULL ,
	Department varchar(50) NOT NULL ,
	DateHired datetime NOT NULL ,
	HourlyRatex100 int NOT NULL ,
	IsSalary bit NOT NULL ,
	IsActive bit NOT NULL ,
	IsExempt bit NOT NULL
)

-- Create table for Mainteance needs

CREATE TABLE dbo.Maintenance
(
	MaintenanceId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	DateReported datetime NOT NULL ,
	DateCompleted datetime NULL ,
	IsComplete bit NOT NULL ,
	Description varchar(200) NOT NULL ,
	StaffId int FOREIGN KEY REFERENCES dbo.Staff(StaffId) NULL,
	RoomId INT FOREIGN KEY REFERENCES dbo.GuestRooms(RoomId) NULL,
)

-- Create table for Staff Assignments

CREATE TABLE dbo.StaffAssignments
(
TaskId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
StaffId INT FOREIGN KEY REFERENCES dbo.Staff(StaffId),
MaintenanceId INT FOREIGN KEY REFERENCES dbo.Maintenance(MaintenanceId) NULL,
RoomId INT FOREIGN KEY REFERENCES dbo.GuestRooms(RoomId) NULL,
DateAssigned datetime NOT NULL ,
TaskDescription varchar(200) NOT NULL ,
IsRecurring bit NOT NULL ,
RecurrenceInterval varchar(50) NULL ,
IsActive bit NOT NULL ,
)


-- Insert some Fake room Data
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (101, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (102, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (103, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (104, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (105, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (106, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (107, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (108, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (109, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (110, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (111, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (112, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (113, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (114, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (115, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (116, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (117, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (118, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (119, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (120, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (121, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (122, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (123, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (124, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (125, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (126, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (127, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (128, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (129, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (130, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (131, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (132, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (133, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (134, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (135, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (136, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (137, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (138, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (139, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (140, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (141, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (142, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (143, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (144, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (145, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (146, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (147, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (148, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (149, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (150, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (151, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (152, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (153, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (154, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (155, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (156, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (157, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (158, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (159, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (160, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (161, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (162, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (163, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (164, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (165, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (166, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (167, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (168, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (169, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (170, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (171, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (172, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (173, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (174, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (175, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (176, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (177, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (178, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (179, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (180, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (181, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (182, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (183, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (184, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (185, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (186, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (187, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (188, 1, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (189, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (190, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (191, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (192, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (193, 1, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (194, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (195, 2, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (196, 2, 'Queen');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (197, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (198, 1, 'King');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (199, 2, 'Twin');
insert into dbo.GuestRooms (RoomNumber, BedsInRoom, BedSize) values (201, 1, 'Twin');

-- Generate some fake employees

insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Augusto', 'Lorain', 'Eltone', 'Gordon', 'Housekeeping', '6/15/2008', '1142', 0, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Fan', 'Eli', 'Loton', 'Papageno', 'Front Desk', '5/18/2014', '841', 0, 0, 0);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Viviene', 'Bernette', 'Krier', 'Keene', 'Maintainence', '7/13/2003', '1954', 1, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Chloette', 'Bay', 'Braffington', 'Skyler', 'Administration', '7/15/2013', '1860', 0, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Tim', 'Grange', 'Graffham', 'Enos', 'Housekeeping', '5/21/2003', '1074', 0, 1, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Cynde', 'Chick', 'Di Maggio', 'Rory', 'Front Desk', '9/2/2001', '1238', 1, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Odelia', 'Karlik', 'Gudgen', 'Ervin', 'Maintainence', '8/8/2015', '2087', 0, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Franchot', 'Bernete', 'Plows', 'Nertie', 'Administration', '8/16/2009', '1318', 1, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Selene', 'Tremayne', 'Ebbutt', 'Randi', 'Housekeeping', '6/9/2013', '1918', 0, 0, 1);
insert into dbo.Staff (FirstName, MiddleName, LastName, PreferredName, Department, DateHired, HourlyRatex100, IsSalary, IsActive, IsExempt) values ('Callida', 'Mariellen', 'Rennicks', 'Jareb', 'Maintainence', '8/15/2018', '1870', 0, 1, 0);


-- Add some room maintenance needs
insert into dbo.Maintenance (DateReported, DateCompleted, IsComplete, Description, StaffId, RoomId) values ('10/6/2016', '6/1/2020', 1, 'Toilet broken from wall', 7, 36);
insert into dbo.Maintenance (DateReported, DateCompleted, IsComplete, Description, RoomId) values ('1/1/2011', null, 0, 'TV wont turn on', 95);
insert into dbo.Maintenance (DateReported, DateCompleted, IsComplete, Description, StaffId, RoomId) values ('10/4/2016', '3/4/2020', 1, 'Shower pressure very low', 3, 55);
insert into dbo.Maintenance (DateReported, DateCompleted, IsComplete, Description, StaffId, RoomId) values ('1/7/2017', '5/26/2020', 1, 'Carpet has been set on fire', 10, 27);
insert into dbo.Maintenance (DateReported, DateCompleted, IsComplete, Description, StaffId, RoomId) values ('12/23/2010', '9/8/2020', 1, 'Squirrels in mini-fridge', 2, 96);

-- Add some employee tasks
insert into dbo.StaffAssignments (StaffId, [DateAssigned], [TaskDescription], [IsRecurring], [RecurrenceInterval], [IsActive]) values (5, '5/10/2020' , 'Clean Rooms on First Floor', 1, 'Daily', 1 );
insert into dbo.StaffAssignments (StaffId, MaintenanceId, RoomId, [DateAssigned], [TaskDescription], [IsRecurring], [IsActive]) values (7, 1, 36, '2016-10-08', 'Maintainence Need', 0, 0 );
insert into dbo.StaffAssignments (StaffId, MaintenanceId, RoomId, [DateAssigned], [TaskDescription], [IsRecurring], [IsActive]) values (3, 3, 55, '2016-10-04', 'Maintainence Need', 0, 0  );
insert into dbo.StaffAssignments (StaffId, MaintenanceId, RoomId, [DateAssigned], [TaskDescription], [IsRecurring], [IsActive]) values (10, 4, 27, '2017-01-07', 'Maintainence Need', 0, 0 );
insert into dbo.StaffAssignments (StaffId, MaintenanceId, RoomId, [DateAssigned], [TaskDescription], [IsRecurring], [IsActive]) values (2, 5, 96, '2010-12-23','Maintainence Need', 0, 0 );
insert into dbo.StaffAssignments (StaffId, [DateAssigned], [TaskDescription], [IsRecurring], [RecurrenceInterval], [IsActive]) values (2, '2/26/2019', 'Consolidate receipts', 1, 'Weekly', 1);

-- Write a SELECT query that uses a WHERE clause
SELECT RoomNumber
FROM dbo.GuestRooms
WHERE BedSize = 'King'

-- Write a  SELECT query that uses an OR and an AND operator
SELECT RoomNumber
FROM dbo.GuestRooms
WHERE BedsInRoom = 2
	AND BedSize = 'King'

-- Write a  SELECT query that filters NULL rows using IS NOT NULL
SELECT Description
FROM dbo.Maintenance
WHERE DateCompleted IS NOT NULL

-- Write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable

-- Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable

-- Write a DML statement that DELETEs rows from a table that another table references. This script will have to also DELETE any records that reference these rows. Both of the DELETE statements need to be wrapped in a single TRANSACTION.

-- Write a  SELECT query that utilizes a JOIN

-- Write a  SELECT query that utilizes a JOIN with 3 or more tables

-- Write a  SELECT query that utilizes a LEFT JOIN

-- Write a  SELECT query that utilizes a variable in the WHERE clause

-- Write a  SELECT query that utilizes a ORDER BY clause

-- Write a  SELECT query that utilizes a GROUP BY clause along with an aggregate function

-- Write a SELECT query that utilizes a CALCULATED FIELD

-- Write a SELECT query that utilizes a SUBQUERY

-- Write a SELECT query that utilizes a JOIN, at least 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC) AND A GROUP BY clause with an aggregate function

-- Write a SELECT query that utilizes a JOIN with 3 or more tables, at 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC), a GROUP BY clause with an aggregate function, and a HAVING clause

-- Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries

-- Design a NONCLUSTERED INDEX with TWO KEY COLUMNS that improves the performance of one of the above queries

-- Design a NONCLUSTERED INDEX with AT LEAST ONE KEY COLUMN and AT LEAST ONE INCLUDED COLUMN that improves the performance of one of the above queries
