create table Company  (Fname varchar(50),
    Lname varchar(50),
    Description varchar2(500),
    primary key (Fname,Lname)
); 


CREATE TABLE Cowner ( 
    Fname VARCHAR(50), 
    Lname VARCHAR(50), 
    Owner VARCHAR(50), 
    PRIMARY KEY (Fname, Lname, Owner), 
    FOREIGN KEY (Fname, Lname) REFERENCES Company (Fname, Lname) ON DELETE set null  
); 
 
 
create table CastCrew ( Mid number(10) primary key , type varchar(50) not null , Fname varchar(50) , 
    Lname varchar(50), 
    gender varchar(50) , 
    DOB date , 
    bio varchar2(500),  
    nationality varchar(50)  
    ); 
 
 
create table Awards ( Aname varchar (50)  , 
    AwardsDate date, 
    event varchar(50), 
    type varchar(50) not null, 
    primary key( Aname , AwardsDate,event) 
); 
    
 
 
 
create table CastCreWon(Mid number (10) , Aname varchar(50), event varchar(50) ,AwardsDate date , 
    primary key ( Mid , Aname , event , AwardsDate), 
    foreign key (Aname , event , AwardsDate)  REFERENCES  Awards( Aname , event , AwardsDate ) on delete cascade,  
    foreign key (Mid)  references  CastCrew (Mid) on delete set null 
); 
 
 
create table CastCrewNominated(Mid number (10) , Aname varchar(50), event varchar(50) ,AwardsDate date , 
    primary key ( Mid , Aname , event , AwardsDate), 
    foreign key (Aname , event , AwardsDate)  REFERENCES  Awards( Aname , event , AwardsDate ) on delete cascade,  
    foreign key (Mid)  references  CastCrew (Mid) on delete set null 
); 
 
 
 
create table Movie(movie_id number(20) primary key 
    ,trailer VARCHAR2(500) 
    ,title varchar(50) 
    ,Release_date date 
    ,run_time varchar(50) 
    ,Languagee varchar(50) 
    ,description VARCHAR2(500) 
    ,CFname varchar(50) , CLname varchar(50), 
    foreign key ( CFname ,CLname) references Company(Fname,Lname) on delete set null 
); 
 
 
 
 
create table MovieNominated(movie_id number (20) , Aname varchar(50), event varchar(50) ,AwardsDate date ,  
    primary key ( movie_id , Aname , event , AwardsDate),  
    foreign key (Aname , event , AwardsDate) REFERENCES  Awards( Aname , event , AwardsDate ) on delete cascade,   
    foreign key (movie_id)  references  Movie(movie_id) on delete cascade 
);  
 
 
 
 
create table MovieWonAward(movie_id number (20) , Aname varchar(50), event varchar(50) ,AwardsDate date ,  
    primary key ( movie_id , Aname , event , AwardsDate),  
    foreign key (Aname , event , AwardsDate)  REFERENCES  Awards( Aname , event , AwardsDate ) on delete cascade,   
    foreign key (movie_id)  references  Movie(movie_id) on delete cascade  
);  
 
 
 
 
create table Genre( movie_id number(20) , genre varchar(50), primary key(movie_id , genre) 
    , foreign key (movie_id) references Movie(movie_id) on delete cascade
); 
	

create table RelatedMovie (movie_id number(20) ,Related_movie_id number(20), primary key( movie_id ,Related_movie_id), 
foreign key( movie_id)references Movie( movie_id)on delete cascade , 
    foreign key(Related_movie_id)references Movie( movie_id)on delete cascade  
); 
 
create table ActorinMovie( Mid number(10),movie_id number(20), primary key ( Mid ,movie_id)  
    , foreign key (Mid) references CastCrew( Mid)on delete cascade  
    ,foreign key (movie_id) references Movie( movie_id)on delete cascade  
); 
 
 
create table ActorStarsMovie( Mid number(10),movie_id number(20), primary key ( Mid ,movie_id)  
    , foreign key (Mid) references CastCrew( Mid)on delete cascade  
    ,foreign key (movie_id) references Movie( movie_id)on delete cascade  
); 
 
 
create table ActorRole( movie_id number(20) , Mid number(10) ,roles varchar(60),  
    primary key ( movie_id , Mid , roles), 
foreign key ( movie_id, Mid)references  ActorinMovie( movie_id , Mid) on delete cascade  
); 
 
create table DirectorinMovie( Mid number(10),movie_id number(20), primary key ( Mid ,movie_id)   
    , foreign key (Mid) references CastCrew( Mid)on delete cascade   
    ,foreign key (movie_id) references Movie( movie_id)on delete cascade   
); 
 
 
create table WriterinMovie( Mid number(10),movie_id number(20), primary key ( Mid ,movie_id)   
    , foreign key (Mid) references CastCrew( Mid)on delete cascade   
    ,foreign key (movie_id) references Movie( movie_id)on delete cascade   
); 
 
create table Uzer( username varchar(50),Email varchar2(100) unique,password varchar(49),Fname varchar(50), Lname varchar(50) , 
    primary key(username)  
); 
 
create table Review ( username varchar(50) , movie_id number(20) , timstamp timestamp,coment varchar2(500) ,  
    primary key( username , movie_id , timstamp),  
    foreign key( username ) references Uzer(username) on delete cascade  , 
foreign key(movie_id )references Movie(movie_id) on delete cascade 
);
 
create table Rate( username varchar(50) , UserRating number(2), movie_id number(20),  
    primary key ( username , UserRating , movie_id), 
    foreign key( username ) references Uzer(username) on delete cascade  ,  
foreign key(movie_id )references Movie(movie_id) on delete cascade  
) ;
