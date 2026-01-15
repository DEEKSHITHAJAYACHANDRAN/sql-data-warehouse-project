/*
**************************************************************

Create Database and Schems

**************************************************************
Script Purpose:
	This scrip creates a new database name'Datawarehouse' after chceking if it already exists.
	If the database Exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', 'gold'

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All the data's in the database will permanently deleted . Proceed with coution
	and ensure you have proper backup before running this script.
*/


Use master;
Go

--Drop and recreate the 'DataWarehuouse' database
	IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
	DROP DATABASE DataWarehouse

Go

--Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO


USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
