drop table NYK_User;

CREATE TABLE `NYK_User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `mobile` varchar(128) NOT NULL,
  `birthday` timestamp NOT NULL,
  `countryCode` varchar(128)  NOT NULL,
  `countryName` varchar(256) NOT NULL,
  `gender` tinyint(3) NOT NULL,
  `headPicUrl` varchar(256) NOT NULL,
  `lastCity` int(11),
  `lastLng` float(11),
  `lastLat` float(11),
  `addTime` timestamp NOT NULL COMMENT 'time when the user is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the user is updated.',
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `IX_City` (lastCity)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike user information';