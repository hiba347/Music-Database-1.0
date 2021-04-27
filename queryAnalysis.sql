-- Use statement for database
use it330mc_FA20_ha347;

-- Generate SQL to "Add a Song Category". Provide example data.
insert into categories (categoryName)
	values ('Hip Hop');

-- Generate SQL to "Delete a Song Category". Provide example data. Cannot be the Category you added in the prior step
delete from songs
where
	songTitle = 'Sofia';

delete from categories 
where
	categoryName = 'Lo-fi';

-- Generate SQL to "Add A Song". Provide example data.
insert into songs (songTitle, songLength, songReleaseYear, categoryID)
	values('Passionfruit', '00:04:59', 2017, 5);
    
-- Generate SQL to "Delete A Song". Provide example data. Cannot be the Song you added in the prior step
delete from songs
where
	songTitle = 'The Good Side';

-- Generate SQL to "Produce searchable Song directory (search all characteristics). Display all characteristics per Song in output. Sort ascending by Song Name.". Provide example data.
select 
	* 
from 
	songs
order by 
	songTitle asc;
    
-- Generate SQL to "Add a Song Listening entry". Provide example data.
insert into listenings (listeningStartTime, listeningEndTime, userID, songID)
	values ('2020-12-05 06:31:22', '2020-12-05 7:26:49', 2, 4);

-- Generate SQL to "Delete a Song Listening entry". Provide example data. Cannot be the listening entry from the prior step
delete from listenings
where
	listeningID = 3;

-- Generate SQL to "Produce listening statement between two times of day (if the listening starts between these times).
	-- Show all listening characteristics in output.
	-- Sort by date and time.
	-- Calculate the total length of time for listening.
select * from listenings;
select
	*
from
	listenings
where 
	listeningStartTime between '2020-12-04 13:00:00' and ' 2020-12-04 17:00:00';


-- Generate SQL to Produce a Category report.
	-- Show: Category, Number of songs per Category, Total length of time per Category
select
    c.categoryName as Category,
    count(c.categoryName) as songsPerCategory,
    sum(songLength) as TotalTime
from 
	categories as c
inner join 
	songs as s on s.categoryID = c.categoryID
group by 
	categoryName;
