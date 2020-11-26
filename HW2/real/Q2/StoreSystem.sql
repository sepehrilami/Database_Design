
/* credit to Amir Mehdi Namjoo & Syd Mohammad Sadegh Keshavarzi */

create database db_HW2_2;

use db_HW2_2;

CREATE TABLE `user`
(
    `Email`     varchar(128) primary key not null,
    `FirstName` varchar(32)              not null,
    `LastName`  varchar(32)              not null,
    `City`      varchar(32)              not null,
    `Address`   varchar(256)             not null,
    `Telephone` varchar(10),
    `Password`  varchar(128)             not null
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `driver`
(
    `NationalId`  char(10) primary key not null,
    `FirstName`   varchar(32)          not null,
    `LastName`    varchar(32)          not null,
    `Telephone`   varchar(10),
    `PlateNumber` varchar(8)           not null
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `item`
(
    `Id`     varchar(10) primary key             not null,
    `Name`   varchar(128)                        not null,
    `Seller` varchar(128)                        not null,
    `Type`   ENUM ('Children' , 'Men' , 'Women') not null,
    `Price`  Int
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `variety_item`
(
    `Id`       varchar(10) not null,
    `Color`    VARCHAR(10) not null,
    `Size`     int         not null,
    `Quantity` int         not null,
    CHECK ( Quantity >= 0 ),
    primary key (Id, Color, Size),
    FOREIGN KEY (Id) references item (id) on delete cascade on update cascade

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `transport`
(
    `Id`            varchar(10) primary key not null,
    `TransportDate` DATE                    not null,
    `Capacity`      INT                     not null,
    `DriverID`      char(10)                not null,
    FOREIGN KEY (DriverID) REFERENCES driver (NationalId) ON UPDATE CASCADE ON DELETE CASCADE

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `saleOrder`
(
    `Id`          varchar(10) primary key                       not null,
    `OrderDate`   DATE                                          not null,
    `Type`        ENUM ('Normal' , 'Special' )                  NOT NULL DEFAULT 'Normal',
    `Staus`       ENUM ('Pending' , 'Registered' , 'Completed') NOT NULL DEFAULT 'Pending',
    `UserEmail`   varchar(128)                                  not null,
    `TransportID` varchar(10)                                   not null,
    FOREIGN KEY (UserEmail) references user (Email) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (TransportID) references transport (Id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `comment`
(
    `Id`        varchar(10)   NOT NULL,
    `ItemId`    varchar(10)   NOT NULL,
    `UserEmail` varchar(128)  not null,
    `Score`     int           not null,
    `Text`      varchar(1024) not null,
    CHECK ( Score >= 1 and Score <= 5 ),
    PRIMARY KEY (Id, ItemId, UserEmail),
    FOREIGN KEY (UserEmail) REFERENCES user (Email) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ItemId) REFERENCES item (ID) ON DELETE CASCADE ON UPDATE CASCADE

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `basket`
(
    `UserEmail` varchar(128) primary key not null,
    FOREIGN KEY (UserEmail) REFERENCES user (Email) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `basket_variety`
(
    `BasketEmail` varchar(128) not null,
    `VarietyId`   varchar(10)  not null,
    `Color`       VARCHAR(10)  not null,
    `Size`        int          not null,
    `Quantity`    int          not null,
    PRIMARY KEY (VarietyId, Color, Size, BasketEmail),
    FOREIGN KEY (BasketEmail) REFERENCES basket (UserEmail) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (VarietyId, Color, Size) references variety_item (Id, Color, Size) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `order_variety`
(
    `OrderId`   varchar(10) not null,
    `VarietyId` varchar(10) not null,
    `Color`     VARCHAR(10) not null,
    `Size`      int         not null,
    `Quantity`  int         not null,
    PRIMARY KEY (OrderId,VarietyId,Color,Size),
    FOREIGN KEY (OrderId) references saleOrder(Id)ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (VarietyId,Color,Size) references variety_item(Id,Color,Size) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
  