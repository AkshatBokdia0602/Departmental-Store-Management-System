-- Database for Project
CREATE DATABASE IF NOT EXISTS DSMS;


-- Use Created Database
USE DSMS;


-- Table for Employee Records
CREATE TABLE IF NOT EXISTS EMPLOYEE (
    ADMISSION_ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    GENDER CHAR(1),
    MARITAL_STATUS CHAR(1),
    SALARY INT,
    DOB DATE,
    HIRED_DATE DATE,
    PROFESSION VARCHAR(20)
);

INSERT INTO EMPLOYEE VALUES 
(1,'ASHOK','M','S',80000,'1980-02-04',NULL,'OWNER'),
(2,'PRADEEP','M','S',50000,'1982-11-05','2020-07-12','RESTOCKER'),
(3,'KATHY','F','S',45000,'1989-07-27','2020-06-13','CASHIER'),
(4,'NAVEEN','M','M',45000,'1989-04-30','2020-07-30','CASHIER'),
(5,'MARIA','F','M',30000,'1989-11-05','2020-09-02','HELPER'),
(6,'SHINY','F','M',30000,'1991-11-05','2020-11-25','HELPER'),
(7,'STELLA','F','M',30000,'1988-11-05','2020-12-09','HELPER'),
(8,'KISHORE','M','S',30000,'1988-05-14','2020-02-15','HELPER'),
(9,'DILLIBABU','M','M',25000,'1975-11-05','2020-05-02','GUARD'),
(10,'NAKESH','M','S',20000,'1988-11-05','2020-11-09','GUARD');


-- Table for Wholesalers
CREATE TABLE IF NOT EXISTS WHOLESALERS (
    NAME VARCHAR(20),
    ADDRESS VARCHAR(80),
    CONTACT_NO CHAR(10),
    MAIL_ID VARCHAR(30),
    SUPPLY VARCHAR(20)
);

INSERT INTO WHOLESALERS VALUES 
('KANAN','10/2,Keti Street,Egmore','7834747473','shettystores@gmail.com','GROCERY'),
('SARAVANA','1st Street,H.M Nagar,Nungambakkam','9876785432','skmarket@gmail.com','DAIRY/BAKERY'),
('BADHUR','2/3,Reddy Street,KK Nagar','8976543567','kohinoor@gmail.com','CEREALS/SPICES'),
('VISHAKAR','2nd Street,PK Garden,Parrys','7837683456','apnistores@gmail.com','SNACKS/BEVERAGES'),
('SWETHA','10,R.M Street,Alsamall Nagar','9834546773','swethahelps@gmail.com','HYGIENE/BEAUTY');


-- Table for Attendance Tracking
CREATE TABLE IF NOT EXISTS ATTENDANCE (
    NAME VARCHAR(30),
    DAYS_WORKING INT,
    DAYS_PRESENT INT,
    DAYS_ABSENT INT
);

INSERT INTO ATTENDANCE VALUES
('ASHOK',254,1,0), ('PRADEEP',254,1,0), ('KATHY',254,1,0), ('NAVEEN',254,1,0), ('MARIA',254,1,0), 
('SHINY',254,1,0), ('STELLA',254,1,0), ('KISHORE',254,1,0), ('DILLIBABU',254,1,0), ('NAKESH',254,1,0);


-- Table for Stock Items
CREATE TABLE IF NOT EXISTS STOCKLIST (
    SNO CHAR(4) PRIMARY KEY,
    ITEM_NAME VARCHAR(50),
    PRICE FLOAT,
    TYPE VARCHAR(20)
);

INSERT INTO STOCKLIST VALUES 
('A101','APPLE SHIMLA(1 KG)',160,'GROCERY'), ('A102','ORANGE(1 KG)',60,'GROCERY'), ('A103','BANANA(1 DOZEN)',110,'GROCERY'),
('A104','GRAPES(1 KG)',120,'GROCERY'), ('A105','WATERMELON(1 PIECE)',65,'GROCERY'), ('A106','POTATO(1 KG)',35,'GROCERY'),
('A107','ONION(1 KG)',30,'GROCERY'), ('A108','TOMATO(1 KG)',50,'GROCERY'), ('A109','LADYS FINGER(1 KG)',30,'GROCERY'),
('A110','CAULIFLOWER(1 PIECE)',35,'GROCERY'), ('B101','MILK(1 LITRE)',48,'DAIRY/BAKERY'), ('B102','PANEER(200g)',80,'DAIRY/BAKERY'),
('B103','CHEESE(500 g)',245,'DAIRY/BAKERY'), ('B104','GHEE(1 LITRE)',510,'DAIRY/BAKERY'), ('B105','BREAD(1 PACK)',33,'DAIRY/BAKERY'),
('C101','VEGETABLE OIL(1 LITRE)',369,'CEREALS/SPICES'), ('C102','OLIVE OIL(1 LITRE)',499,'CEREALS/SPICES'), ('C103','CHILLI POWDER(100 g)',45,'CEREALS/SPICES'),
('C104','TURMERIC POWDER(100 g)',45,'CEREALS/SPICES'), ('C105','ELAICHI(100g)',471,'CEREALS/SPICES'), ('C106','RICE(1 KG)',50,'CEREALS/SPICES'),
('C107','WHEAT GRAIN(1 KG)',26,'CEREALS/SPICES'), ('C108','MOONG DAL(1 KG)',148,'CEREALS/SPICES'), ('C109','TOOR DAL(1 KG)',167,'CEREALS/SPICES'),
('C110','SAFFRON(1 g)',60,'CEREALS/SPICES'), ('D101','NESCAFE COFFEE(100 g)',230,'SNACKS/BEVERAGES'), ('D102','TATA TEA(100 g)',35,'SNACKS/BEVERAGES'), 
('D103','HORLICKS(250 g)',230,'SNACKS/BEVERAGES'), ('D104','BOOST(250 g)',232,'SNACKS/BEVERAGES'), ('D105','SPRITE(150 mL)',35,'SNACKS/BEVERAGES'), 
('D106','PEPSI(150 mL)',30,'SNACKS/BEVERAGES'), ('D107','HIDE AND SEEK(120 g)',35,'SNACKS/BEVERAGES'), ('D108','LAYS(1 PACK)',10,'SNACKS/BEVERAGES'),
('D109','DORITOS NACHOS(1 PACK)',25,'SNACKS/BEVERAGES'), ('D110','PARLE-G(1 PACK)',10,'SNACKS/BEVERAGES'), ('E101','HAMAM SOAP(1 PIECE)',25,'HYGIENE/BEAUTY'),
('E102','CINTHOL SOAP(1 PIECE)',25,'HYGIENE/BEAUTY'), ('E103','HEAD AND SHOULDERS(72 mL)',60,'HYGIENE/BEAUTY'), ('E104','NIVEA FACE WASH(100 mL)',213,'HYGIENE/BEAUTY'),
('E105','SURF EXCEL(1 KG)',180,'HYGIENE/BEAUTY'), ('E106','HARPIC(1 L)',168,'HYGIENE/BEAUTY'), ('E107','COLGATE TOOTHPASTE(100 g)',65,'HYGIENE/BEAUTY'),
('E108','COLGATE TOOTHBRUSH(1 PIECE)',23,'HYGIENE/BEAUTY'), ('E109','DETTOL SANITIZER(1 PIECE)',45,'HYGIENE/BEAUTY'), ('E110','TOOTHPICK(1 PIECE)',35,'HYGIENE/BEAUTY');


-- Table to Track Stock Quantity
CREATE TABLE IF NOT EXISTS STOCKLIST_VOLUME (
    SNO CHAR(4) PRIMARY KEY,
    ITEM_NAME VARCHAR(50),
    PRICE FLOAT,
    TYPE VARCHAR(20),
    QUANTITY INT
);

INSERT INTO STOCKLIST_VOLUME VALUES 
('A101','APPLE SHIMLA(1 KG)',160,'GROCERY',15), ('A102','ORANGE(1 KG)',60,'GROCERY',20), ('A103','BANANA(1 DOZEN)',110,'GROCERY',20),
('A104','GRAPES(1 KG)',120,'GROCERY',20), ('A105','WATERMELON(1 PIECE)',65,'GROCERY',25), ('A106','POTATO(1 KG)',35,'GROCERY',40),
('A107','ONION(1 KG)',30,'GROCERY',10), ('A108','TOMATO(1 KG)',50,'GROCERY',60), ('A109','LADYS FINGER(1 KG)',30,'GROCERY',50), 
('A110','CAULIFLOWER(1 PIECE)',35,'GROCERY',20), ('B101','MILK(1 LITRE)',48,'DAIRY/BAKERY',30), ('B102','PANEER(200g)',80,'DAIRY/BAKERY',30),
('B103','CHEESE(500 g)',245,'DAIRY/BAKERY',25), ('B104','GHEE(1 LITRE)',510,'DAIRY/BAKERY',25), ('B105','BREAD(1 PACK)',33,'DAIRY/BAKERY',30),
('C101','VEGETABLE OIL(1 LITRE)',369,'CEREALS/SPICES',30), ('C102','OLIVE OIL(1 LITRE)',499,'CEREALS/SPICES',20), ('C103','CHILLI POWDER(100 g)',45,'CEREALS/SPICES',25),
('C104','TURMERIC POWDER(100 g)',45,'CEREALS/SPICES',25), ('C105','ELAICHI(100g)',471,'CEREALS/SPICES',40), ('C106','RICE(1 KG)',50,'CEREALS/SPICES',30), 
('C107','WHEAT GRAIN(1 KG)',26,'CEREALS/SPICES',30), ('C108','MOONG DAL(1 KG)',148,'CEREALS/SPICES',30), ('C109','TOOR DAL(1 KG)',167,'CEREALS/SPICES',25),
('C110','SAFFRON(1 g)',60,'CEREALS/SPICES',15), ('D101','NESCAFE COFFEE(100 g)',230,'SNACKS/BEVERAGES',20), ('D102','TATA TEA(100 g)',35,'SNACKS/BEVERAGES',30),
('D103','HORLICKS(250 g)',230,'SNACKS/BEVERAGES',30), ('D104','BOOST(250 g)',232,'SNACKS/BEVERAGES',25), ('D105','SPRITE(150 mL)',35,'SNACKS/BEVERAGES',20), 
('D106','PEPSI(150 mL)',30,'SNACKS/BEVERAGES',20), ('D107','HIDE AND SEEK(120 g)',35,'SNACKS/BEVERAGES',35), ('D108','LAYS(1 PACK)',10,'SNACKS/BEVERAGES',20), 
('D109','DORITOS NACHOS(1 PACK)',25,'SNACKS/BEVERAGES',20), ('D110','PARLE-G(1 PACK)',10,'SNACKS/BEVERAGES',45), ('E101','HAMAM SOAP(1 PIECE)',25,'HYGIENE/BEAUTY',25),
('E102','CINTHOL SOAP(1 PIECE)',25,'HYGIENE/BEAUTY',25), ('E103','HEAD AND SHOULDERS(72 mL)',60,'HYGIENE/BEAUTY',30), ('E104','NIVEA FACE WASH(100 mL)',213,'HYGIENE/BEAUTY',30),
('E105','SURF EXCEL(1 KG)',180,'HYGIENE/BEAUTY',25), ('E106','HARPIC(1 L)',168,'HYGIENE/BEAUTY',40), ('E107','COLGATE TOOTHPASTE(100 g)',65,'HYGIENE/BEAUTY',30),
('E108','COLGATE TOOTHBRUSH(1 PIECE)',23,'HYGIENE/BEAUTY',30), ('E109','DETTOL SANITIZER(1 PIECE)',45,'HYGIENE/BEAUTY',30), ('E110','TOOTHPICK(1 PIECE)',35,'HYGIENE/BEAUTY',30);