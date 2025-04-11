DROP DATABASE IF EXISTS book_boutique;
CREATE DATABASE book_boutique;
USE book_boutique;
CREATE TABLE book_series (
	series_id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(500) NOT NULL
);

CREATE TABLE books (
	book_id INT PRIMARY KEY auto_increment,
    title NVARCHAR(1000) NOT NULL,
    author_name NVARCHAR(200) NOT NULL,
    isbn CHAR(13) NOT NULL,
	release_date DATE NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    series_id INT REFERENCES book_series(series_id),
    language ENUM("English", "Spanish", "Arabic", "French", "Japanese", "Chinese")
);

CREATE TABLE genres(
	genre_id INT PRIMARY KEY auto_increment,
    genre_name VARCHAR(100)
);
    
CREATE TABLE book_genres(
	book_id INT REFERENCES books(book_id),
    genre_id INT REFERENCES genres(genre_id),
    PRIMARY KEY (genre_id, book_id)
);

CREATE TABLE locations (
	location_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address_line_1 VARCHAR(1000) NOT NULL,
    address_line_2 VARCHAR(1000),
    city VARCHAR(100) NOT NULL,
    state CHAR(2) NOT NULL,
    postal_code CHAR(5) NOT NULL,
    phone CHAR(10) NOT NULL,
    sq_ft INT NOT NULL,
    landmark_location NVARCHAR(200),
    manager INT NOT NULL -- Check if manager?
);

CREATE TABLE employees (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name NVARCHAR(100) NOT NULL,
    middle_name NVARCHAR(100),
    last_name NVARCHAR(100) NOT NULL,
    hourly_rate DECIMAL(6, 2) NOT NULL CHECK (hourly_rate > 0),
    location INT NOT NULL REFERENCES locations(location_id),
    is_manager BOOL NOT NULL
);

CREATE TABLE book_stock (
	stock_id INT PRIMARY KEY,
    book_id INT NOT NULL REFERENCES books(book_id),
    location_id INT NOT NULL REFERENCES locations(location_id),
    quantity INT NOT NULL DEFAULT 0
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    rewards_points INT DEFAULT 0,
    balance DECIMAL(6, 2),
    phone_number VARCHAR(20),
    email VARCHAR(320),
    name NVARCHAR(100) NOT NULL
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    total_cost DECIMAL(7, 2) NOT NULL
);

CREATE TABLE order_contents (
	order_id INT REFERENCES orders(order_id),
    book_id INT REFERENCES books(book_id),
    quantity INT NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (order_id, book_id)
);
