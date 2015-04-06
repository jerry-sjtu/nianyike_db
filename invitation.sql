
CREATE TABLE NYK_BookInvitation (
    id int(11) NOT NULL AUTO_INCREMENT,
    relId int(11) NOT NULL, #relId代表着<userid,bookid>
    senderId int(11) NOT NULL,
    receiverId int(11) NOT NULL,
    meetPlace varchar(1024) NOT NULL,
    msg varchar(1024) NOT NULL,
    status tinyint(1) NOT NULL DEFAULT 1, #1 for being not read, 2 for beding read, 0 for deleted
    approved tinyint(1) NOT NULL DEFAULT 0, #0 for being not approved, 1 for being approved
    addTime timestamp NOT NULL,
    updateTime timestamp NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE NYK_PathInvitation (
    id int(11) NOT NULL AUTO_INCREMENT,
    relId int(11) NOT NULL, #relId代表着NYK_UserBookRel.id
    bookId int(11) NOT NULL,
    userId int(11) NOT NULL,
    receiverId int(11) NOT NULL DEFAULT 0, #recieverId不为0表示该comment为reply
    comment varchar(2048) NOT NULL,
    status tinyint(1) NOT NULL DEFAULT 1, 
    addTime timestamp NOT NULL,
    updateTime timestamp NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;