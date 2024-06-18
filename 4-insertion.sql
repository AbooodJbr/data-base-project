insert into Company values ('20th Century', 'Fox', '20th Century Studios, Inc. (often shortened to 20th Century) is an American film studio currently owned by The Walt Disney Studios, a division of Disney Entertainment, in turn a division of The Walt Disney Company. It is headquartered at the Fox Studio Lot in the Century City area of Los Angeles. Walt Disney Studios Motion Pictures distributes and markets the films produced by 20th Century Studios in theatrical markets');

insert into Company values ('DreamWorks', 'Animation',
'DreamWorks Animation: A dynamic creative studio renowned for crafting imaginative and heartwarming animated stories that captivate global audiences with a perfect blend of innovation and entertainment.');

Insert into Company values ('Pixar', 'Animation',
'Pixar Animation Studios: A pioneering force in animation, consistently delivering emotionally rich and visually stunning films that redefine storytelling.');

Insert into Company values ('Studio Ghibli', 'Animation',
'Studio Ghibli: An iconic Japanese animation studio celebrated for its enchanting and thought-provoking films, weaving magical worlds and resonant narratives.');

Insert into Company values ('Disney', 'Studios',
'Disney Studios: A legendary entertainment giant creating beloved classics and modern blockbusters, enchanting audiences with timeless stories and unforgettable characters.');

insert into Cowner values('20th Century', 'Fox', 'Andrew Millstein' );
insert into Cowner values('DreamWorks', 'Animation', 'Abood Jbr' );
insert into Cowner values('Pixar', 'Animation', 'Bara Mhana' );
insert into Cowner values('Studio Ghibli', 'Animation', 'Mohammed Jbr' );
insert into Cowner values('Disney', 'Studios', 'Shahd Kh' );

insert into CastCrew values ('01', 'Actor', 'Macaulay', 'Culkin', 'Male', '12-Aug-1980', 
    'Iconic American actor, born August 26, 1980. Achieved worldwide fame as a child star in "Home Alone" series. Known for his wit and charm, Culkin transitioned to diverse roles, captivating audiences with his talent and leaving a lasting mark on Hollywood.',
     'American' );
insert into CastCrew values ('02', 'Actor', 'Mike', 'Myers', 'Male', '25-May-1963',
    'Versatile actor known for iconic roles, including Shrek. A key contributor to DreamWorks Animation’s success.', 'Canadian');
insert into CastCrew values ('03', 'Actor', 'Tom', 'Hanks', 'Male', '09-Jul-1956',
    'Esteemed actor renowned for lending his voice to beloved characters in Pixar films. A true industry legend.', 'American');
insert into CastCrew values ('04', 'Actor', 'Christian', 'Bale', 'Male', '30-Jan-1974',
    'Talented actor contributing to Studio Ghibli English dubs. Known for his versatility and captivating performances.', 'British');
insert into CastCrew values ('05', 'Actor', 'Johnny', 'Depp', 'Male', '09-Jun-1963',
    'Acclaimed actor, bringing depth to characters in Disney productions. Renowned for his charismatic and transformative roles.', 'American');
insert into CastCrew values ('06', 'Writer', 'Ted', 'Elliott', 'Male', '04-Jul-1961',
    'Prolific writer with notable contributions to DreamWorks Animation’s storytelling legacy. A master of engaging narratives.', 'American');
insert into CastCrew values ('07', 'Writer', 'Andrew', 'Stanton', 'Male', '03-Dec-1965',
    'Influential writer behind Pixar classics. Recognized for his storytelling prowess and imaginative contributions to animated cinema.', 'American');
insert into CastCrew values ('08', 'Writer', 'Hayao', 'Miyazaki', 'Male', '05-Jan-1941',
    'Visionary writer and director shaping Studio Ghibli’s enchanting tales. A pioneer in the world of animated storytelling.', 'Japanese');
insert into CastCrew values ('09', 'Writer', 'Jennifer', 'Lee', 'Female', '22-Oct-1971',
    'Creative force and writer behind Disney’s animated hits. Known for her storytelling finesse and contributions to animated classics.', 'American');
insert into CastCrew values ('10', 'Director', 'Andrew', 'Adamson', 'Male', '01-Dec-1966',
    'Talented director behind DreamWorks Animation’s successful ventures. A visionary creator shaping animated storytelling.', 'New Zealander');
insert into CastCrew values ('11', 'Director', 'John', 'Lasseter', 'Male', '12-Jan-1957',
    'Pioneering director and animator, a founding force at Pixar. His creative leadership has defined the studio’s animated legacy.', 'American');
insert into CastCrew values ('12', 'Director', 'Hayao', 'Miyazaki', 'Male', '05-Jan-1941',
    'Masterful director crafting Studio Ghibli’s magical worlds. His influence has left an indelible mark on the global animation landscape.', 'Japanese');
insert into CastCrew values ('13', 'Director', 'Ron', 'Clements', 'Male', '25-Jun-1953',
    'Accomplished director shaping Disney’s animated classics. A key figure in the studio’s legacy of creating timeless and beloved films.', 'American');

insert into Awards values('Best Actor', '10-Nov-2001', 'Oscars', 'Actor Award');
insert into Awards values('Best Writer', '10-Nov-2001', 'Oscars', 'Writer Award');
insert into Awards values('Best Director', '10-Nov-2001', 'Oscars', 'Director Award');
insert into Awards values('Best Picture', '10-Nov-2001', 'Oscars', 'Movie Award');
insert into Awards values('Best Animated Film', '10-Nov-2001', 'Oscars', 'Movie Award');
insert into Awards values('Best Actor', '11-Oct-2015', 'Oscars', 'Actor Award');
insert into Awards values('Best Writer', '11-Oct-2015', 'Oscars', 'Writer Award');
insert into Awards values('Best Director', '11-Oct-2015', 'Oscars', 'Director Award');
insert into Awards values('Best Picture', '11-Oct-2015', 'Oscars', 'Movie Award');
insert into Awards values('Best Animated Film', '11-Oct-2015', 'Oscars', 'Movie Award');
insert into Awards Values ('Best Picture', '13-Oct-2010', 'Oscars', 'Movie Awards');

insert into CastCreWon values ('03', 'Best Actor', 'Oscars', '10-Nov-2001');
insert into CastCreWon values ('05', 'Best Actor', 'Oscars', '11-Oct-2015');
insert into CastCreWon values ('06', 'Best Writer', 'Oscars', '10-Nov-2001');
insert into CastCreWon values ('08', 'Best Writer', 'Oscars', '11-Oct-2015');
insert into CastCreWon values ('11', 'Best Director', 'Oscars', '10-Nov-2001');
insert into CastCreWon values ('13', 'Best Director', 'Oscars', '11-Oct-2015');

insert into CastCrewNominated values ('03', 'Best Actor', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values ('05', 'Best Actor', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values ('06', 'Best Writer', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values ('08', 'Best Writer', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values ('11', 'Best Director', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values ('13', 'Best Director', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values ('01', 'Best Actor', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values ('02', 'Best Actor', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values  ('03', 'Best Actor', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values  ('04', 'Best Actor', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values  ('07', 'Best Writer', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values  ('08', 'Best Writer', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values  ('06', 'Best Writer', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values  ('07', 'Best Writer', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values  ('09', 'Best Writer', 'Oscars', '11-Oct-2015');
insert into CastCrewNominated values  ('10', 'Best Director', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values  ('12', 'Best Director', 'Oscars', '10-Nov-2001');
insert into CastCrewNominated values  ('11', 'Best Director', 'Oscars', '11-Oct-2015');
 
insert  into Movie values ( '1' , 'https://youtu.be/jEDaVHmw7r4?si=TJEuWQORQmd4v0hH', 'Home Alone', '16-Nov-1998', '1h 42m', 'English',
    'Eight-year-old Kevin McCallister (Macaulay Culkin) mischievously disrupts his familys Paris trip. Left behind, he believes his wish for solitude is granted. Yet, joy turns to challenge as he discovers two burglars targeting his home, prompting a solo quest to safeguard his familys residence.',
    '20th Century', 'Fox');

insert  into Movie values ( '2' , 'https://www.youtube.com/watch?v=CwXOrWvPBPk', 'Sherk', '18-May-2001', '1h 29m', 'English', 
    'In a distant swamp, Shreks solitary life is disrupted by an influx of pesky fairy tale characters banished by Lord Farquaad. To reclaim his peace and save his home, Shrek strikes a deal to rescue Princess Fiona, unaware of her concealed, profound secret.', 
    'DreamWorks', 'Animation');

insert into Movie values ('3', 'https://youtu.be/ByXuk9QqQkk?si=T6Hute5KVW7vGIGh', 'Spirited Away', '20-Jul-2001', '2h 5m', 'Japanese',
    'A captivating fantasy film exploring a young girls journey in a mysterious and magical world.', 'Studio Ghibli', 'Animation');

insert into Movie values ('4', 'https://youtu.be/eHcZlPpNt0Q?si=msm9Y2JkerSxfX_h', 'The Lion King', '15-Jun-1994', '1h 27m', 'English',
    'An epic musical adventure following the journey of a young lion prince to reclaim his kingdom.', 'Disney', 'Studios');

insert into Movie values ('5', 'https://youtu.be/v-PjgYDrg70?si=ZsdFrsHcPQWeLlq-', 'Toy Story', '22-Nov-1995', '1h 20m', 'English',
    'The first-ever feature-length computer-animated film, showcasing the adventures of toys coming to life.', 'Pixar', 'Animation');

insert into Movie values (6, 'https://youtu.be/9oQ628Seb9w?si=v09fq374GAQD0ph1', 'Finding Nemo', '30-May-2003', '1h 40m', 'English',
    'An adventurous animated film following a clownfishs journey to find his son in the vast ocean.', 'Pixar', 'Animation');

insert into Movie values (7, 'https://youtu.be/92a7Hj0ijLs?si=_e20ZjqL_FmxAEcu', 'My Neighbor Totoro', '16-Apr-1988', '1h 27m', 'Japanese',
    'A heartwarming Studio Ghibli film about two sisters and their magical encounters with forest spirits.', 'Studio Ghibli', 'Animation');

insert into Movie values (8, 'https://youtu.be/TbQm5doF_Uc?si=tzWQ6sIGg27nVh2L', 'Frozen', '22-Nov-2013', '1h 42m', 'English',
    'Disneys animated musical tale of two royal sisters with extraordinary powers and an epic journey.', 'Disney', 'Studios');

insert into Movie values (9, 'https://youtu.be/JcpWXaA2qeg?si=N3efty0M-_5djE82', 'Toy Story 3', '18-Jun-2010', '1h 42m', 'English',
    'The third installment in Pixars Toy Story series, exploring themes of friendship and growing up.', 'Pixar', 'Animation');
 
insert into MovieNominated values (1, 'Best Picture', 'Oscars', '10-Nov-2001');
insert into MovieNominated values (3, 'Best Animated Film', 'Oscars', '10-Nov-2001');
insert into MovieNominated values (9, 'Best Animated Film', 'Oscars', '11-Oct-2015');
insert into MovieNominated values (6, 'Best Picture', 'Oscars', '13-Oct-2010');
insert into MovieNominated values (2, 'Best Picture', 'Oscars', '10-Nov-2001');
insert into MovieNominated values (4, 'Best Picture', 'Oscars', '10-Nov-2001');
insert into MovieNominated values (4, 'Best Animated Film', 'Oscars', '10-Nov-2001');
insert into MovieNominated values (8, 'Best Picture', 'Oscars', '11-Oct-2015');
insert into MovieNominated values (3, 'Best Picture', 'Oscars', '13-Oct-2010');
 
insert into MovieWonAward values (1, 'Best Picture', 'Oscars', '10-Nov-2001');
insert into MovieWonAward values (3, 'Best Animated Film', 'Oscars', '10-Nov-2001');
insert into MovieWonAward values (8, 'Best Picture', 'Oscars', '11-Oct-2015');
insert into MovieWonAward values (9, 'Best Animated Film', 'Oscars', '11-Oct-2015');
insert into MovieWonAward values (6, 'Best Picture', 'Oscars', '13-Oct-2010');
 
insert into Genre values (1, 'Comedy');
insert into Genre values (1, 'Family');
insert into Genre values (2, 'Adventure');
insert into Genre values (2, 'Comedy');
insert into Genre values (3, 'Adventure');
insert into Genre values (3, 'Family');
insert into Genre values (4, 'Drama');
insert into Genre values (5, 'Comedy');
insert into Genre values (5, 'Adventure');
insert into Genre values (6, 'Comedy');
insert into Genre values (7, 'Fantasy');
insert into Genre values (7, 'Family');
insert into Genre values (8, 'Comedy');
insert into Genre values (9, 'Adventure');
 
insert into RelatedMovie values (1, 2);
insert into RelatedMovie values (3, 1);
insert into RelatedMovie values (2, 5);
insert into RelatedMovie values (5, 8);
insert into RelatedMovie values (9, 5);
insert into RelatedMovie values (4, 7);
 
insert into ActorinMovie values (1, 1);
insert into ActorinMovie values (2, 2);
insert into ActorinMovie values (3, 9);
insert into ActorinMovie values (3, 5);
insert into ActorinMovie values (4, 3);
insert into ActorinMovie values (4, 7);
insert into ActorinMovie values (5, 4);
 
insert into ActorStarsMovie values (1, 1);
insert into ActorStarsMovie values (2, 2);
insert into ActorStarsMovie values (3, 5);
insert into ActorStarsMovie values (4, 7);
insert into ActorStarsMovie values (5, 4);
 
insert into ActorRole values (1, 1, 'Kevin');
insert into ActorRole values (2, 2, 'Shrek');
insert into ActorRole values (5, 3, 'Woody');
insert into ActorRole values (9, 3, 'Kaonashi');
insert into ActorRole values (4, 5, 'Shenzi');
 
insert into DirectorinMovie values (10 , 2);
insert into DirectorinMovie values (11 , 9);
insert into DirectorinMovie values (11 , 5);
insert into DirectorinMovie values (12 , 7);
insert into DirectorinMovie values (13 , 8);
 
insert into WriterinMovie values (6 , 2);
insert into WriterinMovie values (7 , 5);
insert into WriterinMovie values (7 , 9);
insert into WriterinMovie values (7 , 6);
insert into WriterinMovie values (8 , 7);
insert into WriterinMovie values (8 , 3);
insert into WriterinMovie values (9 , 4);

 
insert into Uzer values ('abood0', 'abood@gmail.com', 'abood123', 'Abood', 'Jbr');
insert into Uzer values ('BaraM', 'bara@gmail.com', 'bara423', 'Bara', 'Mhana');
insert into Uzer values ('Moha7', 'Moha@gmail.com', 'moha003', 'Mohammad', 'Jbr');
insert into Uzer values ('Shahd0', 'shahd@gmail.com', 'Shahdkhh', 'Shahd', 'Khatatbeh');
insert into Uzer values ('Yamama', 'yamama@gmail.com', 'yamama122', 'Yamama', 'Shakaa');
 
insert into Review values ('abood0', 1, timestamp '2017-03-15 19:05:00', 'i enjoyed this movie');
insert into Review values ('abood0', 9, timestamp '2021-03-02 16:09:00', 'one of my favs');
insert into Review values ('BaraM', 2, timestamp '2023-12-15 19:05:00', 'i love this movie');
insert into Review values ('BaraM', 3, timestamp '2020-08-21 23:23:00', 'this movie was boring');
insert into Review values ('Moha7', 4, timestamp '2022-09-19 12:05:00', 'i really enjoyed this movie, waiting for season 2');
insert into Review values ('Moha7', 8, timestamp '2022-04-13 09:03:00', 'i didnt like this movie');
insert into Review values ('Shahd0', 2, timestamp '2023-08-03 15:12:00', 'this movie was very good');
insert into Review values ('Shahd0', 7, timestamp '2020-03-08 22:10:00', 'i loved this movie, im waiting for this next season');

insert into Rate values ('abood0', 4, 1);
insert into Rate values ('BaraM', 5, 1);
insert into Rate values ('Moha7', 4, 1);
insert into Rate values ('Shahd0', 3, 1);
insert into Rate values ('Yamama', 5, 1);
insert into Rate values ('abood0', 5, 2);
insert into Rate values ('BaraM', 4, 2);
insert into Rate values ('Moha7', 2, 2);
insert into Rate values ('Shahd0', 5, 3);
insert into Rate values ('Yamama', 4, 4);


