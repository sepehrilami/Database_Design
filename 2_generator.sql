INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a100@gmail.com', 'Ali', 'Alavi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a200@gmail.com', 'Karim', 'Karimi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a300@gmail.com', 'Ahmad', 'Ahmadi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a400@gmail.com', 'Mosa', 'Mosavi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a500@gmail.com', 'Mohammad', 'Mohammadi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('a600@gmail.com', 'Rahim', 'Rahimi', 'Tehran', 'Tehran', '0214654654', '123');
INSERT INTO db_HW2_2.user (Email, FirstName, LastName, City, Address, Telephone, Password) VALUES ('abcd@gmail.com', 'Amir', 'Amiri', 'Tehran', 'Tehran', '0214654654', '123');


INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('1', 'A', 'seller1', 'Men', 1000);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('10', 'J', 'seller4', 'Men', 1234);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('2', 'B', 'seller1', 'Women', 2000);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('3', 'C', 'seller2', 'Men', 1000);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('4', 'D', 'seller2', 'Men', 1500);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('5', 'E', 'seller2', 'Men', 456);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('6', 'F', 'seller3', 'Men', 1600);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('7', 'G', 'seller3', 'Men', 1234);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('8', 'H', 'seller3', 'Men', 1782);
INSERT INTO db_HW2_2.item (Id, Name, Seller, Type, Price) VALUES ('9', 'I', 'seller4', 'Men', 1000);



INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('1', '1', 'abcd@gmail.com', 2, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('10', '4', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('11', '5', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('12', '5', 'abcd@gmail.com', 4, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('13', '6', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('14', '6', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('15', '7', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('16', '8', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('17', '8', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('18', '9', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('19', '9', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('2', '1', 'abcd@gmail.com', 3, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('20', '10', 'abcd@gmail.com', 3, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('21', '10', 'abcd@gmail.com', 3, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('3', '1', 'abcd@gmail.com', 4, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('4', '1', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('5', '2', 'abcd@gmail.com', 2, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('6', '2', 'abcd@gmail.com', 1, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('7', '3', 'abcd@gmail.com', 5, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('8', '4', 'abcd@gmail.com', 4, 'a');
INSERT INTO db_HW2_2.comment (Id, ItemId, UserEmail, Score, Text) VALUES ('9', '4', 'abcd@gmail.com', 1, 'a');



INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('1', 'Green', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('1', 'Red', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('1', 'Red', 11, 1);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('10', 'Black', 10, 1);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('2', 'Green', 20, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('2', 'Red', 20, 1);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('3', 'Blue', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('3', 'Blue', 11, 1);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('3', 'Red', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('4', 'Red', 10, 5);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('5', 'Red', 10, 6);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('6', 'Red', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('7', 'Yellow', 11, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('8', 'Red', 10, 0);
INSERT INTO db_HW2_2.variety_item (Id, Color, Size, Quantity) VALUES ('9', 'Red', 10, 0);



INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000001', 'Smith', 'Smithy', '0124', '124');
INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000002', 'Arthur', 'Doe', '0125', '125');
INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000003', 'Jack', 'Ripper', '0126', '126');
INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000004', 'Donald', 'Duck', '0127', '127');
INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000005', 'Joseph', 'Shirley', '0128', '128');
INSERT INTO db_HW2_2.driver (NationalId, FirstName, LastName, Telephone, PlateNumber) VALUES ('0000000006', 'Micky', 'Mouse', '0129', '129');



INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('1', '2020-11-10', 0, '0000000001');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('2', '2020-11-10', 0, '0000000002');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('3', '2020-11-10', 1, '0000000002');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('4', '2020-11-10', 1, '0000000003');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('5', '2020-11-10', 2, '0000000004');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('6', '2020-11-10', 5, '0000000004');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('7', '2020-11-10', 0, '0000000005');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('8', '2020-10-11', 1, '0000000006');
INSERT INTO db_HW2_2.transport (Id, TransportDate, Capacity, DriverID) VALUES ('9', '2020-10-11', 1, '0000000006');


INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('1', '2020-11-10', 'Normal', 'Completed', 'a100@gmail.com', '3');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('2', '2020-11-10', 'Normal', 'Completed', 'a200@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('3', '2020-11-10', 'Normal', 'Completed', 'a300@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('4', '2020-11-10', 'Normal', 'Completed', 'a400@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('5', '2020-11-10', 'Normal', 'Completed', 'abcd@gmail.com', '1');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('6', '2020-11-10', 'Normal', 'Completed', 'a100@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('7', '2020-11-09', 'Normal', 'Pending', 'a100@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('8', '2020-11-09', 'Normal', 'Pending', 'a200@gmail.com', '2');
INSERT INTO db_HW2_2.saleOrder (Id, OrderDate, Type, Staus, UserEmail, TransportID) VALUES ('9', '2020-11-10', 'Normal', 'Pending', 'a300@gmail.com', '2');



INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('1', '1', 'Green', 10, 2);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('1', '1', 'Red', 10, 1);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('1', '2', 'Green', 20, 2);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('2', '3', 'Blue', 10, 1);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('3', '3', 'Blue', 10, 1);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('4', '4', 'Red', 10, 1);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('5', '7', 'Yellow', 11, 3);
INSERT INTO db_HW2_2.order_variety (OrderId, VarietyId, Color, Size, Quantity) VALUES ('6', '8', 'Red', 10, 1);



