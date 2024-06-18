-- display all info when username is 'BaraM'
select * from Uzer where username = 'BaraM';

-- display title and trailer where title starts with 'Toy'
select Title,Trailer from movie where title like 'Toy%';

 
-- dispaly genres for movie where title is 'Sherk' or 'The Lion King'
select Title, Genre from Movie Natural Join Genre where title = 'Sherk' or title ='The Lion King';

-- display movie title where genre is Comedy
select title from movie Natural Join Genre where genre = 'Comedy';

-- select movie title, username, user rating, comment for all users who reviewed and rated a movie
select title,username ,userrating ,coment from ((Movie Natural Join Uzer) Natural Join Review) Natural Join Rate;

--display all actors names in movies with their roles and movie title
select Fname Actor_FName, Lname Actor_LName, roles , title Movie_Title from (CastCrew Natural Join  ActorRole) Natural Join Movie ;

-- select movie titles that doesnt have related movie
select title from Movie M Left Join RelatedMovie R on M.movie_id = R.movie_id where related_movie_id is null;

-- retrive Movies and their related movie titles
SELECT m1.Title Movie, m2.Title RelatedMovie
FROM ((Movie m1 JOIN RelatedMovie rm ON m1.movie_id = rm.movie_id)
JOIN Movie m2 ON rm.related_movie_id = m2.movie_id);

-- retrieve information about movies, their directors, and release details
SELECT movie_id,title, Release_date, Mid DirectorID,Fname DirectorFname, Lname DirectorLname
FROM( Movie
Natural JOIN DirectorinMovie)
Natural JOIN CastCrew;

--Fetch movies, their awards, and award events, including the movie's production company
SELECT M.title AS Movie_Title, A.Aname AS Award_Name, A.event AS Award_Event, M.CFname AS ProductionCompany_FirstName, M.CLname AS ProductionCompany_LastName
FROM Movie M
LEFT JOIN MovieWonAward MWA ON M.movie_id = MWA.movie_id
LEFT JOIN Awards A ON MWA.Aname = A.Aname AND MWA.AwardsDate = A.AwardsDate AND MWA.event = A.event;

--select movie where language is english
select * from movie where languagee='English';

-- display movies title and their avg rate, min and max rate and number of rates
select Title, AVG(UserRating) Average_Rate, MAX(UserRating)Max_Rate, MIN(UserRating) Min_Rate, count(*) Number_Of_Rates 
from Rate Natural Join Movie group by (title);

--Retrieve movies and their count of associated reviews, sorted by the count of reviews
SELECT M.title AS Movie_Title, COUNT(R.movie_id) AS Review_Count
FROM Movie M
LEFT JOIN Review R ON M.movie_id = R.movie_id
GROUP BY M.title
ORDER BY COUNT(R.movie_id) DESC;

--Retrieve movies and their total count of nominations:
SELECT Movie.movie_id, Movie.title, COUNT(MovieNominated.movie_id) AS Nomination_Count
FROM Movie
LEFT JOIN MovieNominated ON Movie.movie_id = MovieNominated.movie_id
GROUP BY Movie.movie_id, Movie.title
ORDER BY Nomination_Count DESC;

--select actor first name and last name and the number of awards they won sorted desc
SELECT CastCrew.Mid, CastCrew.Fname, CastCrew.Lname, COUNT(CastCreWon.Aname) AS Award_Count
FROM CastCrew
LEFT JOIN CastCreWon ON CastCrew.Mid = CastCreWon.Mid
where type = 'Actor'
GROUP BY CastCrew.Mid, CastCrew.Fname, CastCrew.Lname
ORDER BY Award_Count DESC;



--update the rate for the username 'Moha7' set the rating 2 when the movie id is 1
update Rate set userrating = 2 where username = 'Moha7' and movie_id = 1;

--update bara's comment when the movie id is 2 and timestamp is '2023-12-15 19:05:00'
UPDATE Review
SET coment = 'I watched It Again'
WHERE username = 'BaraM'
  AND movie_id = 2
  AND timstamp = TIMESTAMP '2023-12-15 19:05:00';



-- Update Shahd's comment for the movie with movie title is 'My Neighbor Totoro' and the timestamp is '2020-03-08 22:10:00'
update Review
set coment = 'unfortunately theres no seasons upcoming, i stil love this movie'
where username = 'Shahd0'
and movie_id = (select movie_id from movie Natural Join Review where title='My Neighbor Totoro')
and timstamp = TIMESTAMP '2020-03-08 22:10:00';


--delete shahd's comments when the movie title is 'Sherk'
delete from Review where username = 'Shahd0' and movie_id= (select movie_id from movie where title='Sherk');

-- retrive cast and crew member awards nominations from the year 2015
select Fname first_name, Lname last_name, Aname
from CastCrew M Join CastCrewNominated N  on M.Mid=N.Mid Natural Join Awards 
where EXTRACT(YEAR FROM AwardsDate) = 2015;

-- retrive cast and crew member awards winners from the year 2001
select Fname first_name, Lname last_name, Aname
from CastCrew M Join CastCreWon N  on M.Mid=N.Mid Natural Join Awards 
where EXTRACT(YEAR FROM AwardsDate) = 2001;


-- retrive compnaies names and number of movies they produced
select M.Cfname Company_Fname, M.Clname Company_Lname, count(*) Number_Of_Movies 
from Movie M join Company C 
on M.Cfname = C.fname
and M.CLname = C.lname
group by(M.Cfname, M.Clname);


--retrive usernames and the number of reviews they did
select username, count(*) number_of_reviews 
from Uzer Natural join Review
group by(username);

--retrive the title and number of reviews each movie has 
select m.title, count(*) number_of_reviews 
from movie m right Join Review r
on  m.movie_id = r.movie_id
group by(m.title);

--select top rated movies has more than 4 stars
select title, Avg(userRating) top_rated
from Rate Natural Join Movie
group by (title)
having AVG(userRating) > 4;

--return the language and number of movies of that language
select languagee, count(*) number_of_movies
from Movie
group by(languagee);

--retive cast and crew and their ages
select fname, lname, (2024-EXTRACT(YEAR FROM DOB)) age from CastCrew;

--return all users comment on movies with movies titles
select username, title, coment
from Uzer Natural Join Review Natural Join Movie;

--update abood's rate on the movie 'Home Alone'
update Rate
set userRating = '1'
where movie_id = (select movie_id from movie where title='Home Alone') 
and username = 'abood0';

--update the userRating when the user fname = "Mohammad" and the last name is "jbr" and the movie title is 'Sherk'
update Rate
set userRating = '3' 
where movie_id = (select movie_id from movie where title = 'Sherk')
and username = (select username from Uzer where fname = 'Mohammad' and lname='Jbr');