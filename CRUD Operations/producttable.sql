CREATE TABLE AjioProduct (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Category_ID NUMBER,
    Price NUMBER(10,2),
    Stock NUMBER,
    CONSTRAINT fk_ajio_category
    FOREIGN KEY (Category_ID)
    REFERENCES AjioCategory(Category_ID)
);

INSERT INTO AjioProduct VALUES
(101, 'Men Casual Shirt', 1, 999.00, 50);

INSERT INTO AjioProduct VALUES
(102, 'Women Kurti', 2, 799.00, 40);

INSERT INTO AjioProduct VALUES
(103, 'Running Shoes', 3, 1499.00, 30);

INSERT INTO AjioProduct VALUES
(104, 'Leather Wallet', 4, 599.00, 25);

INSERT INTO AjioProduct VALUES
(105, 'Kids T-Shirt', 5, 499.00, 35);

COMMIT;

SELECT * FROM AjioProduct;

UPDATE AjioProduct
SET Price = 1099
WHERE Product_ID = 101;

UPDATE AjioProduct
SET Stock = 60
WHERE Product_ID = 103;

COMMIT;

DELETE FROM AjioProduct
WHERE Product_ID = 105;

DELETE FROM AjioProduct
WHERE Product_ID = 104;

COMMIT;

SELECT
    c.Category_Name,
    p.Product_ID,
    p.Product_Name,
    p.Price,
    p.Stock
FROM AjioCategory c
JOIN AjioProduct p
ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name;

SELECT
    c.Category_Name,
    COUNT(p.Product_ID) AS Total_Products
FROM AjioCategory c
LEFT JOIN AjioProduct p
ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name
ORDER BY c.Category_Name;