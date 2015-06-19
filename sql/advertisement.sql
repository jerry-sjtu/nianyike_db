

CREATE TABLE `NYK_Advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(256) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `type` varchar(256),
  `adUrl` varchar(1024),
  `imgUrl` varchar(1024) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `addTime` timestamp NOT NULL,
  `updateTime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='nianyike advertisement';