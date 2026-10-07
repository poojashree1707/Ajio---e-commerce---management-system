SQL> CREATE TABLE REVIEW (
  2      REVIEW_ID NUMBER(5) PRIMARY KEY,
  3      CUSTOMER_ID NUMBER(5),
  4      PRODUCT_ID NUMBER(5),
  5      RATING NUMBER(1) CHECK (RATING BETWEEN 1 AND 5),
  6      REVIEW_TEXT VARCHAR2(500) NOT NULL,
  7      REVIEW_DATE DATE,
  8      CONSTRAINT FK_REVIEW_CUSTOMER
  9          FOREIGN KEY (CUSTOMER_ID)
 10          REFERENCES customer1(customer_id)
 11  );

 Table created.

SQL> INSERT INTO REVIEW VALUES
  2  (1,101,101,5,'Excellent product and very good quality.',DATE '2026-08-01');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (2,102,102,4,'Good product with nice quality.',DATE '2026-08-02');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (3,103,103,5,'Very comfortable and worth the price.',DATE '2026-08-03');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (4,104,104,3,'Product is good but delivery was late.',DATE '2026-08-04');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (5,105,105,4,'Good quality and attractive design.',DATE '2026-08-05');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (6,106,106,5,'Excellent product. I really liked it.',DATE '2026-08-06');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (7,107,107,4,'Nice product and good value for money.',DATE '2026-08-07');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (8,108,108,3,'Average product but the quality is acceptable.',DATE '2026-08-08');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (9,109,109,5,'Amazing product and fast delivery.',DATE '2026-08-09');

1 row created.

SQL> INSERT INTO REVIEW VALUES
  2  (10,110,110,4,'Good product and satisfied with the purchase.',DATE '2026-08-10');

1 row created.

SQL> SELECT * FROM REVIEW;

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1         101        101          5
Excellent product and very good quality.
01-AUG-26

         2         102        102          4
Good product with nice quality.
02-AUG-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------

         3         103        103          5
Very comfortable and worth the price.
03-AUG-26

         4         104        104          3
Product is good but delivery was late.

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
04-AUG-26

         5         105        105          4
Good quality and attractive design.
05-AUG-26

         6         106        106          5

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Excellent product. I really liked it.
06-AUG-26

         7         107        107          4
Nice product and good value for money.
07-AUG-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         8         108        108          3
Average product but the quality is acceptable.
08-AUG-26

         9         109        109          5
Amazing product and fast delivery.
09-AUG-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------

        10         110        110          4
Good product and satisfied with the purchase.
10-AUG-26


10 rows selected.

SQL> SELECT c.customer_id,
  2         c.first_name,
  3         r.rating,
  4         rv.review_text
  5  FROM customer1 c
  6  JOIN RATING r
  7  ON c.customer_id = r.customer_id
  8  JOIN REVIEW rv
  9  ON c.customer_id = rv.customer_id;

CUSTOMER_ID FIRST_NAME                         RATING
----------- ------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
        101 Pooja                                   5
Excellent product and very good quality.

        102 Rahul                                   4
Good product with nice quality.

        103 Ananya                                  5
Very comfortable and worth the price.


CUSTOMER_ID FIRST_NAME                         RATING
----------- ------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
        104 Arjun                                   3
Product is good but delivery was late.

        105 Priya                                   4
Good quality and attractive design.

        106 Karthik                                 5
Excellent product. I really liked it.


CUSTOMER_ID FIRST_NAME                         RATING
----------- ------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
        107 Meena                                   4
Nice product and good value for money.

        108 Vignesh                                 3
Average product but the quality is acceptable.

        109 Divya                                   5
Amazing product and fast delivery.


CUSTOMER_ID FIRST_NAME                         RATING
----------- ------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
        110 Sanjay                                  4
Good product and satisfied with the purchase.


10 rows selected.
