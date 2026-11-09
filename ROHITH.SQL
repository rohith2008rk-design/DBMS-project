CREATE DATABASE restaurant;
USE restaurant;
CREATE TABLE restaurant(
    reataurantID    INT PRIMARY KEY,
    restaurantname  VARCHAR(50),
    address     VARCHAR(50),
    contact     VARCHAR(50),
    rating     DECIMAL(3,1)
);

CREATE TABLE custmer(
    custmerID INT PRIMARY KEY,
    mobile BIGINT,
    email VARCHAR(50),
    address VARCHAR(50),
    name VARCHAR(50)
);

CREATE TABLE payment(
    paymentId INT PRIMARY KEY,
    amount INT,
    type VARCHAR(50),
    date DATE,
    discount DECIMAL(5,2)
);

CREATE TABLE food(
    foodID INT PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(50),
    QTY VARCHAR(50),
    price INT
);

CREATE TABLE staff(
    staffID INT PRIMARY KEY,
    name VARCHAR(50),
    orders INT,
    rating DECIMAL(2,1),
    salarey INT
);
INSERT INTO restaurant VALUES(2,'PP','MAIN ROAD','7799831318',3.1);
INSERT INTO restaurant VALUES(1,'GG','MAIN ROAD','8500899100',3.1);
 INSERT INTO restaurant VALUES(3,'JJ','MAIN ROAD','9985919479',3.1);
INSERT INTO restaurant VALUES(4,'KK','MAIN ROAD','8500899100',3.1);
INSERT INTO restaurant VALUES(5,'TT','MAIN ROAD','9000765879',3.1);
INSERT INTO custmer VALUES(1,8500899100,'PRABHAS@GMAIL.COM','OUT ROAD','PRABHAS');
INSERT INTO custmer VALUES(2,9985919479,'BUNNY@GMAIL.COM','OUT ROAD','BUNNY');
INSERT INTO custmer VALUES(3,8500899100,'DON@GMAIL.COM','OUT ROAD','DON');
INSERT INTO custmer VALUES(4,7799831318,'CHAITANYA@GMAIL.COM','OUT ROAD','CHAITANYA');
INSERT INTO custmer VALUES(5,8500899100,'RAM TEJA@GMAIL.COM','OUT ROAD','RAM TEJA');
INSERT INTO custmer VALUES(6,8500899100,'C UTTAM@GMAIL.COM','OUT ROAD','UTTAM');
INSERT INTO custmer VALUES(7,8500899100,'ROHAN@GMAIL.COM','OUT ROAD','ROHAN');
INSERT INTO custmer VALUES(8,9000765879,'KOWSHIK@GMAIL.COM','OUT ROAD','KOWSHIK');
INSERT INTO custmer VALUES(9,6281631198,'K NIKHIL@GMAIL.COM','OUT ROAD','K NIKHIL');
INSERT INTO custmer VALUES(10,6309845876,'BUNNY@GMAIL.COM','OUT ROAD','BUNNY');
INSERT INTO payment VALUES(0,500,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(2,600,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(3,500,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(4,400,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(5,600,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(6,500,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(7,900,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(8,300,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(9,700,'UPI','12-02-2026',2.1);
INSERT INTO payment VALUES(10,600,'UPI','12-02-2026',2.1);
INSERT INTO food VALUES(1,'chicken','UPI','full',500);
INSERT INTO food VALUES(2,'mutton','UPI','full',900);
INSERT INTO food VALUES(3,'chicken rice','UPI','full',500);
INSERT INTO food VALUES(4,'chicken ','UPI','full',500);
INSERT INTO food VALUES(5,'chicken curry','UPI','full',500);
INSERT INTO food VALUES(6,'chicken','UPI','full',500);
INSERT INTO food VALUES(7,'mutton','UPI','full',900);
INSERT INTO food VALUES(8,'fish','UPI','full',300);
INSERT INTO food VALUES(9,'sea food','UPI','full',700);
INSERT INTO food VALUES(10,'chicken','UPI','full',500);
INSERT INTO staff VALUES(1,'rohan',2,3.1,5000);
INSERT INTO staff VALUES(2,'rohith',4,3.1,5000);
INSERT INTO staff VALUES(3,'uttan',2,3.1,5000);
INSERT INTO staff VALUES(4,'chaitanya',7,3.1,5000);
INSERT INTO staff VALUES(5,'prabhas',7,3.1,5000);
select * from restaurant;
/*reataurantID restaurantname                                     address                                            contact                                            rating
------------ -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------
1            GG                                                 Air Bypass Road                                    8500899100                                         3.1
2            PP                                                 MAIN ROAD                                          7799831318                                         3.1
3            JJ                                                 MAIN ROAD                                          9985919479                                         3.1
4            KK                                                 MAIN ROAD                                          8500899100                                         3.1
5            TT                                                 MAIN ROAD                                          9000765879                                         3.1*/

select * from custmer;
/*custmerID   mobile               email                                              address                                            name
----------- -------------------- -------------------------------------------------- -------------------------------------------------- --------------------------------------------------
1           8500899100           ramsita55@gmail.com                                TK Street                                          PRABHAS
2           9985919479           BUNNY@GMAIL.COM                                    OUT ROAD                                           BUNNY
3           8500899100           DON@GMAIL.COM                                      OUT ROAD                                           DON
4           7799831318           CHAITANYA@GMAIL.COM                                OUT ROAD                                           CHAITANYA
5           8500899100           RAM TEJA@GMAIL.COM                                 OUT ROAD                                           RAM TEJA
6           8500899100           C UTTAM@GMAIL.COM                                  OUT ROAD                                           UTTAM
7           8500899100           ROHAN@GMAIL.COM                                    OUT ROAD                                           ROHAN
8           9000765879           KOWSHIK@GMAIL.COM                                  OUT ROAD                                           KOWSHIK
9           6281631198           K NIKHIL@GMAIL.COM                                 OUT ROAD                                           K NIKHIL
10          6309845876           BUNNY@GMAIL.COM                                    OUT ROAD                                           BUNNY*/

select * from payment;
/*paymentId   amount      type                                               date       discount
----------- ----------- -------------------------------------------------- ---------- ---------------------------------------
0           500         UPI                                                2026-12-02 2.10
2           600         UPI                                                2026-12-02 15.00
3           500         UPI                                                2026-12-02 15.00
5           600         UPI                                                2026-12-02 2.10
6           500         UPI                                                2026-12-02 2.10
7           900         UPI                                                2026-12-02 2.10
8           300         UPI                                                2026-12-02 2.10
9           700         UPI                                                2026-12-02 2.10
10          600         UPI                                                2026-12-02 2.10*/

select * from food;
/*foodID      name                                               type                                               QTY                                                price
----------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -----------
1           chicken                                            Fast Food                                          full                                               500
2           mutton                                             UPI                                                10                                                 900
3           chicken rice                                       UPI                                                full                                               500
4           chicken                                            Fast Food                                          full                                               500
5           chicken curry                                      UPI                                                10                                                 500
6           chicken                                            Fast Food                                          full                                               500
7           mutton                                             UPI                                                10                                                 900
9           sea food                                           UPI                                                full                                               700
10          chicken                                            Fast Food                                          full  */                                             500

update restaurant set address = 'Air Bypass Road' where reataurantID = 1;
update restaurant set rating = 4.5 where restaurantname = 'PP';
update custmer set address = 'TK Street' where name = 'PRABHAS';
update custmer set email = 'ramsita55@gmail.com' where name = 'PRABHAS';
update payment set discount = 15 where paymentId = 2;
update payment set discount = 15 where paymentId = 3;
update food set type = 'Fast Food' where name ='chicken';
delete from payment where paymentId=4 and type ='UPI';
delete from food where name ='fish';
delete from staff where name ='rohan' and rating =3.1;
update food set QTY = '10' where foodID = 5 or price = 900;
select restaurantname from restaurant where rating = 3.1;
/*restaurantname
GG
PP
JJ
KK
TT*/
select contact from restaurant where reataurantID = 2;
Select restaurantname from restaurant where rating = 3.1 and address ='MAIN ROAD';
/*restaurantname
--------------------------------------------------
PP
JJ
KK
TT*/
select email from custmer where custmerID = 5;
/*email
--------------------------------------------------
RAM TEJA@GMAIL.COM*/
select price, QTY from food;
/*price       QTY
----------- --------------------------------------------------
500         full
900         10
500         full
500         full
500         10
500         full
900         10
700         full
500         full*/
select name from food where type = 'Fast Food' and price > 299;
/*name
--------------------------------------------------
chicken
chicken 
chicken
chicken*/
select type from payment where paymentId = 5;
/*type
--------------------------------------------------
UPI*/
SELECT * FROM restaurant
WHERE rating > 4.0;
SELECT * FROM restaurant
ORDER BY rating DESC;
SELECT * FROM custmer
WHERE name LIKE '%A';
SELECT * FROM custmer
WHERE CAST(mobile AS VARCHAR(20)) LIKE '85%';
SELECT * FROM food
WHERE price BETWEEN 400 AND 800;


-- QUERY 6: Display food items whose names contain 'rice'
SELECT * FROM food
WHERE name LIKE '%rice%';


-- QUERY 7: Display staff members whose salary is between 4000 and 6000
SELECT * FROM staff
WHERE salarey BETWEEN 4000 AND 6000;


-- QUERY 8: Display staff members in descending order of salary
SELECT * FROM staff
ORDER BY salarey DESC;


-- QUERY 9: Display the lowest food price
SELECT MIN(price) AS LowestPrice
FROM food;


-- QUERY 10: Display the total number of staff members
SELECT COUNT(*) AS TotalStaff
FROM staff;


-- QUERY 11: Display the total number of restaurants
SELECT COUNT(*) AS TotalRestaurants
FROM restaurant;


-- QUERY 12: Display the total salary paid to all staff members
SELECT SUM(salarey) AS TotalSalary
FROM staff;


-- QUERY 13: Display food items priced above the average price
SELECT *
FROM food
WHERE price > (SELECT AVG(price) FROM food);


-- QUERY 14: Display the second-highest food price
SELECT MAX(price) AS SecondHighestPrice
FROM food
WHERE price < (SELECT MAX(price) FROM food);


-- QUERY 15: Display food categories with an average price greater than 500
SELECT type, AVG(price) AS AveragePrice
FROM food
GROUP BY type
HAVING AVG(price) > 500;


-- QUERY 16: Change the name of restaurant ID 4
UPDATE restaurant
SET restaurantname = 'Food Palace'
WHERE reataurantID = 4;


-- QUERY 17: Change the contact number of restaurant ID 3
UPDATE restaurant
SET contact = '9123456780'
WHERE reataurantID = 3;


-- QUERY 18: Update the email of customer ID 6
UPDATE custmer
SET email = 'uttam@example.com'
WHERE custmerID = 6;


-- QUERY 19: Change the name of customer ID 8
UPDATE custmer
SET name = 'KOWSHIK KUMAR'
WHERE custmerID = 8;


-- QUERY 20: Increase the price of food item ID 8 by 100
UPDATE food
SET price = price + 100
WHERE foodID = 8;


-- QUERY 21: Change the name of food item ID 9
UPDATE food
SET name = 'Seafood Special'
WHERE foodID = 9;


-- QUERY 22: Reduce the salary of staff member ID 1 by 500
UPDATE staff
SET salarey = salarey - 500
WHERE staffID = 1;


-- QUERY 23: Increase the order count of staff member ID 3 by 2
UPDATE staff
SET orders = orders + 2
WHERE staffID = 3;


-- QUERY 24: Change the payment date for payment ID 6
UPDATE payment
SET date = '2026-02-15'
WHERE paymentId = 6;


-- QUERY 25: Change the payment amount for payment ID 8
UPDATE payment
SET amount = 350
WHERE paymentId = 8;


-- QUERY 26: Delete restaurant ID 4
DELETE FROM restaurant
WHERE reataurantID = 4;


-- QUERY 27: Delete customer ID 7
DELETE FROM custmer
WHERE custmerID = 7;


-- QUERY 28: Delete food item ID 5
DELETE FROM food
WHERE foodID = 5;


-- QUERY 29: Delete staff member ID 3
DELETE FROM staff
WHERE staffID = 3;


-- QUERY 30: Delete payments with an amount greater than 800
DELETE FROM payment
WHERE amount > 800;


-- QUERY 31: Delete food items whose names contain 'rice'
DELETE FROM food
WHERE name LIKE '%rice%';


-- QUERY 32: Delete customers whose names contain 'K'
DELETE FROM custmer
WHERE name LIKE '%K%';


-- QUERY 33: Delete staff members who have handled fewer than 3 orders
DELETE FROM staff
WHERE orders < 3;


-- QUERY 34: Delete restaurants with a rating equal to 3.1
DELETE FROM restaurant
WHERE rating = 3.1;


-- QUERY 35: Delete payments made before February 2026
DELETE FROM payment
WHERE date < '2026-02-01';


-- ==========================================
-- 15 ADDITIONAL QUERIES
-- ==========================================


-- QUERY 36: Display restaurants with ratings between 3.0 and 4.5
SELECT * FROM restaurant
WHERE rating BETWEEN 3.0 AND 4.5;


-- QUERY 37: Display customers in alphabetical order
SELECT * FROM custmer
ORDER BY name ASC;


-- QUERY 38: Display food items with the maximum price
SELECT * FROM food
WHERE price = (SELECT MAX(price) FROM food);


-- QUERY 39: Display the number of food items for each price
SELECT price, COUNT(*) AS TotalItems
FROM food
GROUP BY price;


-- QUERY 40: Display staff members whose names contain 'a'
SELECT * FROM staff
WHERE name LIKE '%a%';


-- QUERY 41: Display payments with amounts between 400 and 700
SELECT * FROM payment
WHERE amount BETWEEN 400 AND 700;


-- QUERY 42: Display the average salary of staff members
SELECT AVG(salarey) AS AverageSalary
FROM staff;


-- QUERY 43: Display the total number of food items
SELECT COUNT(*) AS TotalFoodItems
FROM food;


-- QUERY 44: Display payment types and their total amounts
SELECT type, SUM(amount) AS TotalAmount
FROM payment
GROUP BY type;


-- QUERY 45: Display staff members whose order count is greater than the average
SELECT *
FROM staff
WHERE orders > (SELECT AVG(orders) FROM staff);


-- QUERY 46: Update the rating of restaurant ID 5
UPDATE restaurant
SET rating = 4.0
WHERE reataurantID = 5;


-- QUERY 47: Update the address of customer ID 9
UPDATE custmer
SET address = 'Green Park'
WHERE custmerID = 9;


-- QUERY 48: Increase the price of food item ID 2 by 50
UPDATE food
SET price = price + 50
WHERE foodID = 2;


-- QUERY 49: Increase the salary of staff member ID 5 by 1000
UPDATE staff
SET salarey = salarey + 1000
WHERE staffID = 5;


-- QUERY 50: Update the discount for payment ID 10
UPDATE payment
SET discount = 5.00
WHERE paymentId = 10;

