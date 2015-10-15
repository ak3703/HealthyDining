INSERT INTO Addresses (a_id, zip, building_number, street_name, city, state)
VALUES (3, 10025, 2848, "Broadway", "New York", "NY");

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, website_url, a_id)
VALUES ("A46G2OAvLxFswiONB50Rrg", "Koronet Pizza", "Pizza", "http://s3-media3.ak.yelpcdn.com/bphoto/OOI3c4GFqcecgbhKimHKRA/ms.jpg", "http://www.yelp.com/biz/koronet-pizza-new-york", 3);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("YXMiSBrLNcnbxnfMK4BVug", "Scott R.", 32, 3.97);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("YXMiSBrLNcnbxnfMK4BVug", "A46G2OAvLxFswiONB50Rrg", "2007-01-13", "I don't go out of my way for a Koronet slice but I drop in for a slice after playing tennis up on the Columbia courts some weekend afternoons.   \n\nThis slice reminds me of the type you get on the Jersey shore boardwalk - big enough that you don't automatically order two slices.  You eat the first and then determine if you're hungry enough to eat a second.  \n\nTastewise, it's a good slice.  I like it better than most slices in NY - including Famous Famiglia which is across the street and on 96th and Amsterdam.  \n \nBut it's still no Sal & Carmine's...", 4);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("n73Qtb87fvLhiMzTK9ppxw", "Felicia M.", 3.79, 33);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("n73Qtb87fvLhiMzTK9ppxw", "A46G2OAvLxFswiONB50Rrg", "2011-11-08", "This is a review for their pizza delivery service. Ordered a small 16 plain cheese pizza for $15 + tips. Pizza arrived promptly, in about 30 min, and still warm.\n\nHuge slices, great cheese to dough ratio so that it's not too salty. Thicker, chewy dough, instead of my preferred crispy but still satisfying and great with a glass of wine.", 4);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (31, "2015-07-06", 12, "A", "A46G2OAvLxFswiONB50Rrg");

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (32, "2015-07-06", 12, "A", "A46G2OAvLxFswiONB50Rrg");

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (31, "Hot food item not held at or above 140Âº F.", 0);

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (32, "Hot food item not held at or above 140Âº F.", 0);




INSERT INTO Addresses (a_id, zip, building_number, street_name, city, state)
VALUES (1, 10027, 409, "W 125th Street", "New York", "NY");

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, phone, website_url, a_id)
VALUES ("4n4wMkDnDY7cuWOya8UumA", "DOMINO'S PIZZA", "Pizza", "http://s3-media4.ak.yelpcdn.com/bphoto/NzW5Gim185yE17OgZkE0UA/ms.jpg", "2128310300", "http://www.yelp.com/biz/dominos-pizza-new-york-5", 1);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("KOv1fgh33thUmvPfmC0DUQ", "Natasha L.", 63, 3.94);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("tvLU1kOukJM-U9-i8cZ0eg", "oZ P.", 8, 3.38);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("KOv1fgh33thUmvPfmC0DUQ", "4n4wMkDnDY7cuWOya8UumA", "2011-04-23", "I think their new recipe is pretty good. The crust is garlicy, and cooked to perfection. Consistently good delivery. \n\nSure, it's Dominos - yes, they're a chain, blah blah blah - but, do you want good pizza or not? It's good. Have ordered from here several times and no complaints.", 4);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("tvLU1kOukJM-U9-i8cZ0eg", "4n4wMkDnDY7cuWOya8UumA", "2011-07-20", "So whack! Ordered a Large and got something that looked smaller than a medium....a Smedium. Took 44 minutes to arrive. Arrived cold. Bread sticks were only enough for half a person, maybe good for your irregular anorexic girlfriend.", 1);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (12, "2015-04-23", 6, "A", "4n4wMkDnDY7cuWOya8UumA");

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (11, "2015-04-23", 6, "A", "4n4wMkDnDY7cuWOya8UumA");

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (12, "Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and underneath the unit.", 0);

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (11, "Covered garbage receptacle not provided or inadequate, except that garbage receptacle may be uncovered during active use. Garbage storage area not properly constructed or maintained; grinder or compactor dirty.", 0);




INSERT INTO Addresses (a_id, zip, building_number, street_name, city, state)
VALUES (5, 10025, 994, "Amsterdam Ave", "New York", "NY");

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, phone, website_url, a_id)
VALUES ("Y2I946V78wOdwaUD9chmqg", "Roti Roll - Bombay Frankie", "Indian", "http://s3-media1.ak.yelpcdn.com/bphoto/qyJRbsFfI0Xqm3oQLbMPKQ/ms.jpg", "2126661500", "http://www.yelp.com/biz/roti-roll-bombay-frankie-new-york", 5);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("x3hyh8K4XIAyJ_K39fpOuw", "Kate F.", 590, 3.70);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("qtTd_VDFXoeNkJKrtQ4R2g", "Evan H.", 564, 3.74);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("x3hyh8K4XIAyJ_K39fpOuw", "Y2I946V78wOdwaUD9chmqg", "2009-07-30", "I love food that comes rolled in bread. \nI love Indian flavors. \nI love inexpensive and generous things. \n\nClearly, roti roll and I are a match made in heaven. 2 rolls for $6-10 depending on what's in them. I like the basic egg, potato, pea mixture, which for $7 can be lunch AND dinner. Topped with tomato, onion, and spicy cilantro chutney... yes please! \n\nAlso, a great hangover cure. \n\nThere is no seating except a few stools around the edges, but this food is utter perfection when enjoyed on a strangers shaded stoop. Grab a napkin and enjoy.", 4);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("qtTd_VDFXoeNkJKrtQ4R2g", "Y2I946V78wOdwaUD9chmqg", "2010-07-18", "After a few beers at 1020, just up the street, this is the perfect place to satisfy a late night craving and hunger.  I recently moved to NYC, and wouldn't have expected Indian food to be the type of food to fill that craving.  But, then i think...\ And it truly is. \n\nAloo Gobi wrapped up in a burrito style wrap?  Yes please.   Hot and spicy food that I eat on the street corner? Can I have seconds? This seems like a place that only gets more crowded later and later into the night, and even more so when its during the school year and Columbia students flock to the smell of delicious fries and Indian food.\n\nI anticipate eating here again.  After all, I need to try everything.",4);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (51, "2015-06-15", 15, "A", "Y2I946V78wOdwaUD9chmqg");

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (52, "2014-10-31", 20, "B", "Y2I946V78wOdwaUD9chmqg");

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (51, "Food contact surface not properly washed, rinsed and sanitized after each use and following any activity when contamination may have occurred.", 0);

INSERT INTO Violations(v_id, violation_detail, critical)
VALUES (52, "Hot food item not held at or above 140º F.", 1);




INSERT INTO Addresses (a_id, zip, building_number, street_name, city, state)
VALUES (7, 10026, 2115, "Frederick Douglas Blvd", "New York", "NY");

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, website_url, a_id)
VALUES ("LvzfVDlvb9r0fcGXeitVKw", "Cafe 2115", "African", "http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif", "http://www.yelp.com/biz/cafe-2115-new-york", 7);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("AQYDb8xFq5nx5FkpDs1b9w", "Mr. F", 3, 3.76);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("GnpRTI2kCEdgmLYPsDGGMQ", "Matt B.", 11, 4.09);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("AQYDb8xFq5nx5FkpDs1b9w", "LvzfVDlvb9r0fcGXeitVKw", "2012-08-15", "Stopped in here for dinner recently.  A terrible experience all around.\n\nFirst, the setting.  It is not the most pleasant experience to enjoy a meal.  The decor resembles a cafeteria, which isn't really that big of a deal.  When we went there were a group of guys hanging out right outside the cafe.  They were loud and making rude comments to the passers-by, which we found quite unnerving.\n\nThe service, as others have noted, was very slow, and basic requests had to be repeated due to their being incorrectly carried out.  If I'm sitting at a fine restaurant I prefer a more drawn out meal, but not here.  Frustrating, but we were willing to overlook all of this, if the food was tasty.\n\nThe food is sub-par, and that might be generous.  The sauces looked congealed, and the stew was unappetizing.  Too many other quality places nearby to stop here.", 1);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("GnpRTI2kCEdgmLYPsDGGMQ", "LvzfVDlvb9r0fcGXeitVKw", "2012-02-06", "Stopped here for breakfast with a friend of mine who lives nearby.  We had an awful time.  Service was horrible, despite the restaurant being nearly empty.  My friend never even got anything to drink.  Our breakfast (one egg sandwich and one order of grits and toast) took at least 20-25 minutes to reach our table.  The grits were cold.  My friend's sandwich had bacon on it, even though she asked them to hold it.  They scraped it off, but offered no other recompense.  \n\nFrom reading the other reviews, this seems like the sort of place you just don't drop into.  They were just completely unprepared to deliver any sort of a favorable restaurant experience.", 1);





INSERT INTO Addresses (a_id, zip, building_number, street_name, city, state)
VALUES (9, 10025, 2876, "Broadway", "New York", "NY");

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, website_url, a_id)
VALUES ("dXO0TAdU8RCDw54r2MQLrA", "Global Ink", "Tobacco Shops", "http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif", "http://www.yelp.com/biz/global-ink-new-york", 9);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ("h7cX02YMLzyobfZ7E-mg-Q", "Heather H.", 534, 3.64);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ("h7cX02YMLzyobfZ7E-mg-Q", "dXO0TAdU8RCDw54r2MQLrA", "2014-07-30", "Global Ink had a funny history.  Back when it opened in 1999 there was quite a bit of controversy because six months later a chain store, Universal News, opened across the street from it.  For years, the two stores duked it out, Global Ink always claiming that Universal News was trying to put it out of business through various means, like price cutting.   Morningside Heights residents rallied around Global Ink, even going so far as to boycott Universal News.  In 2003, Universal News closed and left Global Ink to reign supreme.\n\nNow, Global Ink is closed.  The competition this time?  The internet.", 3);



