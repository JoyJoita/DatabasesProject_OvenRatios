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
    isbn DECIMAL(13, 0) NOT NULL,
	release_date DATE NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    series_id INT REFERENCES book_series(series_id),
    language ENUM("English", "Spanish", "Arabic", "French", "Japanese", "Chinese")
);
CREATE TABLE book_stock (
	stock_id INT PRIMARY KEY,
    book_id INT NOT NULL UNIQUE REFERENCES books(book_id),
    location_id INT NOT NULL UNIQUE, -- foreign key
    quantity INT NOT NULL DEFAULT 0
);
