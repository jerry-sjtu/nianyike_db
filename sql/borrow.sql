
CREATE TABLE NYK_BookBorrow (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `relId` int(11) NOT NULL, #relId代表着<userid,bookid>
    `ownerId` int(11) NOT NULL,
    `borrowerId` int(11) NOT NULL,
    `borrowTime` timestamp NOT NULL,
    `returnTime` timestamp NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for returned; 2 for not returned',
    `addTime` timestamp NOT NULL,
    `updateTime` timestamp NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
