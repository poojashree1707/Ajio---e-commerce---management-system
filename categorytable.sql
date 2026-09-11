CREATE TABLE AjioCategory (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(50) NOT NULL,
    Category_Description VARCHAR2(100)
);

INSERT INTO AjioCategory VALUES
(1, 'Men Fashion', 'Men clothing and accessories');

INSERT INTO AjioCategory VALUES
(2, 'Women Fashion', 'Women clothing and accessories');

INSERT INTO AjioCategory VALUES
(3, 'Footwear', 'Shoes, sandals and footwear');

INSERT INTO AjioCategory VALUES
(4, 'Accessories', 'Fashion accessories');

INSERT INTO AjioCategory VALUES
(5, 'Kids Fashion', 'Clothing and accessories for kids');

COMMIT;

SELECT * FROM AjioCategory;