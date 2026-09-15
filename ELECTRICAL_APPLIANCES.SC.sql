USE ELECTRICAL_APPLIANCES;



CREATE TABLE SELLER
(
    SELLERID INT PRIMARY KEY,
    SELLERNAME VARCHAR(100),
    PHONE VARCHAR(15),
    EMAIL VARCHAR(100)
);

SELECT * FROM SELLER


CREATE TABLE INVENTORY
(
    INVENTORYID INT PRIMARY KEY,
    PRODUCTID INT,
    SELLERID INT,
    STOCK INT,
    Status VARCHAR(20),

    FOREIGN KEY (PRODUCTID)
    REFERENCES PRODUCT(PRODUCTID),

    FOREIGN KEY (SELLERID)
    REFERENCES SELLER(SELLERID)
);


INSERT INTO SELLER VALUES
(301,'ABC Traders','9876543210','abc@gmail.com'),
(302,'Daily Needs','9876543211','dailyneeds@gmail.com'),
(303,'Super Stores','9876543212','superstores@gmail.com'),
(304,'Daily Electronics','9876543213','dailyelectronics@gmail.com'),
(305,'Sri Electronics','9876543214','srielectronics@gmail.com'),
(306,'Home World','9876543215','homeworld@gmail.com'),
(307,'Smart Traders','9876543216','smart@gmail.com'),
(308,'City Electronics','9876543217','city@gmail.com'),
(309,'Best Appliances','9876543218','best@gmail.com'),
(310,'Royal Stores','9876543219','royal@gmail.com'),
(311,'Green Electronics','9876543220','green@gmail.com'),
(312,'Tech World','9876543221','tech@gmail.com'),
(313,'Home Needs','9876543222','homeneeds@gmail.com'),
(314,'Star Traders','9876543223','star@gmail.com'),
(315,'New Electronics','9876543224','new@gmail.com'),
(316,'Bright Stores','9876543225','bright@gmail.com'),
(317,'Easy Appliances','9876543226','easy@gmail.com'),
(318,'Digital World','9876543227','digital@gmail.com'),
(319,'Smart Home','9876543228','smarthome@gmail.com'),
(320,'City Stores','9876543229','citystores@gmail.com'),
(321,'Home Tech','9876543230','hometech@gmail.com'),
(322,'Electro Mart','9876543231','electromart@gmail.com'),
(323,'Sri Traders','9876543232','sritraders@gmail.com'),
(324,'Modern Appliances','9876543233','modern@gmail.com'),
(325,'Super Electronics','9876543234','superelectronics@gmail.com'),
(326,'Family Stores','9876543235','family@gmail.com'),
(327,'Quick Electronics','9876543236','quick@gmail.com'),
(328,'Unique Traders','9876543237','unique@gmail.com'),
(329,'Power Appliances','9876543238','power@gmail.com'),
(330,'Digital Stores','9876543239','digitalstores@gmail.com');

SELECT * FROM SELLER;



INSERT INTO Inventory VALUES
(1,102,302,15,'Available'),
(2,103,303,10,'Available'),
(3,104,304,12,'Available'),
(4,105,301,25,'Available'),
(5,106,302,20,'Available'),
(6,107,303,15,'Available'),
(7,109,301,18,'Available'),
(8,110,302,15,'Available'),
(9,111,303,25,'Available'),
(10,112,304,20,'Available'),
(11,113,301,15,'Available'),
(12,114,302,12,'Available'),
(13,115,303,10,'Available'),
(14,116,304,15,'Available'),
(15,117,301,20,'Available'),
(16,118,302,12,'Available'),
(17,119,303,10,'Available'),
(18,120,304,8,'Available'),
(19,126,302,30,'Available'),
(20,127,303,35,'Available'),
(21,128,304,20,'Available'),
(22,129,301,15,'Available'),
(23,130,302,10,'Available');

SELECT * FROM Inventory;

UPDATE Product
SET Stock = 0
WHERE ProductID = 102;

UPDATE Product
SET Stock = 0
WHERE ProductID = 110;

UPDATE Product
SET Stock = 0
WHERE ProductID = 120;

UPDATE Seller
SET Phone = '8896758432',
    Email = 'dailynew@gmail.com'
WHERE SellerID = 302;

UPDATE Seller
SET Phone = '7659754757',
    Email = 'superstore@gmail.com'
WHERE SellerID = 303;

UPDATE Seller
SET Phone = '9998768672',
    Email = 'powerstore@gmail.com'
WHERE SellerID = 329;

UPDATE Inventory
SET Stock = 0,
    Status = 'Unavailable'
WHERE InventoryID = 2;

UPDATE Inventory
SET Stock = 0,
    Status = 'Unavailable'
WHERE InventoryID = 4;

UPDATE Inventory
SET Stock = 0,
    Status = 'Unavailable'
WHERE InventoryID = 10;

DELETE FROM Inventory
WHERE InventoryID = 27;

DELETE FROM Inventory
WHERE InventoryID = 16;

SELECT * FROM Inventory
WHERE Stock < 20;

SELECT * FROM Inventory
WHERE Stock > 20;

SELECT * FROM Inventory
WHERE Stock = 0;

SELECT * FROM Inventory
WHERE Status = 'Unavailable';

SELECT * FROM Inventory
WHERE Status = 'Available';

SELECT COUNT(*)FROM Inventory
WHERE Status = "Unavailable";


SELECT COUNT(*) FROM Inventory
WHERE Status = "Unavailable";

SELECT * FROM Inventory
ORDER BY Stock Desc;
