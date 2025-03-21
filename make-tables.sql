CREATE DATABASE book_boutique;
USE book_boutique;
CREATE TABLE books (
	book_id INT PRIMARY KEY auto_increment,
    title NVARCHAR(1000) NOT NULL
)