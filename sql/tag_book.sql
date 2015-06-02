
CREATE TABLE `NYK_BookTagRel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relId` int(11) NOT NULL COMMENT 'identify the <userid,bookid> pair',
  `tagId` int(11) NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the category is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the category is updated.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike book tag';