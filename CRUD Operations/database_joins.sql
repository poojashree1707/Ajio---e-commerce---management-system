SQL> CREATE TABLE Customer (
  2      Customer_ID NUMBER PRIMARY KEY,
  3      First_Name VARCHAR2(30),
  4      Last_Name VARCHAR2(30),
  5      Email VARCHAR2(100),
  6      Phone_Number VARCHAR2(15),
  7      Password VARCHAR2(255),
  8      Gender VARCHAR2(10),
  9      Date_of_Birth DATE,
 10      Address VARCHAR2(150),
 11      City VARCHAR2(40),
 12      State VARCHAR2(40),
 13      Pincode VARCHAR2(10),
 14      Registration_Date DATE
 15  );

Table created.

SQL> INSERT INTO Customer VALUES
  2  (1, 'Pooja', 'Kumar', 'pooja@gmail.com', '9876543210',
  3   'pass123', 'Female', DATE '2005-05-10',
  4   'Anna Nagar', 'Chennai', 'Tamil Nadu', '600001',
  5   DATE '2026-01-10');

1 row created.

SQL>
SQL> INSERT INTO Customer VALUES
  2  (2, 'Rahul', 'Ravi', 'rahul@gmail.com', '9876543211',
  3   'pass456', 'Male', DATE '2004-08-15',
  4   'MG Road', 'Bangalore', 'Karnataka', '560001',
  5   DATE '2026-02-12');

1 row created.

SQL>
SQL> INSERT INTO Customer VALUES
  2  (3, 'Ananya', 'Devi', 'ananya@gmail.com', '9876543212',
  3   'pass789', 'Female', DATE '2005-11-20',
  4   'RS Puram', 'Coimbatore', 'Tamil Nadu', '641001',
  5   DATE '2026-03-05');

1 row created.

SQL>
SQL> INSERT INTO Customer VALUES
  2  (4, 'Arjun', 'Raj', 'arjun@gmail.com', '9876543213',
  3   'pass111', 'Male', DATE '2004-03-12',
  4   'Gandhi Road', 'Madurai', 'Tamil Nadu', '625001',
  5   DATE '2026-04-01');

1 row created.

SQL>
SQL> INSERT INTO Customer VALUES
  2  (5, 'Priya', 'S', 'priya@gmail.com', '9876543214',
  3   'pass222', 'Female', DATE '2005-07-25',
  4   'Anna Street', 'Hyderabad', 'Telangana', '500001',
  5   DATE '2026-05-10');

1 row created.

SQL> CREATE TABLE Product (
  2      Product_ID NUMBER PRIMARY KEY,
  3      Product_Name VARCHAR2(100),
  4      Brand VARCHAR2(50),
  5      Category_ID NUMBER,
  6      Description VARCHAR2(200),
  7      Price NUMBER(10,2),
  8      Discount NUMBER(5,2),
  9      Stock_Quantity NUMBER,
 10      Product_Size VARCHAR2(20),
 11      Color VARCHAR2(30),
 12      Image_URL VARCHAR2(200),
 13      Rating NUMBER(2,1)
 14  );

Table created.

SQL> INSERT INTO Product VALUES
  2  (101, 'Casual Shirt', 'Roadster', 1, 'Cotton shirt',
  3   999, 10, 50, 'M', 'Blue', 'shirt.jpg', 4.2);

1 row created.

SQL>
SQL> INSERT INTO Product VALUES
  2  (102, 'Women Kurti', 'Biba', 2, 'Printed kurti',
  3   799, 5, 40, 'M', 'Pink', 'kurti.jpg', 4.5);

1 row created.

SQL>
SQL> INSERT INTO Product VALUES
  2  (103, 'Running Shoes', 'Puma', 3, 'Sports shoes',
  3   1499, 15, 30, '8', 'Black', 'shoes.jpg', 4.3);

1 row created.

SQL>
SQL> INSERT INTO Product VALUES
  2  (104, 'Leather Wallet', 'Wildcraft', 4, 'Leather wallet',
  3   599, 5, 25, 'Free Size', 'Brown', 'wallet.jpg', 4.0);

1 row created.

SQL>
SQL> INSERT INTO Product VALUES
  2  (105, 'Kids T-Shirt', 'Allen Solly', 5, 'Cotton T-shirt',
  3   499, 10, 35, 'S', 'Yellow', 'kids.jpg', 4.1);

1 row created.

SQL> CREATE TABLE Orders (
  2      Order_ID NUMBER PRIMARY KEY,
  3      Customer_ID NUMBER,
  4      Order_Date DATE,
  5      Total_Amount NUMBER(10,2),
  6      Order_Status VARCHAR2(30),
  7      Shipping_Address VARCHAR2(200),
  8      Delivery_Date DATE,
  9      FOREIGN KEY (Customer_ID)
 10          REFERENCES Customer(Customer_ID)
 11  );

Table created.

SQL> INSERT INTO Orders VALUES
  2  (101, 1, DATE '2026-09-10', 2499, 'Delivered',
  3   'Chennai, Tamil Nadu', DATE '2026-09-14');

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (102, 2, DATE '2026-09-11', 1799, 'Shipped',
  3   'Bangalore, Karnataka', DATE '2026-09-15');

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (103, 3, DATE '2026-09-12', 3299, 'Processing',
  3   'Coimbatore, Tamil Nadu', DATE '2026-09-17');

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (104, 4, DATE '2026-09-13', 1499, 'Delivered',
  3   'Madurai, Tamil Nadu', DATE '2026-09-17');

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (105, 5, DATE '2026-09-14', 2899, 'Shipped',
  3   'Hyderabad, Telangana', DATE '2026-09-18');

1 row created.

SQL> CREATE TABLE Payment (
  2      Payment_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Payment_Method VARCHAR2(30),
  5      Payment_Date DATE,
  6      Payment_Status VARCHAR2(20),
  7      Amount NUMBER(10,2),
  8      Transaction_ID VARCHAR2(50),
  9      FOREIGN KEY (Order_ID)
 10          REFERENCES Orders(Order_ID)
 11  );

Table created.

SQL> INSERT INTO Payment VALUES
  2  (501, 101, 'UPI', DATE '2026-09-25',
  3   'Successful', 2499, 'TXN1001');

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (502, 102, 'Credit Card', DATE '2026-09-25',
  3   'Successful', 1799, 'TXN1002');

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (503, 103, 'Debit Card', DATE '2026-09-26',
  3   'Failed', 3299, 'TXN1003');

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (504, 104, 'Cash on Delivery', DATE '2026-09-26',
  3   'Successful', 1499, 'TXN1004');

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (505, 105, 'UPI', DATE '2026-09-27',
  3   'Successful', 2899, 'TXN1005');

1 row created.

SQL> SELECT Customer.Customer_ID,
  2         Customer.First_Name,
  3         Orders.Order_ID,
  4         Orders.Total_Amount
  5  FROM Customer
  6  INNER JOIN Orders
  7  ON Customer.Customer_ID = Orders.Customer_ID;

CUSTOMER_ID FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
----------- ------------------------------ ---------- ------------
          1 Pooja                                 101         2499
          2 Rahul                                 102         1799
          3 Ananya                                103         3299
          4 Arjun                                 104         1499
          5 Priya                                 105         2899

SQL> SELECT Customer.Customer_ID,
  2         Customer.First_Name,
  3         Orders.Order_ID,
  4         Orders.Total_Amount
  5  FROM Customer
  6  LEFT JOIN Orders
  7  ON Customer.Customer_ID = Orders.Customer_ID;

CUSTOMER_ID FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
----------- ------------------------------ ---------- ------------
          1 Pooja                                 101         2499
          2 Rahul                                 102         1799
          3 Ananya                                103         3299
          4 Arjun                                 104         1499
          5 Priya                                 105         2899

SQL> SELECT Customer.First_Name,
  2         Orders.Order_ID,
  3         Orders.Total_Amount,
  4         Orders.Order_Status
  5  FROM Customer
  6  RIGHT JOIN Orders
  7  ON Customer.Customer_ID = Orders.Customer_ID;

FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
------------------------------ ---------- ------------
ORDER_STATUS
------------------------------
Pooja                                 101         2499
Delivered

Rahul                                 102         1799
Shipped

Ananya                                103         3299
Processing


FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
------------------------------ ---------- ------------
ORDER_STATUS
------------------------------
Arjun                                 104         1499
Delivered

Priya                                 105         2899
Shipped


SQL> SELECT Customer.First_Name,
  2         Orders.Order_ID,
  3         Orders.Order_Date,
  4         Orders.Total_Amount,
  5         Orders.Order_Status,
  6         Payment.Payment_Method,
  7         Payment.Payment_Status
  8  FROM Customer
  9  JOIN Orders
 10  ON Customer.Customer_ID = Orders.Customer_ID
 11  JOIN Payment
 12  ON Orders.Order_ID = Payment.Order_ID;

FIRST_NAME                       ORDER_ID ORDER_DAT TOTAL_AMOUNT
------------------------------ ---------- --------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS
--------------------
Pooja                                 101 10-SEP-26         2499
Delivered                      UPI
Successful

Rahul                                 102 11-SEP-26         1799
Shipped                        Credit Card
Successful

FIRST_NAME                       ORDER_ID ORDER_DAT TOTAL_AMOUNT
------------------------------ ---------- --------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS
--------------------

Ananya                                103 12-SEP-26         3299
Processing                     Debit Card
Failed

Arjun                                 104 13-SEP-26         1499
Delivered                      Cash on Delivery

FIRST_NAME                       ORDER_ID ORDER_DAT TOTAL_AMOUNT
------------------------------ ---------- --------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS
--------------------
Successful

Priya                                 105 14-SEP-26         2899
Shipped                        UPI
Successful


SQL> SELECT Customer.Customer_ID,
  2         Customer.First_Name,
  3         Orders.Order_ID,
  4         Orders.Order_Date,
  5         Orders.Total_Amount,
  6         Orders.Order_Status
  7  FROM Customer
  8  JOIN Orders
  9  ON Customer.Customer_ID = Orders.Customer_ID
 10  ORDER BY Customer.Customer_ID;

CUSTOMER_ID FIRST_NAME                       ORDER_ID ORDER_DAT TOTAL_AMOUNT
----------- ------------------------------ ---------- --------- ------------
ORDER_STATUS
------------------------------
          1 Pooja                                 101 10-SEP-26         2499
Delivered

          2 Rahul                                 102 11-SEP-26         1799
Shipped

          3 Ananya                                103 12-SEP-26         3299
Processing


CUSTOMER_ID FIRST_NAME                       ORDER_ID ORDER_DAT TOTAL_AMOUNT
----------- ------------------------------ ---------- --------- ------------
ORDER_STATUS
------------------------------
          4 Arjun                                 104 13-SEP-26         1499
Delivered

          5 Priya                                 105 14-SEP-26         2899
Shipped


SQL> SELECT Customer.First_Name,
  2         Orders.Order_ID,
  3         Orders.Total_Amount,
  4         Orders.Order_Status,
  5         Payment.Payment_Method,
  6         Payment.Payment_Status,
  7         Payment.Transaction_ID
  8  FROM Customer
  9  JOIN Orders
 10  ON Customer.Customer_ID = Orders.Customer_ID
 11  JOIN Payment
 12  ON Orders.Order_ID = Payment.Order_ID;

FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
------------------------------ ---------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS       TRANSACTION_ID
-------------------- --------------------------------------------------
Pooja                                 101         2499
Delivered                      UPI
Successful           TXN1001

Rahul                                 102         1799
Shipped                        Credit Card
Successful           TXN1002

FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
------------------------------ ---------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS       TRANSACTION_ID
-------------------- --------------------------------------------------

Ananya                                103         3299
Processing                     Debit Card
Failed               TXN1003

Arjun                                 104         1499
Delivered                      Cash on Delivery

FIRST_NAME                       ORDER_ID TOTAL_AMOUNT
------------------------------ ---------- ------------
ORDER_STATUS                   PAYMENT_METHOD
------------------------------ ------------------------------
PAYMENT_STATUS       TRANSACTION_ID
-------------------- --------------------------------------------------
Successful           TXN1004

Priya                                 105         2899
Shipped                        UPI
Successful           TXN1005
