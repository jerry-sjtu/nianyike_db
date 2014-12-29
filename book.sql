drop table NYK_User;

CREATE TABLE `NYK_User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extsource` varchar(256) NOT NULL,
  `isbn10` char(10),
  `isbn13` char(13),
  `title` varchar(256) NOT NULL,
  `subtitle` varchar(256) ,
  `imgurl` varchar(256) NOT NULL,
  `imgpath` varchar(256),
  `author` varchar(256) NOT NULL,
  `translator` varchar(256),
  `publisher` varchar(256) NOT NULL,
  `pubtime` timestamp NOT NULL,
  `price` float NOT NULL,
  `pagenum` int(11) NOT NULL,
  `summary` varchar(2048) NOT NULL,
  `catalog` varchar(2048) NOT NULL,
  `score` float NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the book is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the book is updated.',
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`isbn10`),
  UNIQUE KEY (`isbn13`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book information';