-- 1


SELECT `user`.`Email`, IFNULL(SUM(`item`.`Price`), 0) AS OrderSum
FROM `user`
LEFT JOIN (
    SELECT `Id`, `UserEmail`
    FROM `saleOrder`
    WHERE `Staus` = 'Completed'
) `CompletedOrders` ON `CompletedOrders`.`UserEmail` = `user`.`Email`
LEFT JOIN `order_variety` ON `order_variety`.`OrderId` = `CompletedOrders`.`Id`
LEFT JOIN `item` ON `item`.`Id` = `order_variety`.`VarietyId`
GROUP BY `user`.`Email`;


-- 2


SELECT `item`.*, IFNULL(AVG(`comment`.`Score`), 0) as `AverageScore`
FROM `item`
LEFT JOIN `comment` ON `item`.`Id` = `comment`.`ItemId`
GROUP BY `item`.`Id`
ORDER BY `AverageScore` DESC
LIMIT 5;


-- 3


SELECT `FirstName`, `LastName`
FROM `driver`
WHERE `NationalId` IN (
    SELECT DISTINCT `NationalId`
    FROM (
        SELECT `transport`.`DriverId` as `NationalId`, IFNULL(SUM(`order_variety`.`Quantity`), 0) as `QuantitySum`, IFNULL(SUM(`transport`.`Capacity`), 0) as `Capacity`
        FROM `transport`
        LEFT JOIN `saleOrder` ON `transport`.`Id` = `saleOrder`.`TransportId`
        LEFT JOIN `order_variety` ON `saleOrder`.`Id` = `order_variety`.`OrderId`
        GROUP BY `transport`.`DriverId`
    ) as `JoinedTable`
    WHERE `JoinedTable`.`QuantitySum`  < `JoinedTable`.`Capacity`
);


-- 4


SELECT Id, Color, Size
FROM variety_item
WHERE Quantity = 0;


-- 5


SELECT DISTINCT user.*
FROM (
    SELECT DISTINCT UserEmail
    FROM saleOrder
    WHERE `Staus` = 'Pending' AND `OrderDate` = '1399-08-19'
) AS PendingOrders
LEFT JOIN user ON user.Email = PendingOrders.UserEmail;


-- 6


SELECT DISTINCT driver.*
FROM (
    SELECT DISTINCT DriverId, Id
    FROM transport
    WHERE `TransportDate` = '1399-08-20'
) TransportDriver
LEFT JOIN saleOrder ON TransportDriver.Id = saleOrder.TransportId
LEFT JOIN driver ON driver.NationalId = TransportDriver.DriverId
WHERE saleOrder.UserEmail = 'abcd@gmail.com';

