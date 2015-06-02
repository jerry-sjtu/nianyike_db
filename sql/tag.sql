

CREATE TABLE `NYK_Tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `val` varchar(256) NOT NULL,
  `addTime` timestamp NOT NULL COMMENT 'time when the tag is added.',
  `updateTime` timestamp NOT NULL COMMENT 'time when the tag is updated.',
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike tags';

ALTER TABLE NYK_Tag ADD INDEX `i_val` (`val`) USING HASH;