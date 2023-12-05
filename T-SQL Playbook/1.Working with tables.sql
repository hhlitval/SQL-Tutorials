use SampleDb;

-- Creating a table (simple)
create table Users(
	email varchar(50)
);

-- Dropping a table
drop table Users;

-- Creating a table with a Primary Key
create table Users(
	Id integer primary key,
	email varchar(50)
);

-- Creating GUID
create table Users(
	Id uniqueidentifier primary key
);

-- Creating a table with an auto-incrementing PK started and incremented by 1
create table Users(
	Id integer primary key identity(1,1),
	email varchar(50) not null
);

-- Creating a table with an auto-incrementing PK GUID
create table Users(
	Id uniqueidentifier primary key default newid(),
	email varchar(50)
);

-- Creating composite keys
create table Users_Roles(
	UserId integer,
	RoleId integer,
	primary key(UserId, RoleId)
);

-- Defining columns
create table Users(
	Id integer primary key identity(1,1),
	Email varchar(25),
	CreatedAt datetime,
	First varchar(25),
	Last varchar(25),
	Bio text
);

-- Basic column constraints
create table Users(
	Id integer primary key identity(1,1),
	Email varchar(255) not null unique,
	CreatedAt datetime not null,
	MoneySpent decimal(10,2),
	First varchar(50),
	Last varchar(50),
	Bio varchar(max)
);

-- Column defaults
create table Users(
	Id integer primary key identity(1,1),
	Email varchar(255) not null unique,
	MoneySpent decimal(10,2) default 0,
	CreatedAt datetime not null default getdate(),	
	First varchar(50),
	Last varchar(50),
	Bio varchar(max)
);