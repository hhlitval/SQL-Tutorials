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


select * from Users



