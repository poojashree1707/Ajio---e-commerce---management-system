SQL> SELECT * FROM AjioProduct;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
       101
Men Casual Shirt
          1       1099         50

       102
Women Kurti
          2        799         40

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------

       103
Running Shoes
          3       1499         60


SQL> SELECT Product_Name, Price
  2  FROM AjioProduct
  3  WHERE Price > 800;

PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Men Casual Shirt
      1099

Running Shoes
      1499


SQL> SELECT Product_Name, Price
  2  FROM AjioProduct
  3  WHERE Price > 800;

PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Men Casual Shirt
      1099

Running Shoes
      1499


SQL> SELECT Product_Name, Price
  2  FROM AjioProduct
  3  ORDER BY Price ASC;

PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Women Kurti
       799

Men Casual Shirt
      1099

Running Shoes
      1499


SQL> SELECT DISTINCT Category_ID
  2  FROM AjioProduct;

CATEGORY_ID
-----------
          1
          2
          3

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM AjioProduct
  3  WHERE Category_ID = 2;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Women Kurti
       799


SQL> SELECT Product_Name, Stock
  2  FROM AjioProduct
  3  WHERE Stock > 0;

PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
Men Casual Shirt
        50

Women Kurti
        40

Running Shoes
        60


SQL> SELECT Customer_ID, Order_ID, Total_Amount, Order_Status
  2  FROM Orders;

CUSTOMER_ID   ORDER_ID TOTAL_AMOUNT ORDER_STATUS
----------- ---------- ------------ ------------------------------
          1        101         2499 Delivered
          2        102         1799 Delivered
          3        103         3299 Shipped
          4        104         1499 Delivered
          5        105         2899 Shipped

SQL> SELECT SUM(Amount) AS Total_Amount_Paid
  2  FROM AjioPayment
  3  WHERE Payment_Status = 'Successful';

TOTAL_AMOUNT_PAID
-----------------
             8696

SQL> SELECT c.Category_Name,
  2         COUNT(p.Product_ID) AS Total_Products
  3  FROM AjioCategory c
  4  LEFT JOIN AjioProduct p
  5  ON c.Category_ID = p.Category_ID
  6  GROUP BY c.Category_Name
  7  ORDER BY c.Category_Name;

CATEGORY_NAME                                      TOTAL_PRODUCTS
-------------------------------------------------- --------------
Accessories                                                     0
Footwear                                                        1
Kids Fashion                                                    0
Men Fashion                                                     1
Women Fashion                                                   1
         