drop table NYK_UserBookRel;

CREATE TABLE `NYK_UserBookRel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11),
  `bookId` int(11),
  `status` tinyint(4),
  `addTime` timestamp NOT NULL,
  `updateTime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;