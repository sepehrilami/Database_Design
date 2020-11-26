-- 1


SELECT `user`.`Email`, SUM(`item`.`Price`)
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


SELECT `item`.*, AVG(`comment`.`Score`) as `AverageScore`
FROM `item`
LEFT JOIN `comment` ON `item`.`Id` = `comment`.`ItemId`
GROUP BY `item`.`Id`
ORDER BY `AverageScore` DESC
LIMIT 5;


-- 3


SELECT `FirstName`, `LastName`
FROM `driver`
WHERE `NationalId` IN (
    SELECT `NationalId`
    FROM (
        SELECT `transport`.`DriverId` as `NationalId`, SUM(`order_variety`.`Quantity`) as `QuantitySum`, `transport`.`Capacity` as `Capacity`
        FROM `saleOrder`
        LEFT JOIN `order_variety` ON `saleOrder`.`Id` = `order_variety`.`OrderId`
        LEFT JOIN `transport` ON `transport`.`Id` = `saleOrder`.`TransportId`
        GROUP BY `saleOrder`.`TransportId`
    ) as `JoinedTable`
    WHERE `JoinedTable`.`QuantitySum`  < `JoinedTable`.`Capacity`
);


-- 4


SELECT variety_item.Id, variety_item.Color, variety_item.Size
FROM variety_item
LEFT JOIN (
    SELECT Id, SUM(Quantity) as Quantity
    FROM variety_item
    GROUP BY Id
) Quantities ON variety_item.Id = Quantities.Id
WHERE Quantities.Quantity = 0;


-- 5


SELECT user.*
FROM (
    SELECT DISTINCT UserEmail
    FROM saleOrder
    WHERE `Staus` = 'Pending' AND `OrderDate` = '1399-08-19'
) AS PendingOrders
LEFT JOIN user ON user.Email = PendingOrders.UserEmail;


-- 6


SELECT driver.*
FROM (
    SELECT Email
    FROM user
    WHERE `Email` = 'abcd@gmail.com'
) AS UserData
LEFT JOIN saleOrder ON saleOrder.UserEmail = UserData.Email
LEFT JOIN (
    SELECT DriverId, Id
    FROM transport
    WHERE `TransportDate` = '1399-08-20'
) TransportDriver ON TransportDriver.Id = saleOrder.TransportId
LEFT JOIN driver ON driver.NationalId = TransportDriver.DriverId;

