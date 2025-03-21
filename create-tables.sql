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
    manager INT NOT NULL -- foriegn key
);
CREATE TABLE book_stock (
	stock_id INT PRIMARY KEY,
    book_id INT NOT NULL UNIQUE REFERENCES books(book_id),
    location_id INT NOT NULL UNIQUE REFERENCES locations(location_id),
    quantity INT NOT NULL DEFAULT 0
);
