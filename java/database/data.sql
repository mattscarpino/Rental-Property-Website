BEGIN TRANSACTION;

INSERT INTO prices(season, daily, weekly, two_weeks, three_weeks, four_weeks)
VALUES('winter',120, 800, 1400, 1950, 2450);

INSERT INTO prices(season, daily, weekly, two_weeks, three_weeks, four_weeks)
VALUES('spring',175, 1225, 2150, 3050, 3900);

INSERT INTO prices(season, daily, weekly, two_weeks, three_weeks, four_weeks)
VALUES('summer',215, 1500, 0, 0, 0);

INSERT INTO prices(season, daily, weekly, two_weeks, three_weeks, four_weeks)
VALUES('fall',175, 1225, 2150, 3050, 3900);

INSERT INTO offerings(amenity, photo)
VALUES('3 bed','http://clipart-library.com/newimages/bed-clip-art-20.jpg');

INSERT INTO offerings(amenity, photo)
VALUES('2.5 bath','https://img.freepik.com/premium-vector/shower-icon_535345-3559.jpg?w=2000');

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

INSERT INTO recommendations(type, name, description, pic_url)
VALUES('restaurant', 'Black Marlin Bayside Grill','The Black Marlin is a premier dining destination on beautiful Hilton Head Island. Our restaurant offers a unique coastal atmosphere, with stunning views of the marina and delicious cuisine that will leave your taste buds craving more. Whether you’re looking for a romantic dinner for two or a gathering with friends, our skilled chefs and friendly staff are ready to provide you with a memorable dining experience. Dine with us and discover why the Black Marlin is one of Hilton Head Island’s most sought-after restaurants.', 'https://d10ukqbetc2okm.cloudfront.net/imagesr/w-640_h-480/business/40814/black-marlin-bayside-grill1978806546.jpg');

INSERT INTO recommendations(type, name, description, pic_url)
VALUES('shopping', 'Coligny Circle', 'At Coligny, you’ll find more than 60 specialty shops and restaurants offering something for everyone. You’ll find entertainment by local talents. You’ll find fun and excitement right by the beach, just like millions of locals and visitors have for over 60 years. No matter what you’re looking for, you’ll only find “IT” all in one place, Coligny. We hope to see you soon!', 'https://s3.us-west-2.amazonaws.com/assets.houfy.com/assets/images/posts/e2cfa2c256d94a5cc0892bae61be75aa.jpg');

INSERT INTO recommendations(type, name, description, pic_url)
VALUES('golf', 'Harbour Town Golf Links', 'One of the most celebrated courses on the PGA TOUR, Harbour Town Golf Links is both the crowning achievement of famed designer Pete Dye and design consultant Jack Nicklaus. It places a premium on finesse, imagination and shot making, rather than strength.', 'https://golfdigest.sports.sndimg.com/content/dam/images/golfdigest/fullset/2019/01/08/5c33f381bc9d282d38b367f0_136%20-%20Harbour%20Town%20-%2018th%20hole%20-%20The%20Sea%20Pines%20Resort_Rob%20Tipton.jpg.rend.hgtvcom.966.644.suffix/1573162684752.jpeg');

INSERT INTO recommendations(type, name, description, pic_url)
VALUES('activities', 'Sea Monkeys Watersports', '"The cure for anything is salt water: sweat, tears or the sea." We believe that life should be fun and we take joy in the opportunity to share our slice of paradise with you. Lets get out on the water!', 'https://static1.squarespace.com/static/52c1dcd9e4b02fca67719be5/t/573cb2c07c65e4bc1c01e301/1463595719151/SM_socialsharing-01.jpg?format=1500w');

COMMIT;


