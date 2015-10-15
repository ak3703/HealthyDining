INSERT INTO Addresses (a_id,zip,building_number,street_name,city,state)
VALUES (2,10025,965,'Amsterdam Ave','New York','NY');

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, phone, website_url, a_id)
VALUES ('XCzjwOmvy_QROtczP8YlCA', 'Dominos Pizza', 'Pizza', 'http://s3-media3.ak.yelpcdn.com/bphoto/EunYRWiFJ2IsBE2sx0aEfQ/ms.jpg', '2122222000', 'http://www.yelp.com/biz/dominos-pizza-new-york-21', 2);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('TbVl1HA_ozOCln0hJ4HXFg', 'Joia B.', 5, 4.0);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('TbVl1HA_ozOCln0hJ4HXFg', 'XCzjwOmvy_QROtczP8YlCA', '2012-01-27', 'All I read are bad reviews for Dominos. Granted they\'re not better than mom & pops pizza where I can buy by the slice BUT this Dominos is great. I always get delivery & they never take long. Pizza is always hot & delicious. & the people on the phone are professional.', 4);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('xUbdKdiJoXo9-QqRqWrcSQ', 'Mari A.', 37, 3.65);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('xUbdKdiJoXo9-QqRqWrcSQ', 'XCzjwOmvy_QROtczP8YlCA', '2011-01-11', 'I\'ve always hated this Dominos because they don\'t take almost all Dominos coupons, but now I REALLY hate them... introducing the $1.50 delivery charge. \n\nWith so many better pizza options in the \'hood that deliver for free, I guess I won\'t be ordering from Dominos again until I move below 100th st. (the cutoff for this store.)\n\nAlso, they\'ve completely borked their online account system. It doesn\'t save past orders anymore and you can\'t delete old locations.', 1);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (21, '2015-03-13', 3, 'B', 'XCzjwOmvy_QROtczP8YlCA');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (21, 'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (21, 'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.', 0);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (21, 'Filth flies or food/refuse/sewage-associated (FRSA) flies present in facilitys food and/or non-food areas. Filth flies include house flies, little house flies, blow flies, bottle flies and flesh flies. Food/refuse/sewage-associated flies include fruit flies, drain flies and Phorid flies.', 1);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (22, '2015-08-06', 2, 'A', 'XCzjwOmvy_QROtczP8YlCA');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (22, 'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.', 0);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (22, 'Live roaches present in facility\'s food and/or non-food areas.', 0);

INSERT INTO Addresses (a_id,zip,street_name,city,state)
VALUES (4,10027,'116th St & Amsterdam Ave','New York','NY');

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, website_url, a_id)
VALUES ('TS1eYydoWdk9HwOUXhAgXg', 'Hoda Halal Cart', 'Food Stands', 'http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif', 'http://www.yelp.com/biz/hoda-halal-cart-manhattan', 4);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('hkXI5ziRVzExHo6C-0JlAQ', 'Angela F.', 5, 4.0);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('hkXI5ziRVzExHo6C-0JlAQ', 'TS1eYydoWdk9HwOUXhAgXg', '2012-09-14', 'Perfect for late nights - spend the extra 2 dollars and get the rice too :)', 5);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('R8mO8EMcBrkI5g1kBb8TVA', 'Laura Y.', 147, 4.18);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('R8mO8EMcBrkI5g1kBb8TVA', 'TS1eYydoWdk9HwOUXhAgXg', '2011-07-14', 'I don\'t know why there aren\'t more reviews for this place. Every morning whenever I go to work, I always pass by this stand and one day I actually got the chance to buy from them. I got a chicken gyro with white sauce, and it was delicious. The chicken was homogenously chopped up and the amount of lettuce and tomato was generous. The white sauce blended perfectly well with everything inside and what he put wasn\'t too much.\n\nAt first, when I got it, I thought it was a bit tiny compared to my hands (my hands are pretty big and they were about the size of my hand), but after I finished it, I felt satisfied and not too guilty of consuming yet another halal creation. The prices here are pretty standard, and they have coffee and breakfast food too, so stop by if you haven\'t, but I kind of doubt it since there are lines every time I walk by here during my lunch hour.\n\nDon\'t get this street cart confused with the one across the street! There\'s another one in front of the law school, but this one is on the main campus side of Amsterdam!', 4);

INSERT INTO Addresses (a_id,zip, building_number,street_name,city,state)
VALUES (6,10026,2162,'8th Ave','New York','NY');

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, website_url, a_id)
VALUES ('O2jCWIOWb-IhyZGZLTNNoA', 'Peking Kitchen II', 'Chinese', 'http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif', 'http://www.yelp.com/biz/peking-kitchen-ii-new-york', 6);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('Lb37hatAjI3fgHEh2lMNEw', 'Josh K.', 688, 3.69);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('Lb37hatAjI3fgHEh2lMNEw', 'O2jCWIOWb-IhyZGZLTNNoA', '2012-04-22', 'It may not look like much.. but it\'s way better than Szechuan Garden Kitchen down the street and still manages to be less ghetto-looking. The things that say \'spicy\' are actually spicy. Plus, they offer hot and sour soup with their lunch special and SGK does not. The portions are massive and fed me for one full extra meal, only costing $6.\n\nThe guys are nice and asked me if I was Chinese. In my broken Mandarin I said yes and asked them if they are from Fujian. I guessed right! ... But I don\'t understand the mainland Fujian dialect at all. Only the totally different Hokkien that is used in Malaysia!', 4);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('etOopsEJLBC7R13RSI4HaQ', 'Joshua Z.', 19, 3.74);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('etOopsEJLBC7R13RSI4HaQ', 'O2jCWIOWb-IhyZGZLTNNoA', '2012-03-04', 'I\'m not sure when these guys opened but I\'ve been walking by there for months.   If I\'m ordering out Chinese I usually go with West Place (or Thai Market for Thai food...MMM!!)  I\'ve lived in the neighborhood for 4+ years and have little experience with the \'faster food\' joints along 116 & FDB, but noticed a few weeks ago these guys had an \'A\' rating and you can\'t help but notice how bright it is in there, which I thought was a plus.   So last night on my way back from Best Yet Market I decided I\'d stop in, ask for a menu, and check it out.  They were super friendly.  The menu was standard, and one thing I really liked was that you can watch everything being prepared in their galley kitchen.  I ordered dumplings, fried rice and egg rolls and all of it was very good.  In fact friend rice was quite a bit better than I\'ve had delivered from places up near Columbia.   I think I\'ve found my new place.   And it\'s so close I can just pick it up myself.', 4);

INSERT INTO Addresses (a_id,zip,building_number,street_name,city,state)
VALUES (8,10025,2843,'Broadway','New York','NY');

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, phone, website_url, a_id)
VALUES ('8oHCb-XvLpqCQD7En17Fzw', 'Chipotle', 'Mexican', 'http://s3-media2.ak.yelpcdn.com/bphoto/wLBz0C_Mudhb-0pAk7QTvQ/ms.jpg', '2122221712', 'http://www.yelp.com/biz/chipotle-new-york-4', 8);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('kIeBFp6DU3E1THLz4RFOlw', 'Dimitrios D.', 1106, 3.64);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('kIeBFp6DU3E1THLz4RFOlw', '8oHCb-XvLpqCQD7En17Fzw', '2011-03-06', 'It\'s a Chipotle.\n\nIt\'s relatively near to Columbia University, so convenient for students who go there.\n\nThere\'s almost always a line when I go.\n\nI love the chicken tacos.  One hard, two soft.  With cheese, the red salsa, the diced tomatoes, and guacamole.  So tasty.', 4);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('l2VkeZn9W2CgpGu-NtpIYw', 'Daniel M.', 27, 3.52);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('l2VkeZn9W2CgpGu-NtpIYw', '8oHCb-XvLpqCQD7En17Fzw', '2012-01-10', 'A pretty crowded Chipotle... but clean and excellent, with efficient service and always fantastic ingredients.\n\nBurrito love.', 5);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (81, '2013-04-29', 3, 'A', '8oHCb-XvLpqCQD7En17Fzw');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (81, 'Hot food item not held at or above 140Âº F.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (81, 'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and underneath the unit.', 0);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (81, 'Nuisance created or allowed to exist. Facility not free from unsafe, hazardous, offensive or annoying conditions.', 0);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (82, '2015-01-22', 3, 'A', '8oHCb-XvLpqCQD7En17Fzw');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (82, 'Food not protected from potential source of contamination during storage, preparation, transportation, display or service.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (82, 'Food contact surface not properly washed, rinsed and sanitized after each use and following any activity when contamination may have occurred.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (82, 'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and underneath the unit.', 0);

INSERT INTO Addresses (a_id,zip,building_number,street_name,city,state)
VALUES (10,10025,1090,'Amsterdam Ave','New York','NY');

INSERT INTO Restaurants (r_id, name, cuisine, photo_url, phone, website_url, a_id)
VALUES ('K-wyXXi5lPM2cwaV9_vXcQ', 'Strokos', 'Delis', 'http://s3-media2.ak.yelpcdn.com/bphoto/_zy6XcN3ILmBLl7D7tQytA/ms.jpg', '2126662121', 'http://www.yelp.com/biz/strokos-gourmet-deli-new-york', 10);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('rlSiggm5Xb92HdO5JkMo1Q', 'Kate M.', 301, 3.1);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('rlSiggm5Xb92HdO5JkMo1Q', 'K-wyXXi5lPM2cwaV9_vXcQ', '2008-12-17', 'Overpriced, mediocre food.', 2);

INSERT INTO Reviewers (u_id, name, review_count, average_rating)
VALUES ('hIpXo2cSZ2jAjSYadNxwSg', 'David C.', 26, 4.46);

INSERT INTO Reviews (u_id, r_id, date_reviewed, comment, rating)
VALUES ('hIpXo2cSZ2jAjSYadNxwSg', 'K-wyXXi5lPM2cwaV9_vXcQ', '2011-03-12', 'Massive and tasty salads for only $6.95', 4);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (101, '2014-09-05', 3, 'B', 'K-wyXXi5lPM2cwaV9_vXcQ');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (101, 'Live roaches present in facility\'s food and/or non-food areas.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (101, 'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.', 0);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (101, 'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and underneath the unit.', 0);

INSERT INTO ViolationSummaries (v_id, date_inspected, violation_count, grade, r_id)
VALUES (102, '2015-03-20', 3, 'A', 'K-wyXXi5lPM2cwaV9_vXcQ');

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (102, 'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.', 1);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (102, 'Plumbing not properly installed or maintained; anti-siphonage or backflow prevention device not provided where required; equipment or floor not properly drained; sewage disposal system in disrepair or not functioning properly.', 0);

INSERT INTO Violations (v_id, violation_detail, critical)
VALUES (102, 'Proper sanitization not provided for utensil ware washing operation.', 0);