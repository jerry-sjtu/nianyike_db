drop table NYK_UserBookRel;

CREATE TABLE `NYK_UserBookRel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11),
  `bookId` int(11),
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `comment` varchar(2048) NOT NULL,
  `addTime` timestamp NOT NULL,
  `updateTime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE NYK_BookFollow (
    id int(11) NOT NULL AUTO_INCREMENT,
    relId int(11) NOT NULL, #relId代表着NYK_UserBookRel.id
    userId int(11) NOT NULL,
    love tinyint(1) NOT NULL DEFAULT 0,
    lend tinyint(1) NOT NULL DEFAULT 0,
    comment tinyint(1) NOT NULL DEFAULT 0,
    addTime timestamp NOT NULL,
    updateTime timestamp NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE NYK_UserFollow (
    id int(11) NOT NULL AUTO_INCREMENT,
    followerId int(11) NOT NULL,
    followeeId int(11) NOT NULL, #the one who is followed
    addTime timestamp NOT NULL,
    updateTime timestamp NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE NYK_BookComment (
    id int(11) NOT NULL AUTO_INCREMENT,
    relId int(11) NOT NULL, #relId代表着NYK_UserBookRel.id
    userId int(11) NOT NULL,
    comment varchar(2048) NOT NULL, 
    addTime timestamp NOT NULL,
    updateTime timestamp NOT NULL,
    PRIMARY KEY('id')
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
