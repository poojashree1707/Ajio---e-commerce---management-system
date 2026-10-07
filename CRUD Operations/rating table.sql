SQL> CREATE TABLE RATING (
  2      RATING_ID NUMBER(5) PRIMARY KEY,
  3      CUSTOMER_ID NUMBER(5),
  4      PRODUCT_ID NUMBER(5),
  5      RATING NUMBER(1) CHECK (RATING BETWEEN 1 AND 5),
  6      RATING_DATE DATE,
  7      CONSTRAINT FK_RATING_CUSTOMER
  8          FOREIGN KEY (CUSTOMER_ID)
  9          REFERENCES customer1(customer_id)
 10  );

Table created.

SQL> INSERT INTO RATING VALUES
  2  (1,101,101,5,DATE '2026-08-01');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (2,102,102,4,DATE '2026-08-02');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (3,103,103,5,DATE '2026-08-03');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (4,104,104,3,DATE '2026-08-04');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (5,105,105,4,DATE '2026-08-05');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (6,106,106,5,DATE '2026-08-06');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (7,107,107,4,DATE '2026-08-07');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (8,108,108,3,DATE '2026-08-08');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (9,109,109,5,DATE '2026-08-09');

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (10,110,110,4,DATE '2026-08-10');

1 row created.

SQL> SELECT * FROM RATING;

 RATING_ID CUSTOMER_ID PRODUCT_ID     RATING RATING_DA
---------- ----------- ---------- ---------- ---------
         1         101        101          5 01-AUG-26
         2         102        102          4 02-AUG-26
         3         103        103          5 03-AUG-26
         4         104        104          3 04-AUG-26
         5         105        105          4 05-AUG-26
         6         106        106          5 06-AUG-26
         7         107        107          4 07-AUG-26
         8         108        108          3 08-AUG-26
         9         109        109          5 09-AUG-26
        10         110        110          4 10-AUG-26

10 rows selected.


SQL> SELECT product_id,
  2         AVG(rating) AS average_rating,
  3         COUNT(rating) AS total_ratings
  4  FROM RATING
  5  GROUP BY product_id;

PRODUCT_ID AVERAGE_RATING TOTAL_RATINGS
---------- -------------- -------------
       101              5             1
       102              4             1
       103              5             1
       104              3             1
       105              4             1
       106              5             1
       107              4             1
       108              3             1
       109              5             1
       110              4             1

10 rows selected.

SQL> SELECT product_id,
  2         AVG(rating) AS average_rating
  3  FROM RATING
  4  GROUP BY product_id
  5  HAVING AVG(rating) <= 4;

PRODUCT_ID AVERAGE_RATING
---------- --------------
       102              4
       104              3
       105              4
       107              4
       108              3
       110              4

6 rows selected.

SQL> SELECT p.product_name,
  2         ROUND(AVG(r.rating), 2) AS average_rating
  3  FROM RATING r
  4  JOIN AJIOProduct p
  5  ON r.product_id = p.product_id
  6  GROUP BY p.product_name
  7  HAVING AVG(r.rating) >= 4;

PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
Men Casual Shirt
             5

Women Kurti
             4

Running Shoes
             5
