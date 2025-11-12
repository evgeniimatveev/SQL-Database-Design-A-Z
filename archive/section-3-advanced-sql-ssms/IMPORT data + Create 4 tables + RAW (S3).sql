              --IMPORT DATA all 4 tables + RAW FILES

USE [pets]
GO

-- Pets
CREATE TABLE Pets (
    Petid varchar(10),
    [Name] varchar(100),
    Kind varchar(100),
    Gender varchar(10),
    Age int,
    OwnerID varchar(10)
)

INSERT INTO [dbo].[Pets]
SELECT *
FROM [dbo].[RAW_Pets]

-- Owners
CREATE TABLE Owners (
    OwnerID varchar(10),
    [Name] varchar(100),
    Surname varchar(100),
    StreetAddress varchar(100),
    City varchar(100),
    [State] varchar(2),
	StateFull varchar(100),
	ZipCode varchar(10)
)

INSERT INTO [dbo].[Owners]
SELECT *
FROM [dbo].[RAW_Owners]

-- ProceduresDetails
CREATE TABLE ProceduresDetails (
    ProcedureType varchar(100),
    ProcedureSubCode varchar(10),
    [Description] varchar(100),
    Price float
)

INSERT INTO [dbo].[ProceduresDetails]
SELECT *
FROM [dbo].[RAW_ProceduresDetails]

-- ProceduresHistory
CREATE TABLE ProceduresHistory (
    PetID varchar(10),
    ProcedureDate date,
    ProcedureType varchar(100),
    ProcedureSubCode varchar(10)
)

INSERT INTO [dbo].[ProceduresHistory]
SELECT *
FROM [dbo].[RAW_ProceduresHistory]