CREATE ASSERTION DrugLimit
    CHECK ((SELECT Quantity FROM drug_prescription) <= 5);


DELIMITER $$
CREATE
    TRIGGER RegisterOrder
    AFTER UPDATE
    ON saleOrder
    FOR EACH ROW
    BEGIN
        IF New.Staus = 'Registered' THEN
            UPDATE variety_item V
            LEFT JOIN order_variety O ON (
                 V.Id = O.VarietyId AND
                 V.Color = O.Color AND
                 V.Size = O.Size
            )
            SET V.Quantity = V.Quantity - O.Quantity
            WHERE O.OrderId = New.Id;
        END IF;
    END$$
DELIMITER ;
