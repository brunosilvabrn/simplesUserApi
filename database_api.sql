DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `date` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (1,"Berk Craig","(81) 62527-1455","consectetuer.adipiscing@outlook.edu","04/20/2021"),
  (2,"Joshua Vazquez","(58) 72526-7455","tellus@hotmail.couk","02/01/2022"),
  (3,"Hayden Cook","(66) 68442-5636","eget.mollis@icloud.couk","11/10/2022"),
  (4,"Blake Drake","(33) 77158-5642","elementum.sem@hotmail.ca","04/08/2021"),
  (5,"Lucas Sparks","(68) 64553-7845","cras@icloud.com","07/21/2022"),
  (6,"Dieter George","(69) 49765-7565","nunc.laoreet.lectus@aol.org","03/27/2021"),
  (7,"Buffy Gonzalez","(44) 36244-5725","egestas.urna@protonmail.couk","09/12/2022"),
  (8,"Marah Guy","(58) 71128-2175","augue.id@outlook.ca","05/09/2022"),
  (9,"Pascale David","(38) 23668-2121","ut.cursus@yahoo.net","08/19/2021"),
  (10,"Briar Leblanc","(55) 27395-5727","tincidunt.nibh@icloud.couk","09/14/2021");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (11,"Xaviera Stark","(87) 38626-7857","nonummy@yahoo.com","05/29/2021"),
  (12,"Holmes Lancaster","(42) 45729-5744","mauris.quis@protonmail.com","02/24/2021"),
  (13,"Iola Russell","(24) 28454-2384","nunc.est@icloud.org","03/21/2021"),
  (14,"Baker Wiggins","(78) 69681-4876","erat.etiam@yahoo.com","04/22/2021"),
  (15,"Tate Mcconnell","(74) 79754-6932","nunc.mauris@yahoo.com","12/16/2021"),
  (16,"Travis Buck","(62) 93678-2951","sagittis.nullam@aol.org","04/04/2021"),
  (17,"Stacy Conley","(59) 78628-5278","dapibus.id@yahoo.ca","04/26/2021"),
  (18,"Prescott Dominguez","(78) 95744-6715","id.ante@outlook.ca","06/10/2021"),
  (19,"Addison Caldwell","(14) 44831-8248","fringilla.cursus@protonmail.couk","02/28/2021"),
  (20,"Regan Noel","(24) 71412-6472","cras.vulputate@yahoo.org","01/21/2022");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (21,"Nissim Joseph","(84) 76541-3765","turpis@yahoo.edu","02/06/2022"),
  (22,"Jackson Pugh","(39) 14355-2884","eu.odio@aol.org","11/20/2022"),
  (23,"Jonah Walls","(72) 16536-8817","facilisis@aol.com","08/24/2021"),
  (24,"Hamish Reed","(62) 77469-6766","pede@yahoo.ca","08/05/2022"),
  (25,"Linda Stokes","(56) 58696-3729","faucibus.lectus@hotmail.ca","04/19/2021"),
  (26,"Kareem Sanford","(55) 15889-6976","libero@outlook.edu","05/09/2022"),
  (27,"Jeremy Hendricks","(15) 54623-2468","nunc.pulvinar@google.net","04/22/2022"),
  (28,"Kieran Cash","(57) 59731-7687","tempor.diam@icloud.com","03/24/2022"),
  (29,"Brynn Alston","(99) 58217-6729","metus.aliquam.erat@yahoo.edu","11/23/2022"),
  (30,"Amity Cotton","(22) 67445-8952","a.purus.duis@google.edu","11/09/2022");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (31,"Herrod Peterson","(53) 78752-3435","nisi.nibh.lacinia@outlook.com","09/16/2021"),
  (32,"Willa Lynn","(53) 41253-5977","ipsum.leo.elementum@hotmail.ca","06/11/2022"),
  (33,"Levi Simpson","(52) 73486-3523","lorem.vehicula@aol.com","04/21/2022"),
  (34,"Orla Porter","(78) 35551-6548","erat.eget@yahoo.edu","01/14/2021"),
  (35,"Blaze Dillon","(48) 46723-3314","vulputate.risus.a@hotmail.edu","11/06/2021"),
  (36,"Jamal Grimes","(41) 66235-4474","duis@icloud.net","10/12/2021"),
  (37,"Gavin Fuentes","(69) 12535-6931","augue.malesuada@hotmail.edu","03/07/2021"),
  (38,"Laith Blanchard","(41) 66248-3395","orci@protonmail.org","10/19/2022"),
  (39,"Aileen Blevins","(32) 54229-7389","felis.purus.ac@yahoo.ca","12/31/2020"),
  (40,"Ulric Clemons","(24) 21886-8996","sociis.natoque@google.net","05/29/2022");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (41,"Helen Ramos","(26) 25578-1438","tortor.at@icloud.org","02/21/2022"),
  (42,"Chandler Sanders","(44) 34866-7365","mollis.non@yahoo.com","03/19/2021"),
  (43,"Tasha Farmer","(75) 87639-2488","ultrices.vivamus@icloud.com","03/28/2022"),
  (44,"Jordan Abbott","(67) 78328-8713","nullam@google.net","11/26/2022"),
  (45,"Erasmus Barry","(65) 33672-8293","aliquet@hotmail.com","05/04/2021"),
  (46,"Zephania Webb","(64) 15254-3525","in.lorem@google.ca","04/13/2021"),
  (47,"Brynne Rhodes","(68) 36751-7389","scelerisque.neque.sed@yahoo.ca","02/05/2022"),
  (48,"Colin Peterson","(66) 56836-3254","et.libero@google.org","02/17/2021"),
  (49,"Curran Copeland","(23) 87132-2182","feugiat@google.ca","08/12/2021"),
  (50,"Aurora Dunlap","(24) 34468-7355","nunc@google.com","06/14/2021");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (51,"Noelle Maldonado","(35) 63843-6785","in.at@aol.net","03/11/2022"),
  (52,"Neil Shepherd","(38) 54538-9728","vivamus@protonmail.net","03/19/2022"),
  (53,"Conan Leblanc","(21) 16539-9816","nec.euismod@hotmail.org","10/03/2021"),
  (54,"Nichole Christian","(77) 32356-8249","accumsan.laoreet@protonmail.net","05/09/2021"),
  (55,"Athena Barton","(87) 32522-1735","enim.condimentum.eget@icloud.org","07/23/2021"),
  (56,"Amos Riley","(65) 24684-7369","ut.sagittis@google.couk","01/07/2022"),
  (57,"Alfonso Kirkland","(87) 19817-3544","tellus.faucibus@protonmail.net","10/04/2021"),
  (58,"Brody Tyson","(89) 31866-2327","facilisis.facilisis@aol.com","05/30/2022"),
  (59,"Adara Roberson","(34) 86536-5372","vitae.risus.duis@google.org","02/01/2021"),
  (60,"Jacob Leblanc","(36) 42941-5365","tellus.justo.sit@yahoo.edu","04/26/2022");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (61,"Edward Chang","(46) 14944-7671","risus.donec.nibh@yahoo.com","04/19/2021"),
  (62,"Maggy Watts","(72) 58657-1586","risus@google.couk","01/15/2022"),
  (63,"Stacy Medina","(66) 26635-6512","amet@aol.net","01/18/2022"),
  (64,"Hedley Tyson","(32) 88687-5398","nisi.cum.sociis@outlook.net","04/22/2021"),
  (65,"Kelly Ross","(16) 57456-3655","lectus.nullam@aol.org","03/15/2021"),
  (66,"Dennis Sykes","(16) 64222-2745","eu.enim@hotmail.com","05/10/2022"),
  (67,"Harding Mueller","(76) 67588-6588","pede.nec.ante@icloud.org","06/20/2022"),
  (68,"Bradley Sweet","(82) 12753-6329","tellus.aenean@yahoo.couk","05/10/2021"),
  (69,"Charity Bailey","(46) 27982-6781","semper.auctor@outlook.couk","07/29/2021"),
  (70,"Hunter Shaw","(38) 41878-7742","et.nunc@outlook.com","09/06/2021");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (71,"Sharon Sharp","(62) 24574-3618","lectus.quis@google.edu","07/09/2021"),
  (72,"Ali Berg","(85) 14725-2855","aliquam.eros@hotmail.edu","08/09/2022"),
  (73,"Caesar Snyder","(54) 64826-9993","lectus.rutrum@icloud.org","02/24/2021"),
  (74,"Edward Page","(45) 58657-8748","sit.amet@outlook.com","01/17/2022"),
  (75,"Heather Pearson","(48) 61428-7548","non@protonmail.com","03/31/2021"),
  (76,"Salvador Wright","(44) 27639-2275","in@outlook.ca","04/24/2021"),
  (77,"Rogan Curry","(35) 36453-3836","sed.pede@outlook.edu","04/05/2021"),
  (78,"Randall Contreras","(55) 88397-6963","euismod@google.couk","12/05/2020"),
  (79,"Sydnee Page","(84) 47626-3643","placerat@yahoo.ca","02/25/2022"),
  (80,"Marshall Ball","(46) 46844-2412","molestie@yahoo.ca","10/12/2022");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (81,"Walker Cruz","(88) 92898-8339","phasellus.elit.pede@protonmail.edu","06/13/2022"),
  (82,"Nomlanga Bell","(46) 87356-2231","cursus.non@yahoo.org","04/21/2022"),
  (83,"Camille Bradley","(62) 21515-1831","dictum.sapien@google.net","06/10/2021"),
  (84,"Shelly Mercer","(31) 93731-3535","egestas.sed@aol.org","04/25/2021"),
  (85,"Matthew Mclean","(62) 74846-3561","gravida.molestie@outlook.com","06/08/2021"),
  (86,"Caryn Donaldson","(14) 13683-7618","sociis.natoque@aol.org","07/12/2021"),
  (87,"April Roth","(72) 69588-2367","proin@google.com","06/01/2021"),
  (88,"Madeson Barnes","(31) 73824-6674","nibh@google.couk","03/12/2021"),
  (89,"Geoffrey Sparks","(11) 87825-7898","magna.nec.quam@aol.couk","11/02/2022"),
  (90,"Stephen House","(74) 61623-1212","adipiscing.elit.aliquam@protonmail.com","03/02/2021");
INSERT INTO `users` (`id`,`name`,`phone`,`email`,`date`)
VALUES
  (91,"Mara Noel","(38) 97387-7432","neque.nullam.ut@yahoo.ca","03/16/2022"),
  (92,"Hunter Mccray","(83) 36636-7839","sodales.elit.erat@icloud.edu","10/17/2021"),
  (93,"Keelie Malone","(44) 73437-7643","scelerisque.mollis.phasellus@yahoo.com","02/18/2021"),
  (94,"Eve Noble","(29) 35731-9717","in.scelerisque@outlook.edu","05/19/2022"),
  (95,"Neville Gibbs","(43) 37243-7572","lorem.ipsum@hotmail.net","08/14/2021"),
  (96,"Guy Winters","(84) 67682-8442","eu.tempor@icloud.edu","12/27/2021"),
  (97,"Brielle Bright","(41) 56148-5435","erat.volutpat@outlook.couk","01/30/2021"),
  (98,"Seth Odom","(37) 77352-2712","sapien@aol.net","06/01/2022"),
  (99,"Keiko Mack","(49) 51622-7822","venenatis@protonmail.edu","02/13/2021"),
  (100,"Quail Spencer","(94) 83564-9657","iaculis.aliquet@outlook.com","12/20/2021");
