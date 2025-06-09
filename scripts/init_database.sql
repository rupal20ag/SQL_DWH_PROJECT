/*
------------------------------------------------
create database and schemas
------------------------------------------------
script purpose:
this script creates a new database named 'Datawarehouse' after checking if it already
exists.If the database exists, it is dropped and recreated. Additionally, the scripts
sets up three schemas within the database: bronze,silver,gold
*/


use master;
go
  
--Drop and recreate the Datawarehouse database
if exists (select 1 from sys.databases where name='datawarehouse')
Begin
 alter database datawarehouse set single user with rollback immediate;
 drop database datawarehouse;
end;
go

--create the datawarehuse database
create database datawarehouse;
go

use datawarehouse;
go

--create schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
