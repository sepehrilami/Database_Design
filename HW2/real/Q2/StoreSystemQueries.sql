
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