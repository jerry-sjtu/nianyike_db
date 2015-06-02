drop table NYK_Book;

ALTER TABLE NYK_BookCategory AUTO_INCREMENT = 1;

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

CREATE TABLE `NYK_BookCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `addTime` timestamp NOT NULL COMMENT 'time when the category is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the category is updated.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book category';

CREATE TABLE `NYK_BookTag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `val` varchar(256) NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the tag is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the tag is updated.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book tags';

CREATE TABLE `NYK_BookTagRel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relId` int(11) NOT NULL COMMENT 'identify the <userid,bookid> pair',
  `parentId` int(11) NOT NULL DEFAULT 0,
  `addTime` timestamp NOT NULL COMMENT 'time when the category is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the category is updated.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book category';


