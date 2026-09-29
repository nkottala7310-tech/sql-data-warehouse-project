/*
=======================================================================
Create Database and Schemas
=======================================================================
Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

WARNING:
Running this script will drop entire 'DataWarehouse' database if exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running the script.
*/

use master;
go

-- drop and recreate the 'DataWarehouse' databse
if exists ( select 1 from sys.databases where name = 'DataWarehouse')
begin
alter database DataWarehouse set single_user with rollback immediate;
drop database DataWarehouse;
end;
go

-- Create the 'DataWarehouse' database
create database datawarehouse;
go

use datawarehouse;
go

--- create schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
