
CREATE TABLE `NYK_UserUserRel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(128) NOT NULL,
  `userId` int(11) NOT NULL,
  `friendObjectId` varchar(128) NOT NULL,
  `friendId` int(11) NOT NULL,
  `friendNameIndex` char(1) NOT NULL, 
  `nickName` varchar(256) NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the rel is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the rel is updated.',
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike user relationship information';
