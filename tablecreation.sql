-- use statement for database
use it330mc_FA20_ha347;

-- drop statements for all tables
drop table if exists listenings;
drop table if exists songs;
drop table if exists users;
drop table if exists categories;
drop table if exists artists;

-- create statements for all tables
create table artists (
	artistID int primary key auto_increment,
    artistName nvarchar(250) NOT NULL, 
    createdDate datetime default current_timestamp
) engine=innoDB;

create table categories (
	categoryID int primary key auto_increment,
    categoryName nvarchar(250) NOT NULL,
    createdDate datetime default current_timestamp
) engine=innoDB;

create table users (
	userID int primary key auto_increment,
    username nvarchar(250) UNIQUE NOT NULL, 
    createdDate datetime default current_timestamp
) engine=innoDB;

create table songs (
	songID int primary key auto_increment,
    songTitle nvarchar(250) NOT NULL,
    songLength time(0) NOT NULL,
    songReleaseYear int NOT NULL,
    categoryID int NOT NULL,
    createdDate datetime default current_timestamp,
    constraint foreign key (categoryID) references categories(categoryID)
) engine=innoDB;

create table listenings (
	listeningID int primary key auto_increment,
    listeningStartTime datetime default current_timestamp, 
    listeningEndTime datetime default current_timestamp,
    userID int NOT NULL,
    songID int NOT NULL,
    createdDate datetime default current_timestamp,
    constraint foreign key (userID) references users(userID),
    constraint foreign key (songID) references songs(songID)
) engine=innoDB;
