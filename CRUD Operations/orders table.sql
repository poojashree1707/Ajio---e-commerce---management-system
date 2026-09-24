CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE,
    Total_Amount NUMBER(10,2),
    Order_Status VARCHAR2(30),
    Shipping_Address VARCHAR2(200),
    Delivery_Date DATE
);

INSERT INTO Orders VALUES
(101, 1, TO_DATE('10-09-2026','DD-MM-YYYY'), 2499.00, 'Delivered', 'Chennai, Tamil Nadu', TO_DATE('14-09-2026','DD-MM-YYYY'));

INSERT INTO Orders VALUES
(102, 2, TO_DATE('11-09-2026','DD-MM-YYYY'), 1799.00, 'Shipped', 'Bangalore, Karnataka', TO_DATE('15-09-2026','DD-MM-YYYY'));

INSERT INTO Orders VALUES
(103, 3, TO_DATE('12-09-2026','DD-MM-YYYY'), 3299.00, 'Processing', 'Coimbatore, Tamil Nadu', TO_DATE('17-09-2026','DD-MM-YYYY'));

INSERT INTO Orders VALUES
(104, 4, TO_DATE('13-09-2026','DD-MM-YYYY'), 1499.00, 'Delivered', 'Madurai, Tamil Nadu', TO_DATE('17-09-2026','DD-MM-YYYY'));

INSERT INTO Orders VALUES
(105, 5, TO_DATE('14-09-2026','DD-MM-YYYY'), 2899.00, 'Shipped', 'Hyderabad, Telangana', TO_DATE('18-09-2026','DD-MM-YYYY'));

COMMIT;
