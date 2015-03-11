drop table NYK_Book;

CREATE TABLE `NYK_Book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `externalResource` varchar(256) NOT NULL,
  `isbn10` char(10),
  `isbn13` char(13),
  `title` varchar(256) NOT NULL,
  `subtitle` varchar(256) ,
  `imgUrl` varchar(256) NOT NULL,
  `imgPath` varchar(256),
  `authors` varchar(256) NOT NULL,
  `translators` varchar(256),
  `publisher` varchar(256) NOT NULL,
  `pubTime` timestamp,
  `price` float NOT NULL,
  `pageNum` int(11) NOT NULL,
  `summary` varchar(2048) NOT NULL,
  `catalog` varchar(2048) NOT NULL,
  `score` float NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the book is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the book is updated.',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`isbn10`),
  UNIQUE KEY (`isbn13`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book information';