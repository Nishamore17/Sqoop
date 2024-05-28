CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

load data local infile 'movies.dat' into table movies fields terminated  by ':'  (movieid, title, genre,year);



CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `occpation` int(11) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

load data local infile 'users.dat' into table users fields terminated by ':'  (userid, gender, age,occpation,zipcode);
CREATE TABLE `userratings` (
  `userid` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `timestamp` mediumtext,
  PRIMARY KEY (`userid`,`movieid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


load data local infile 'ratings.dat' into table userratings fields terminated by ':' (userid,movieid,rating,timestamp);    
