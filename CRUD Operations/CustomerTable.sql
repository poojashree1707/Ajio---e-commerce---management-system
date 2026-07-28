CREATE TABLE customer1 (
    customer_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(30),
    last_name VARCHAR2(20),
    email VARCHAR2(50),
    phone_number VARCHAR2(15),
    password VARCHAR2(50),
    gender VARCHAR2(10),
    dob DATE,
    address VARCHAR2(50),
    city VARCHAR2(20),
    state VARCHAR2(20),
    pincode NUMBER(6),
    registration_date DATE
);

INSERT INTO customer1 VALUES (101,'Pooja','Sharma','pooja@gmail.com','9876543210','Pooja@123','Female',DATE '2006-05-15','12 Anna Nagar','Chennai','Tamil Nadu',600040,DATE '2026-07-28');

INSERT INTO customer1 VALUES (102,'Rahul','Kumar','rahul@gmail.com','9876501234','Rahul@123','Male',DATE '2005-11-20','45 MG Road','Bengaluru','Karnataka',560001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (103,'Ananya','Reddy','ananya@gmail.com','9876512345','Ananya@123','Female',DATE '2004-08-10','22 Lake View','Hyderabad','Telangana',500081,DATE '2026-07-28');

INSERT INTO customer1 VALUES (104,'Arjun','Singh','arjun@gmail.com','9876523456','Arjun@123','Male',DATE '2003-12-05','18 Green Park','Delhi','Delhi',110016,DATE '2026-07-28');

INSERT INTO customer1 VALUES (105,'Priya','Nair','priya@gmail.com','9876534567','Priya@123','Female',DATE '2005-03-18','10 Beach Road','Kochi','Kerala',682001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (106,'Karthik','Raj','karthik@gmail.com','9876541111','Karthik@123','Male',DATE '2004-01-12','25 Gandhi Street','Coimbatore','Tamil Nadu',641001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (107,'Meena','Lakshmi','meena@gmail.com','9876542222','Meena@123','Female',DATE '2005-06-25','14 Temple Road','Madurai','Tamil Nadu',625001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (108,'Vignesh','Kumar','vignesh@gmail.com','9876543333','Vignesh@123','Male',DATE '2003-09-08','8 Park Avenue','Salem','Tamil Nadu',636001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (109,'Divya','Suresh','divya@gmail.com','9876544444','Divya@123','Female',DATE '2004-11-30','31 River View','Trichy','Tamil Nadu',620001,DATE '2026-07-28');

INSERT INTO customer1 VALUES (110,'Sanjay','Prakash','sanjay@gmail.com','9876545555','Sanjay@123','Male',DATE '2005-02-14','17 Lake Road','Erode','Tamil Nadu',638001,DATE '2026-07-28');

UPDATE customer1
SET phone_number = '9999999999'
WHERE customer_id = 101;

DELETE FROM customer1
WHERE customer_id = 101;
