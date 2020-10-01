-- Create our Database
USE Master

DROP DATABASE IF EXISTS Hotel

CREATE DATABASE Hotel
GO

USE Hotel
GO

-- Table holding Guest information
CREATE TABLE dbo.Guests (
    GuestId INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50),
    StreetAddress VARCHAR(50),
    City VARCHAR(50),
    [State] VARCHAR(50),
    ZipCode VARCHAR(50),
    CCNumber INT
)

-- Table holding Room information
CREATE TABLE dbo.Rooms (
    RoomId INT PRIMARY KEY,
    RoomNumber VARCHAR(50) NOT NULL,
    Style VARCHAR(50) NOT NULL,
    Maintenance VARCHAR(50)
)

-- Table holding information on Employees
CREATE TABLE dbo.Employees (
    EmployeeId INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50),
    StreetAddress VARCHAR(50),
    City VARCHAR(50),
    [State] VARCHAR(50),
    ZipCode VARCHAR(50),
    Department VARCHAR(50) NOT NULL,
    DateHired DATETIME
)

-- Table containing Guest Reservations
CREATE TABLE Reservations (
    GuestId INT FOREIGN KEY REFERENCES Guests(GuestId),
    RoomId INT FOREIGN KEY REFERENCES Rooms(RoomId),
    CONSTRAINT ReservationId PRIMARY KEY (GuestId, RoomId),
    ReservationStart DATETIME,
    ReservationEnd DATETIME
)

-- Table for Staffing Assignments
CREATE TABLE Staffing (
    EmployeeId INT FOREIGN KEY REFERENCES Employees(EmployeeId),
    RoomId INT FOREIGN KEY REFERENCES Rooms(RoomId),
    CONSTRAINT StaffingId PRIMARY KEY (EmployeeId, RoomId),
    DateAssigned DATETIME,
    TaskDescription VARCHAR(500)
)
