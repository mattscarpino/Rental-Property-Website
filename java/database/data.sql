BEGIN TRANSACTION;

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('winter',100, 700, 1);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('spring',175, 1225, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('summer',200, 1400, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES ('fall',175, 1225, 0);

COMMIT;


