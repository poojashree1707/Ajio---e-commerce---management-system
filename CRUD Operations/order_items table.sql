CREATE TABLE Order_Items (
    Order_Item_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Product_ID NUMBER,
    Quantity NUMBER,
    Unit_Price NUMBER(10,2),
    Total_Price NUMBER(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

INSERT INTO Order_Items VALUES
(1, 101, 201, 2, 799.00, 1598.00);

INSERT INTO Order_Items VALUES
(2, 101, 202, 1, 901.00, 901.00);

INSERT INTO Order_Items VALUES
(3, 102, 203, 1, 1799.00, 1799.00);

INSERT INTO Order_Items VALUES
(4, 103, 204, 2, 1299.50, 2599.00);

INSERT INTO Order_Items VALUES
(5, 103, 205, 1, 700.00, 700.00);

INSERT INTO Order_Items VALUES
(6, 104, 206, 1, 1499.00, 1499.00);

INSERT INTO Order_Items VALUES
(7, 105, 207, 2, 999.50, 1999.00);

INSERT INTO Order_Items VALUES
(8, 105, 208, 1, 900.00, 900.00);

COMMIT;
