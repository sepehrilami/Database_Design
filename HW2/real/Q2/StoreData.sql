INSERT INTO `user` (`Email`, `FirstName`, `LastName`, `City`, `Address`, `Telephone`, `Password`)
VALUES('abcd@gmail.com', 'firstname1', 'lastname1', 'shz', '21 street', '07100', '1234');

INSERT INTO `user` (`Email`, `FirstName`, `LastName`, `City`, `Address`, `Telephone`, `Password`)
VALUES('abcdefg@gmail.com', 'firstname2', 'lastname2', 'teh', '21 street', '02100', '1234');

INSERT INTO `driver` (`NationalId`, `FirstName`, `LastName`, `Telephone`, `PlateNumber`)
VALUES (22830, 'driver1', 'lastdriver1', 0917, 63);

INSERT INTO `driver` (`NationalId`, `FirstName`, `LastName`, `Telephone`, `PlateNumber`)
VALUES (22905, 'driver2', 'lastdriver2', 0933, 68);

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('001', 'item1', 'itemseller', 'Men', '10000');

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('002', 'item2', 'itemseller2', 'Women', '12000');

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('003', 'item3', 'itemseller2', 'Women', '12000');

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('004', 'item4', 'itemseller2', 'Women', '12000');

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('005', 'item5', 'itemseller2', 'Women', '13000');

INSERT INTO `item` (`Id`, `Name`, `Seller`, `Type`, `Price`)
VALUES ('006', 'item6', 'itemseller2', 'Women', '13000');

INSERT INTO `variety_item` (`Id`, `Color`, `Size`, `Quantity`) 
VALUES ('001', 'RED', '85', '12');

INSERT INTO `variety_item` (`Id`, `Color`, `Size`, `Quantity`) 
VALUES ('002', 'BLUE', '85', '9');

INSERT INTO `variety_item` (`Id`, `Color`, `Size`, `Quantity`) 
VALUES ('006', 'BLUE', '85', '9');

INSERT INTO `variety_item` (`Id`, `Color`, `Size`, `Quantity`) 
VALUES ('006', 'RED', '85', '0');

INSERT INTO `variety_item` (`Id`, `Color`, `Size`, `Quantity`) 
VALUES ('006', 'GREEN', '85', '0');

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1100, '1399-08-19', 22, 22830);

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1101, '1399-08-17', 15, 22830);

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1102, '1399-08-19', 20, 22905);

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1103, '1399-08-17', 40, 22830);

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1104, '1399-08-17', 40, 22830);

INSERT INTO transport (`Id`, `TransportDate`, `Capacity`, `DriverID`)
VALUES (1105, '1399-08-20', 40, 22830);

INSERT INTO saleOrder (`Id`, `OrderDate`, `Type`, `Staus`, `UserEmail`, `TransportID`)
VALUES (66601, '1399-08-19', 'Normal', 'Pending', 'abcdefg@gmail.com', 1100);

INSERT INTO saleOrder (`Id`, `OrderDate`, `Type`, `Staus`, `UserEmail`, `TransportID`)
VALUES (66602, '1399-08-19', 'Normal', 'Pending', 'abcd@gmail.com', 1100);

INSERT INTO saleOrder (`Id`, `OrderDate`, `Type`, `Staus`, `UserEmail`, `TransportID`)
VALUES (66603, '1399-08-19', 'Normal', 'Completed', 'abcdefg@gmail.com', 1100);

INSERT INTO saleOrder (`Id`, `OrderDate`, `Type`, `Staus`, `UserEmail`, `TransportID`)
VALUES (66604, '1399-08-20', 'Normal', 'Completed', 'abcd@gmail.com', 1105);

INSERT INTO saleOrder (`Id`, `OrderDate`, `Type`, `Staus`, `UserEmail`, `TransportID`)
VALUES (66605, '1399-08-20', 'Normal', 'Completed', 'abcd@gmail.com', 1105);

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222001, '001', 'abcd@gmail.com', '5', 'text1');

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222002, '001', 'abcd@gmail.com', '4', 'text2');

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222003, '002', 'abcd@gmail.com', '4', 'text2');

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222004, '003', 'abcd@gmail.com', '4.2', 'text2');

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222005, '004', 'abcd@gmail.com', '2', 'text2');

INSERT INTO comment (`Id`, `ItemId`, `UserEmail`, `Score`, `Text`)
VALUES (222006, '005', 'abcd@gmail.com', '3', 'text2');

INSERT INTO order_variety (`OrderId`, `VarietyId`, `Color`, `Size`, `Quantity`)
VALUES (66602, '001', 'RED', 85, 12);

INSERT INTO order_variety (`OrderId`, `VarietyId`, `Color`, `Size`, `Quantity`)
VALUES (66601, '002', 'BLUE', '85', '9');

INSERT INTO order_variety (`OrderId`, `VarietyId`, `Color`, `Size`, `Quantity`)
VALUES (66603, '002', 'BLUE', '85', '9');
