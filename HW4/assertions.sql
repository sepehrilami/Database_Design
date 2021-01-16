CREATE ASSERTION DrugLimit
    CHECK ((SELECT Quantity FROM drug_prescription) <= 5);


DELIMITER $$
CREATE
    TRIGGER SubmitOrder
    AFTER UPDATE
    ON `saleOrder`
    FOR EACH ROW
    BEGIN
        IF New.Staus = 'Registered' THEN
            UPDATE variety_item
            SET `Quantity` = `Quantity` - 1
            WHERE variety_item.Id IN (
                SELECT VarietyId as Id
                FROM order_variety
                WHERE order_variety.OrderId = New.Id
            );
        END IF;
    END$$    

DELIMITER ;


