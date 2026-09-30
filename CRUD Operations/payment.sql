SQL> CREATE TABLE AjioPayment (
  2      Payment_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Payment_Method VARCHAR2(30),
  5      Payment_Date DATE,
  6      Payment_Status VARCHAR2(20),
  7      Amount NUMBER(10,2),
  8      Transaction_ID VARCHAR2(50)
  9  );

Table created.

SQL> INSERT INTO AjioPayment VALUES
  2  (501, 101, 'UPI', TO_DATE('25-09-2026','DD-MM-YYYY'), 'Successful', 2499.00, 'TXN1001');

1 row created.

SQL>
SQL> INSERT INTO AjioPayment VALUES
  2  (502, 102, 'Credit Card', TO_DATE('25-09-2026','DD-MM-YYYY'), 'Successful', 1799.00, 'TXN1002');

1 row created.

SQL>
SQL> INSERT INTO AjioPayment VALUES
  2  (503, 103, 'Debit Card', TO_DATE('26-09-2026','DD-MM-YYYY'), 'Failed', 3299.00, 'TXN1003');

1 row created.

SQL>
SQL> INSERT INTO AjioPayment VALUES
  2  (504, 104, 'Cash on Delivery', TO_DATE('26-09-2026','DD-MM-YYYY'), 'Successful', 1499.00, 'TXN1004');

1 row created.

SQL>
SQL> INSERT INTO AjioPayment VALUES
  2  (505, 105, 'UPI', TO_DATE('27-09-2026','DD-MM-YYYY'), 'Successful', 2899.00, 'TXN1005');

1 row created.

SQL>
SQL> SELECT * FROM AjioPayment;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
       501        101 UPI                            25-SEP-26
Successful                 2499
TXN1001

       502        102 Credit Card                    25-SEP-26
Successful                 1799
TXN1002

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------

       503        103 Debit Card                     26-SEP-26
Failed                     3299
TXN1003

       504        104 Cash on Delivery               26-SEP-26
Successful                 1499

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
TXN1004

       505        105 UPI                            27-SEP-26
Successful                 2899
TXN1005


SQL> SELECT * FROM AjioPayment
  2  WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
       501        101 UPI                            25-SEP-26
Successful                 2499
TXN1001

       502        102 Credit Card                    25-SEP-26
Successful                 1799
TXN1002

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------

       504        104 Cash on Delivery               26-SEP-26
Successful                 1499
TXN1004

       505        105 UPI                            27-SEP-26
Successful                 2899

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
TXN1005


SQL> SELECT Payment_Method, COUNT(*) AS Total_Transactions
  2  FROM AjioPayment
  3  GROUP BY Payment_Method;

PAYMENT_METHOD                 TOTAL_TRANSACTIONS
------------------------------ ------------------
UPI                                             2
Credit Card                                     1
Debit Card                                      1
Cash on Delivery                                1

SQL> SELECT SUM(Amount) AS Total_Amount_Paid
  2  FROM AjioPayment
  3  WHERE Payment_Status = 'Successful';

TOTAL_AMOUNT_PAID
-----------------
             8696



SQL> SELECT P.Payment_ID,
  2         P.Order_ID,
  3         O.Customer_ID,
  4         P.Payment_Method,
  5         P.Payment_Date,
  6         P.Payment_Status,
  7         P.Amount,
  8         P.Transaction_ID
  9  FROM AjioPayment P
 10  JOIN Orders O
 11  ON P.Order_ID = O.Order_ID
 12  ORDER BY P.Payment_Date;

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
       501        101           1 UPI                            25-SEP-26
Successful                 2499
TXN1001

       502        102           2 Credit Card                    25-SEP-26
Successful                 1799
TXN1002

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------

       503        103           3 Debit Card                     26-SEP-26
Failed                     3299
TXN1003

       504        104           4 Cash on Delivery               26-SEP-26
Successful                 1499

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD                 PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
TRANSACTION_ID
--------------------------------------------------
TXN1004

       505        105           5 UPI                            27-SEP-26
Successful                 2899
TXN1005


SQL>
