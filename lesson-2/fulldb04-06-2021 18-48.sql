#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='юзеры';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('101', 'Jeanne', 'Little', 'stark.jamil@example.net', 'fb431062adc88b73c6ee6d0b877bc2e575a8a90a', '696');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('102', 'Dwight', 'O\'Hara', 'garry.aufderhar@example.org', '53481383b5021716099963d9190dd8bdb6387ed2', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('103', 'Agnes', 'Bernhard', 'arden.greenholt@example.org', '3609abe76464656706e68b46bdbf89798e6a7096', '486960');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('104', 'Daphney', 'Tromp', 'derek33@example.org', 'b784b2c586ea650f00384700698e5cb4b8094646', '63');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('105', 'Troy', 'Lang', 'emilio00@example.com', '13ceb8cc174b4b16967602043e7b3e569f791ea6', '4792086929');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('106', 'Monica', 'Buckridge', 'cleora74@example.org', 'ff967666c59fd22893229f0e8e361f3d97a18fdb', '754068');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('107', 'Mack', 'Skiles', 'omayer@example.net', 'e4d8fe385db4b8fc156b8d2585058b8b0fe9b774', '786');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('110', 'Mikel', 'Pollich', 'eloisa70@example.com', 'f317ebdc3b9cf630e2f0396e1e79fcf281801b67', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('112', 'Jennyfer', 'Blick', 'winona.sanford@example.com', '3eb2895f93cc5d9211bbadd0427cb382541c776d', '25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('113', 'Toby', 'Donnelly', 'jacklyn.dare@example.net', 'd79c18e6e4b61a9ee67c088fd403c0dee5f4889a', '3832780620');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('114', 'Chelsie', 'Ryan', 'wmurphy@example.org', '3c325526a5d4b2895f0669344bbcfc91ac0fe47a', '73');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('118', 'Sasha', 'Steuber', 'gparisian@example.net', '956a356d473d7c19095c7b795ee5e622d8367d96', '473');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('119', 'Keyshawn', 'Cole', 'becker.branson@example.net', 'c1d375e1489dbf418162a9a23c0f8e8dde5462f0', '5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('120', 'Jayde', 'Yundt', 'stanton.abbott@example.net', '2641528fa0ee49a05072ea94047772c231a7b322', '175882');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('122', 'Shea', 'Mohr', 'jpaucek@example.com', '0254a8bd3e80d35ccdc222fc52c0ab4bcdac657b', '362');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('123', 'Coy', 'Gerhold', 'turner11@example.net', '95adb955ec8acbdd4fd13692870ca62ed9d4c876', '219667');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('126', 'Rico', 'Oberbrunner', 'ralph30@example.org', '0bec474f6e65f0950645c980c9e0a3c1a7ea7ded', '45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('127', 'Ellen', 'Kihn', 'rahsaan38@example.com', '65d6838f95eed0124167a0da5571d7075308dada', '9585485940');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('129', 'Alfredo', 'Dare', 'dickinson.kian@example.net', '844fb2446ce6714dcdc8805bc49b8aad303727ae', '575');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('131', 'Claudia', 'Tromp', 'ryley.schumm@example.net', '04c40383e502b17d964bd369aa17b0afb1b3148c', '7520333776');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('133', 'Arno', 'Bogan', 'katharina68@example.com', '824fb753c8a4de4ebbcecf184bd93c7d261bae39', '11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('134', 'Dangelo', 'Considine', 'quinn.hammes@example.org', '066adfa5e8d9777d5db6dd7eee0ec2ada89cdebb', '381394');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('138', 'Virginia', 'Keebler', 'iraynor@example.net', '8d958c0d44348cddb829b15f429e813e54b05ebd', '918576');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('139', 'Eino', 'Walter', 'vbeier@example.net', '317c172166677ad09d959fbacd9a618e9a11f457', '60');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('141', 'Merle', 'Ziemann', 'emma.armstrong@example.net', '779645f3584d0fd5af2d39e6cc2eb4da4d92ba92', '460');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('143', 'Mac', 'Jones', 'reina63@example.com', '78a7f8d836a0bd4d475c8dfb4827b8a42ab285ce', '137');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('146', 'Vivian', 'Lesch', 'nolan.hyman@example.com', 'f7edf9c71cfe22c3810743ba88ba85086e468d93', '58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('151', 'Hunter', 'Wolf', 'kariane57@example.org', '3acfc15dd126ea547ad26535ae713c54188854f0', '4853433039');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('152', 'Melany', 'Tremblay', 'ladarius15@example.net', '201afcbf501ed3f9d6d39b4f7c9b036a8151ec75', '670471302');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('153', 'Austin', 'Frami', 'alan73@example.org', '10f6eab28478cb59ffa827474adf291d74e7d538', '688411');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('155', 'Imogene', 'Muller', 'icie72@example.net', '698d4f59d44575a7fd92f7da864d05d804d0a951', '6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('158', 'Jodie', 'Morar', 'brayan26@example.net', '1dd8bea0388d2290ff4d34a254cecbcb81ca901b', '240711');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('161', 'Ramon', 'Paucek', 'zoe.reichert@example.net', '844bf042af3396cb4f911f74d73b017a8866d596', '369611');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('162', 'Muhammad', 'Stokes', 'rkessler@example.net', 'aace58c0441449f983145f418af2373cc8899f5f', '620242');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('164', 'Dixie', 'Hackett', 'rick55@example.org', '2ecc669a0a973eacfb5d1e1dd85253d0f8fed25f', '183');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('165', 'Reva', 'Orn', 'vandervort.murray@example.net', 'a03a79bfaba49da26730e218a6c6322bc65d4f37', '853882');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('166', 'Desmond', 'Daniel', 'german.kreiger@example.org', 'a77433e7544e3b597dd01c3724389e8dce6674d5', '545228');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('168', 'Carmela', 'Stiedemann', 'gmante@example.net', '7a1e5ec93e215a1f360a243709c8c59a96b0cb82', '66');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('172', 'Jordane', 'Conroy', 'oswald.hoeger@example.com', '4e17bc356b24e148e457db49f4ad06b77a667151', '54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('174', 'Velda', 'Wyman', 'heaney.merle@example.net', 'b1410eca1200a1cc5ea66b988bff85657f1d5831', '804325');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('176', 'Mathias', 'Marquardt', 'lockman.kacie@example.com', '62414786fc9e0320e67594653a6640dc74e420d1', '37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('178', 'Pasquale', 'McKenzie', 'wilbert00@example.com', '805ecc6885f834e20936ef15dd9df0896a7290e8', '527');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('181', 'Oma', 'Morissette', 'walter.lexie@example.com', '817f7909c0d24e4e308ae90d7058d00595e63e76', '33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('182', 'Kathryne', 'Bradtke', 'diego.raynor@example.net', 'efb24c8b19a589dc1d0fa46837d93de5c8d8f140', '7726528879');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('184', 'Agustina', 'Emmerich', 'adickinson@example.org', '4cf67ae06b5e6f53fa99e88dabc67f93de59b440', '317910');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('185', 'Ladarius', 'Bashirian', 'langosh.salma@example.org', '2a1e634a8196cc303776fe2db536edfb1b8254a1', '61971');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('188', 'Gianni', 'Fadel', 'aurelia57@example.org', '2e0025948082f2c9517fcec05eb5a2dcdee1b550', '267738');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('189', 'Araceli', 'Gottlieb', 'rodriguez.elton@example.org', 'cadf052ca1272358dbc3285d6c9d96a3c41fb1fb', '402637');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('191', 'Glennie', 'Farrell', 'yshields@example.com', '88335a2642eb0397a5c6a54f4250ec692a600751', '5607382107');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('193', 'Ronny', 'Lesch', 'malinda76@example.org', '05f17f58bcf6326fb1728bd64c692ec2d5803b76', '420');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('194', 'Georgiana', 'Heidenreich', 'payton.abernathy@example.org', 'fb29c02762f93f7f4bc49b178f600267517321f3', '845101');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('195', 'Elissa', 'Sipes', 'august.borer@example.org', 'e2343181a7d81e3b76038ae24579e7ab2a01d3e4', '692317');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('196', 'Erik', 'Renner', 'kunde.ella@example.org', '99d49aad659533538feb6ba7ed36ee3b48b317aa', '586');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('197', 'Trisha', 'Hackett', 'lkrajcik@example.com', 'caacf59fecf89dc054a5acb429321bf81b8d9ae8', '369244');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('200', 'Nia', 'Gorczany', 'emmet17@example.net', '4496bd89c8738f83405522accf8895d2d4938cfd', '758');


