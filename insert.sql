-- This file was generated the Google Gemini 2.0 Flash gen AI model.
-- Please see AI Disclosure.txt for full prompt and response.

USE book_boutique;

-- Insert data into book_series table
INSERT INTO book_series (name) VALUES
('Harry Potter'),
('The Lord of the Rings'),
('Percy Jackson & The Olympians'),
('A Song of Ice and Fire'),
('The Hunger Games');

-- Insert data into genres table
INSERT INTO genres (genre_name) VALUES
('Fantasy'),
('Science Fiction'),
('Mystery'),
('Thriller'),
('Romance'),
('Historical Fiction'),
('Young Adult'),
('Contemporary'),
('Horror'),
('Adventure');

-- Insert data into books table
INSERT INTO books (title, author_name, isbn, release_date, price, series_id, language) VALUES
('Harry Potter and the Sorcerer\'s Stone', 'Rowling, J.K.', '9780590353403', '1997-06-26', 10.99, 1, 'English'),
('Harry Potter and the Chamber of Secrets', 'Rowling, J.K.', '9780439064873', '1998-07-02', 11.99, 1, 'English'),
('The Fellowship of the Ring', 'Tolkien, J.R.R.', '9780618260274', '1954-07-29', 15.50, 2, 'English'),
('The Two Towers', 'Tolkien, J.R.R.', '9780618260281', '1954-11-11', 16.25, 2, 'English'),
('The Lightning Thief', 'Riordan, Rick', '9780786847913', '2005-07-01', 9.75, 3, 'English'),
('The Sea of Monsters', 'Riordan, Rick', '9780786856878', '2006-04-01', 10.25, 3, 'English'),
('A Game of Thrones', 'Martin, George R.R.', '9780553801471', '1996-08-01', 12.50, 4, 'English'),
('A Clash of Kings', 'Martin, George R.R.', '9780553806957', '1999-02-01', 13.00, 4, 'English'),
('The Hunger Games', 'Collins, Suzanne', '9780439023481', '2008-09-14', 10.50, 5, 'English'),
('Catching Fire', 'Collins, Suzanne', '9780439023498', '2009-09-01', 11.00, 5, 'English'),
('Pride and Prejudice', 'Austen, Jane', '9780141439518', '1813-01-28', 8.99, NULL, 'English'),
('To Kill a Mockingbird', 'Lee, Harper', '9780061120084', '1960-07-11', 12.75, NULL, 'English'),
('The Silent Patient', 'Michaelides, Alex', '9781250301697', '2019-02-05', 13.50, NULL, 'English'),
('The Love Hypothesis', 'Hazelwood, Ali', '9781984802844', '2021-09-14', 14.00, NULL, 'English'),
('El Principito', 'Saint-Exupéry, Antoine de', '9780156013730', '1943-04-06', 9.50, NULL, 'Spanish');

-- Insert data into book_genres table
INSERT INTO book_genres (book_id, genre_id) VALUES
(1, 1), (1, 7),
(2, 1), (2, 7),
(3, 1), (3, 10),
(4, 1), (4, 10),
(5, 1), (5, 7),
(6, 1), (6, 7),
(7, 1),
(8, 1),
(9, 7), (9, 2),
(10, 7), (10, 2),
(11, 5), (11, 6),
(12, 8), (12, 6),
(13, 3), (13, 4),
(14, 5), (14, 8),
(15, 10), (15, 8);

-- Insert data into customers table
INSERT INTO customers (name, rewards_points, balance, phone_number, email) VALUES
('Alice Smith', 50, 25.50, '123-456-7890', 'alice.smith@email.com'),
('Bob Johnson', 120, 75.20, '987-654-3210', 'bob.johnson@email.net'),
('Charlie Brown', 10, 5.00, '555-123-4567', 'charlie.brown@email.org');

-- Insert data into orders table
INSERT INTO orders (customer_id, order_date, total_cost) VALUES
(1, '2025-04-01', 21.98),
(2, '2025-04-03', 30.50),
(1, '2025-04-05', 10.50),
(3, '2025-04-06', 16.25),
(2, '2025-04-07', 25.74);

-- Insert data into order_contents table
INSERT INTO order_contents (order_id, book_id, quantity) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(2, 5, 1),
(3, 9, 1),
(4, 4, 1),
(5, 6, 1),
(5, 11, 1);

-- Insert data into locations table
INSERT INTO locations (name, address_line_1, address_line_2, city, state, postal_code, phone, sq_ft, landmark_location, manager) VALUES
('Main Street Store', '123 Main St', NULL, 'Anytown', 'CA', '90210', '5551112222', 2000, 'Near the park', 1);

-- Insert data into employees table
INSERT INTO employees (first_name, middle_name, last_name, hourly_rate, location, is_manager) VALUES
('John', NULL, 'Doe', 15.00, 1, TRUE),
('Jane', 'Marie', 'Smith', 12.50, 1, FALSE);

-- Insert data into book_stock table
INSERT INTO book_stock (stock_id, book_id, location_id, quantity) VALUES
(101, 1, 1, 50),
(102, 2, 1, 30),
(103, 3, 1, 20);
