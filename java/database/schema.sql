BEGIN TRANSACTION;

DROP TABLE IF EXISTS pictures;
DROP TABLE IF EXISTS prices;
DROP TABLE IF EXISTS offerings;
DROP TABLE IF EXISTS recommendations;

CREATE TABLE pictures
(
	pic_id SERIAL,
	pic_url varchar(5000),
	
	PRIMARY KEY(pic_id)
);

CREATE TABLE prices
(
	prices_id SERIAL,
	season varchar(50) NOT NULL,
	daily INTEGER NOT NULL,
	weekly INTEGER NOT NULL,
	two_weeks INTEGER NOT NULL,
	three_weeks INTEGER NOT NULL,
	four_weeks INTEGER NOT NULL,
	
	PRIMARY KEY(prices_id)
);

CREATE TABLE offerings
(
	offerings_id SERIAL,
	amenity varchar(100) NOT NULL,
	photo varchar(5000) NOT NULL,
	
	PRIMARY KEY(offerings_id)
);

CREATE TABLE recommendations
(
	recommendations_id SERIAL,
	type varchar(50) NOT NULL,
	name varchar(200) NOT NULL,
	description varchar(2000) NOT NULL,
	pic_url varchar(5000) NOT NULL,
	
	PRIMARY KEY(recommendations_id)
);
COMMIT;
