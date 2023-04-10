BEGIN TRANSACTION;

DROP TABLE IF EXISTS pictures;
DROP TABLE IF EXISTS prices;

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
	twoweeks INTEGER NOT NULL,
	
	PRIMARY KEY(prices_id)
);

COMMIT;
