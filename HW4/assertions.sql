CREATE ASSERTION DrugLimit
    CHECK (
        NOT EXISTS (
            SELECT *
            FROM drug_prescription
            WHERE Quantity > 5
        )
    );


DELIMITER $$
CREATE
    TRIGGER RegisterOrder
    AFTER UPDATE
    ON saleOrder
    FOR EACH ROW
    BEGIN
        IF New.Staus = 'Registered' THEN
            UPDATE variety_item V
            JOIN order_variety O ON (
                 V.Id = O.VarietyId AND
                 V.Color = O.Color AND
                 V.Size = O.Size
            )
            SET V.Quantity = V.Quantity - O.Quantity
            WHERE O.OrderId = New.Id;
        END IF;
    END$$
DELIMITER ;
