BEGIN TRANSACTION;

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('winter',95, 500, 900);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('spring',120, 600, 1000);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('summer',200, 1200, 2200);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('fall',200, 1200, 2200);

COMMIT;


