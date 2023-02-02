CREATE TABLE comm_products 
(
  beer_id NUMBER (3) PRIMARY KEY, 
  product_name VARCHAR (50) NOT NULL,
  brewer_name VARCHAR (50),
  abv DECIMAL (3,1),
  fluid_volume NUMBER (3), 
  country VARCHAR (50),
  is_imported CHAR (1),
  price DECIMAL (4,2) NOT NULL,

  CONSTRAINT comm_products_is_imported_ck
     CHECK (is_imported IN ('Y', 'N'))
);

CREATE TABLE comm_products_stock
(
  beer_id NUMBER (3) PRIMARY KEY,
  quantity NUMBER (4),

  CONSTRAINT comm_products_stock_beer_id_fk FOREIGN KEY (beer_id)
    REFERENCES comm_products (beer_id)
);

CREATE TABLE comm_customers  
(
  customer_id NUMBER (4) PRIMARY KEY,
  first_name VARCHAR (15) NOT NULL,
  last_name VARCHAR (15) NOT NULL,
  age NUMBER (3) NOT NULL,
  address VARCHAR (50),
  country VARCHAR (50),
  city VARCHAR (50),
  postal_code VARCHAR (6),
  email VARCHAR (50),
  phone NUMBER (15),

  CONSTRAINT comm_customers_age_ck
    CHECK (age >= 21)
);

CREATE TABLE comm_order
(
  order_id NUMBER (3) PRIMARY KEY, 
  customer_id NUMBER (4),
  order_date DATE NOT NULL, 
  shipping_address VARCHAR(50) NOT NULL,
  -- Order status: 1 = Pending; 2 = Processing; 3 = Declined; 4 = Fulfilled
  order_status NUMBER (1) NOT NULL, 
  CONSTRAINT comm_order_order_status_ck
     CHECK (order_status > 0 and order_status < 5),

  CONSTRAINT comm_order_customer_id_fk FOREIGN KEY (customer_id)
    REFERENCES comm_customers (customer_id)
);

CREATE TABLE comm_order_items
(
  order_id NUMBER (3),
  beer_id NUMBER (3), 
  quantity NUMBER (4) NOT NULL,
  price DECIMAL (4,2) NOT NULL,

  PRIMARY KEY (order_id, beer_id),
  
  CONSTRAINT comm_order_items_beer_id_fk FOREIGN KEY (beer_id)
    REFERENCES comm_products (beer_id),
  
  CONSTRAINT order_items_order_id_fk FOREIGN KEY (order_id) 
    REFERENCES comm_order (order_id)
);

CREATE TABLE comm_shoppingCart
(
  cart_id NUMBER (3) PRIMARY KEY,
  customer_id NUMBER (4),
  date_created DATE NOT NULL,
  check_out char (1) NOT NULL,
  
  CONSTRAINT shoppingCart_check_out_ck
    CHECK (check_out IN ('Y', 'N')),
  
  CONSTRAINT shoppingCart_customer_id_fk FOREIGN KEY (customer_id)
    REFERENCES comm_customers (customer_id)
  );

CREATE TABLE comm_cart_items
(
    cart_id NUMBER (3),
    beer_id NUMBER (3), 
    quantity NUMBER (4) NOT NULL,
    price DECIMAL (4,2) NOT NULL,
  
    PRIMARY KEY (cart_id, beer_id),

  
    CONSTRAINT comm_cart_items_beer_id_fk FOREIGN KEY (beer_id)
        REFERENCES comm_products (beer_id),

    CONSTRAINT comm_cart_items_cart_id_fk FOREIGN KEY (cart_id)
        REFERENCES comm_shoppingCart (cart_id)
);
