BEGIN TRANSACTION;

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('winter',100, 800, 1);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('spring',175, 1225, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('summer',215, 1500, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('fall',175, 1225, 0);

COMMIT;


