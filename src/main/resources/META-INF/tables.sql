
CREATE TABLE products (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
price NUMERIC NOT NULL,
image VARCHAR(100)
);

CREATE TABLE users(
id INT(6) AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30),
secret VARCHAR(60),
role VARCHAR(30)
);