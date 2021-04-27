-- use statement for database
use it330mc_FA20_ha347;

-- statements that delete all data in the tables in the correct order
delete from listenings;
delete from songs;
delete from users;
delete from categories;
delete from artists;

-- statements that insert all data
-- artists inserts
insert into artists (artistName)
	values ('The Weeknd');
    
insert into artists (artistName)
	values ('Taylor Swift');
    
insert into artists (artistName)
	values ('Clairo');
    
insert into artists (artistName)
	values ('Rex Orange Country');
    
insert into artists (artistName)
	values ('Troye Sivan');
    
insert into artists (artistName)
	values ('Frank Ocean');
    
-- categories inserts
insert into categories (categoryName)
	values ('R&B');

insert into categories (categoryName)
	values ('Pop');

insert into categories (categoryName)
	values ('Lo-fi');

insert into categories (categoryName)
	values ('Indie Pop');

-- users inserts
insert into users (username)
	values ('hiba99');
    
insert into users (username)
	values ('robochris');
    
insert into users (username)
	values ('doctor_octor');

-- 10 songs and their supporting data
-- Song 1
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Invisible String', '00:04:13', 2020, 2);

-- Song 2
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Sofia', '00:03:18', 2019, 3);

-- Song 3
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Blinding Lights', '00:03:20', 2019, 1);

-- Song 4
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Animal', '00:04:25', 2018, 2);

-- Song 5
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Pluto Projector', '00:04:27', 2019, 4);

-- Song 6
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('After Hours', '00:06:01', 2020, 1);

-- Song 7
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Cornelia Street', '00:04:47', 2019, 2);

-- Song 8
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('The Good Side', '00:04:28', 2018, 2);

-- Song 9
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Corduroy Dreams', '00:03:27', 2015, 4);

-- Song 10
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Pink + White', '00:03:04', 2016, 1);
    
-- -- listenings inserts
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-04 16:23:13', '2020-12-04 16:52:41', 3, 6);
    
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-04 14:00:04', '2020-12-04 15:41:18', 3, 10);
    
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-04 19:53:09', '2020-12-04 20:17:21', 1, 1);
    
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-04 10:02:24', '2020-12-04 10:33:15', 1, 5);
    
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-04 17:27:03', '2020-12-04 18:21:19', 2, 7);
select * from songs;
select * from users;
select * from listenings group by listeningStartTime asc;
select * from artists;
select * from categories;
