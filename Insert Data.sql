--comm_products (beer_id, product_name, brewer_name, abv, fluid, country, imported, price) *DONE*
INSERT INTO comm_products
VALUES (001, '100th Meridian', 'Mill St. Brewery', 3.1, 473, 'CANADA', 'N', 6.50);
INSERT INTO comm_products 
VALUES (002, 'Juice Cloud IPA', 'Avling', 4.5 , 355, 'USA', 'Y', 3.50);
INSERT INTO comm_products 
VALUES (003, 'Watermelon Wheat', 'Henderson Brewing', 3.5, 473, 'China', 'Y', 6.75);
INSERT INTO comm_products 
VALUES (004, 'Cashmere Stout', 'Junction Craft Brewing', 4.7, 355, 'CANADA', 'N', 3.65);
INSERT INTO comm_products 
VALUES (005, 'Italian Pilsner', 'Black Lab Brewing', 3.3, 473, 'CANADA', 'N', 5.50);
INSERT INTO comm_products 
VALUES (006, 'Wheat Lager', 'Amsterdam BrewHouse', 5.5, 355, 'USA', 'Y', 3.25);
INSERT INTO comm_products 
VALUES (007, 'Hoegaarden', 'Northern Maverick', 6.8, 473, 'Belgium', 'Y', 6.25);  




--comm_customers--(customer_id, first_name, last_name, age, address, country, city, postal, email, phone) *DONE*
INSERT INTO comm_customers 
VALUES (101,'Mathew', 'LeBlanc', 21, '400 Bayview Avenue', 'Canada', 'Toronto', 'M214AC', 'mathewleblanc@gmail.com', 4162223212);
INSERT INTO comm_customers 
VALUES (102, 'Jenna', 'Marbles', 57, '23 Yonge Street', 'Canada', 'Toronto', 'M6H6AB', 'jennahall@yahoo.com', 6471239876);
INSERT INTO comm_customers 
VALUES (103, 'Samuel', 'Jackson', 60, '2685 Quill Cres', 'Canada', 'Mississauga', 'L5N2G8', 'samueljackson@gmail.com', 9056586523);
INSERT INTO comm_customers 
VALUES (104, 'Betty', 'Boop', 32, '1032 Lemar Rd', 'Canada', 'Newmarket', 'L3Y1S1', 'bettyboop@gmail.com', 9053482123);
INSERT INTO comm_customers 
VALUES (105, 'Stephen', 'Jones', 45, '27 George Street', 'Canada', 'Ajax', 'L1S1S6', 'stephenjones@yahoo.com',4163224563); 
INSERT INTO comm_customers 
VALUES (106, 'James', 'Bond', 30, '122 Dean Avenue', 'Canada', 'Barrie', 'L4N0V8', 'jamesbond@gmail.com', 7052124923);
INSERT INTO comm_customers 
VALUES (107, 'Michael', 'Meyers', 65, '24 Bellamy Rd', 'Canada', 'Markham', 'L3R3S5', 'michaelmeyers@yahoo.com', 6479877388);



--comm_shoppingCart--(cart_id, customer_id, date_created, checked_out) *DONE*
INSERT INTO comm_shoppingCart 
  VALUES (201, 101,TO_DATE( 'July 01, 2022', 'MONTH DD, YYYY'), 'Y');
INSERT INTO comm_shoppingCart 
  VALUES (202, 102,TO_DATE( 'October 05, 2022', 'MONTH DD, YYYY'), 'Y');
INSERT INTO comm_shoppingCart 
  VALUES (203, 103,TO_DATE( 'April 09, 2016', 'MONTH DD, YYYY'), 'Y');
INSERT INTO comm_shoppingCart 
  VALUES (204, 104,TO_DATE( 'March 23, 2020', 'MONTH DD, YYYY'), 'N');
INSERT INTO comm_shoppingCart 
  VALUES (205, 105,TO_DATE( 'August 04, 2005', 'MONTH DD, YYYY'), 'Y');
INSERT INTO comm_shoppingCart 
  VALUES (206, 106,TO_DATE( 'September 12, 2017', 'MONTH DD, YYYY'), 'N');
INSERT INTO comm_shoppingCart 
  VALUES (207, 107,TO_DATE( 'August 05, 2022', 'MONTH DD, YYYY'), 'N');


--comm_order (order_id, customer_id, order_date, address, status) *DONE*
INSERT INTO comm_order 
  VALUES(301,101, TO_DATE( 'July 01, 2022', 'MONTH DD, YYYY'), '400 Bayview Avenue', 1);
INSERT INTO comm_order 
  VALUES(302,102, TO_DATE( 'October 05, 2022', 'MONTH DD, YYYY'), '23 Yonge Street', 2);
INSERT INTO comm_order 
  VALUES(303,103, TO_DATE( 'April 09, 2016', 'MONTH DD, YYYY'), '2685 Quill Cres', 4);
INSERT INTO comm_order 
  VALUES(304,104, TO_DATE( 'March 23, 2020', 'MONTH DD, YYYY'), '1032 Lemar Rd', 4);
INSERT INTO comm_order 
  VALUES(305,105, TO_DATE( 'August 04, 2005', 'MONTH DD, YYYY'), '27 George Street', 4);
INSERT INTO comm_order 
  VALUES(306,106, TO_DATE( 'September 12, 2017', 'MONTH DD, YYYY'), '122 Dean Avenue', 3);
INSERT INTO comm_order 
  VALUES(307,107, TO_DATE( 'August 05, 2022', 'MONTH DD, YYYY'), '24 Bellamy Rd',2);

--comm_order_items (order_id, beer_id, quantity, price) *DONE*
INSERT INTO comm_order_items 
  VALUES(301, 001, 1, 6.50);
INSERT INTO comm_order_items 
  VALUES(302, 002, 1, 3.50);
INSERT INTO comm_order_items 
  VALUES(303, 003, 1, 6.75);
INSERT INTO comm_order_items 
  VALUES(304, 004, 1, 3.65);
INSERT INTO comm_order_items 
  VALUES(305, 005, 1, 5.50);
INSERT INTO comm_order_items 
  VALUES(306, 006, 1, 3.25);
INSERT INTO comm_order_items 
  VALUES(307, 007, 1, 6.25);


--comm_cart_items (cart_id, beer_id, quantity, price) *DONE*
INSERT INTO comm_cart_items 
 VALUES (201, 001, 2, 6.50);
INSERT INTO comm_cart_items 
 VALUES (202, 002, 4, 3.50);
INSERT INTO comm_cart_items 
 VALUES (203, 003, 4, 6.75);  
INSERT INTO comm_cart_items 
 VALUES (204, 004, 3, 3.65);  
INSERT INTO comm_cart_items 
 VALUES (205, 005, 2, 5.50);  
INSERT INTO comm_cart_items 
 VALUES (206, 006, 2, 3.25);  
INSERT INTO comm_cart_items 
 VALUES (207, 007, 4, 6.25);  

--comm_products_stock (beer_id, quantity) *DONE*
INSERT INTO comm_products_stock
VALUES(001, 500);
INSERT INTO comm_products_stock
VALUES(002, 360);
INSERT INTO comm_products_stock
VALUES(003, 789);
INSERT INTO comm_products_stock
VALUES(004, 450);
INSERT INTO comm_products_stock
VALUES(005, 930);
INSERT INTO comm_products_stock
VALUES(006, 300);
INSERT INTO comm_products_stock
VALUES(007, 234);
 