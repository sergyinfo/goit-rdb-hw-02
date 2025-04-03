CREATE TABLE Client (
     client_id INT PRIMARY KEY,
     name VARCHAR(100),
     address VARCHAR(255)
);

CREATE TABLE Order (
    order_id INT PRIMARY KEY,
    order_date DATE,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE Product (
  product_id INT PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE OrderDetail (
  order_id INT,
  product_id INT,
  quantity INT,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES Order(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);