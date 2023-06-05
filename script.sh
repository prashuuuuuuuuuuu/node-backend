 CREATE DATABASE motivity;
 USE motivity;
 CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (user_id),
    UNIQUE INDEX sno_UNIQUE (user_id) VISIBLE,
    UNIQUE INDEX email_UNIQUE (email) VISIBLE
);


CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    image VARCHAR(200) NOT NULL,
    quantity DECIMAL(3,0) NULL,
    description TEXT NULL,
    price INT NULL,
    PRIMARY KEY (product_id),
    UNIQUE INDEX product_name_UNIQUE (product_name ASC) VISIBLE
);

 
INSERT INTO products (product_name, image, quantity, description, price) VALUES
    ('Apple iPhone 12 (64GB) - Purple',
    'https://m.media-amazon.com/images/I/71hIfcIPyxS._AC_UY218_.jpg',
    10, '6.1-inch (15.5 cm diagonal) Super Retina XDR display', 75000),
    ('Apple iPhone 12 min (64GB) - Blue',
    'https://m.media-amazon.com/images/I/71sNNCTfMuL._AC_UY218_.jpg',
    10, '6.1-inch (15.5 cm diagonal) Super Retina XDR display', 59000),
    ('Apple iPhone 13 Pro (128GB) - Sierra Blue',
    'https://m.media-amazon.com/images/I/61jLiCovxVL._AC_UY218_.jpg',
    10, '6.1-inch (15.5 cm diagonal) Super Retina XDR display', 107000);
 


CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (cart_id)
);
   
 insert into users (name,email,password) values
('Ashok Reddy','test@gmail.com','$2b$10$IMjU1iTS8NJalyDVENC2f.5/OesEafKWII5qWsK3AZWeYGvcMw1HS');

 insert into users (name,email,password) values
('Ashok Reddy','prashanth@gmail.com','Prashu@1');
   
 CREATE USER 'test_user'@'%' IDENTIFIED BY 'Test_123';
 GRANT ALL PRIVILEGES ON *.* TO 'test_user'@'%';
 ALTER USER 'test_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Test_123'
