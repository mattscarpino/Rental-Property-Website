BEGIN TRANSACTION;

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES('winter',120, 800, 1);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES('spring',175, 1225, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES('summer',215, 1500, 0);

INSERT INTO prices(season, daily, weekly, twoweeks)
VALUES('fall',175, 1225, 0);

INSERT INTO offerings(amenity, photo)
VALUES('2.5 bath','https://img.freepik.com/premium-vector/shower-icon_535345-3559.jpg?w=2000');

INSERT INTO offerings(amenity, photo)
VALUES('3 bed','https://t4.ftcdn.net/jpg/05/03/32/35/360_F_503323522_qvU0AkmlnGXF2JyKYw0lPHsBJ27jRBtH.jpg');

INSERT INTO offerings(amenity, photo)
VALUES('Kitchen','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu0KU302Ki5U86sVN1l7Ey5UfS31Y4wzR7kM1JTZc9zw&usqp=CAU&ec=48665699');

INSERT INTO offerings(amenity, photo)
VALUES('Refrigerator','https://img.freepik.com/free-icon/refrigerator_318-10736.jpg');

INSERT INTO offerings(amenity, photo)
VALUES('Dishwasher','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjRuI2FbCLDuWphZL2IAFWyAnv2E4LVZIcQDAnoxemwA&usqp=CAU&ec=48665699');

INSERT INTO offerings(amenity, photo)
VALUES('Microwave','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqTVSRopuNml8_ouQEpQ-ufR0yEXOhv4fxyQqPEmmfPw&usqp=CAU&ec=48665699');

INSERT INTO offerings(amenity, photo)
VALUES('Washer / Dryer','https://www.maytag.com/content/maytagv2/en_us/blog/washers-and-dryers/buying-a-washer-and-dryer/_jcr_content/root/main/responsivegrid/gridlayout_936280951/mainImg.coreimg.png/1602177353328/side-by-side.png');

INSERT INTO offerings(amenity, photo)
VALUES('TV','https://static.vecteezy.com/system/resources/previews/000/582/064/original/tv-icon-vector-illustration.jpg');

INSERT INTO offerings(amenity, photo)
VALUES('Community pool','https://static.vecteezy.com/system/resources/thumbnails/001/500/429/small/swimming-pool-icon-free-vector.jpg');

INSERT INTO offerings(amenity, photo)
VALUES('NO Bathtub','https://static.thenounproject.com/png/3650255-200.png');

COMMIT;


