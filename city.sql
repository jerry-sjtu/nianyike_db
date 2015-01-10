drop table NYK_City;

CREATE TABLE `NYK_City` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryCode` varchar(64),
  `countryName` varchar(128),
  `cityName` varchar(256) NOT NULL,
  `cityEnName` varchar(256),
  `addTime` timestamp NOT NULL COMMENT 'time when the user is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the user is updated.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;