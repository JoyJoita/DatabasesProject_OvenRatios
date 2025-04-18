-- This file was generated the Google Gemini 2.0 Flash gen AI model.
-- Please see AI Disclosure.txt for full prompt and response.

USE book_boutique;

-- Insert data into book_series table
INSERT INTO book_series (name) VALUES
('Harry Potter'),
('The Lord of the Rings'),
('Percy Jackson & The Olympians'),
('A Song of Ice and Fire'),
('The Hunger Games')
('The Chronicles of Narnia'),
('The Wheel of Time'),
('Sherlock Holmes'),
('Discworld'),
('His Dark Materials'),
('Divergent'),
('Maze Runner'),
('The Inheritance Cycle'),
('The Dark Tower'),
('Miss Peregrine’s Home for Peculiar Children');

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
('Adventure')
('Non-Fiction'),
('Biography'),
('Classic Literature'),
('Dystopian'),
('Drama'),
('Self-Help'),
('Science'),
('Poetry'),
('Crime'),
('Philosophy');

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
('El Principito', 'Saint-Exupéry, Antoine de', '9780156013730', '1943-04-06', 9.50, NULL, 'Spanish'),
('The Lion, the Witch and the Wardrobe', 'Lewis, C.S.', '9780064471046', '1950-10-16', 8.99, 6, 'English'),
('Prince Caspian', 'Lewis, C.S.', '9780064471053', '1951-10-15', 9.25, 6, 'English'),
('The Eye of the World', 'Jordan, Robert', '9780812511819', '1990-01-15', 10.99, 7, 'English'),
('The Great Hunt', 'Jordan, Robert', '9780812517729', '1990-11-15', 11.50, 7, 'English'),
('The Final Empire', 'Sanderson, Brandon', '9780765311788', '2006-07-25', 13.75, NULL, 'English'),
('Divergent', 'Roth, Veronica', '9780062024022', '2011-04-25', 10.99, 11, 'English'),
('Insurgent', 'Roth, Veronica', '9780062024046', '2012-05-01', 11.50, 11, 'English'),
('The Maze Runner', 'Dashner, James', '9780385737951', '2009-10-06', 9.99, 12, 'English'),
('The Scorch Trials', 'Dashner, James', '9780385738767', '2010-09-28', 10.50, 12, 'English'),
('Eragon', 'Paolini, Christopher', '9780375826696', '2002-08-26', 12.25, 13, 'English'),
('The Gunslinger', 'King, Stephen', '9780451210843', '1982-06-10', 11.99, 14, 'English'),
('Library of Souls', 'Riggs, Ransom', '9781594748400', '2015-09-22', 12.75, 15, 'English'),
-- Standalones
('1984', 'Orwell, George', '9780451524935', '1949-06-08', 9.50, NULL, 'English'),
('Becoming', 'Obama, Michelle', '9781524763138', '2018-11-13', 16.99, NULL, 'English'),
('Sapiens', 'Harari, Yuval Noah', '9780062316097', '2011-09-04', 18.99, NULL, 'English'),
('Meditations', 'Aurelius, Marcus', '9780140449334', '180-01-01', 8.50, NULL, 'English'),
('The Alchemist', 'Coelho, Paulo', '9780061122415', '1988-01-01', 9.99, NULL, 'English');


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
(15, 10), (15, 8),
(16, 1), (16, 10),
(17, 1), (17, 10),
(18, 1), (18, 10),
(19, 1), (19, 10),
(20, 4), (20, 14),
(21, 14),
(22, 7), (22, 14),
(23, 7), (23, 14),
(24, 1),
(25, 4),
(26, 4), (26, 7),
(27, 1), (27, 10),
(28, 9),
(29, 3),
(30, 11),
(31, 11), (31, 12),
(32, 13), (32, 11);

-- Insert data into customers table
INSERT INTO customers (name, rewards_points, balance, phone_number, email) VALUES
('Alice Smith', 50, 25.50, '123-456-7890', 'alice.smith@email.com'),
('Bob Johnson', 120, 75.20, '987-654-3210', 'bob.johnson@email.net'),
('Charlie Brown', 10, 5.00, '555-123-4567', 'charlie.brown@email.org'),
('Dana White', 80, 60.00, '321-654-9870', 'dana.white@email.com'),
('Emily Green', 30, 18.25, '444-555-6666', 'emily.green@email.org'),
('Frank Moore', 100, 35.75, '222-333-4444', 'frank.moore@email.net'),
('Gina Black', 25, 12.00, '666-777-8888', 'gina.black@email.io'),
('Henry Ford', 60, 45.50, '111-222-3333', 'henry.ford@email.com'),
('Isla North', 40, 22.15, '777-888-9999', 'isla.north@email.com');

-- Insert data into orders table
INSERT INTO orders (customer_id, order_date, total_cost) VALUES
(1, '2025-04-01', 21.98),
(2, '2025-04-03', 30.50),
(1, '2025-04-05', 10.50),
(3, '2025-04-06', 16.25),
(2, '2025-04-07', 25.74),
(4, '2025-04-08', 17.98),
(5, '2025-04-09', 25.00),
(6, '2025-04-10', 28.49),
(7, '2025-04-11', 18.99),
(8, '2025-04-12', 12.25),
(9, '2025-04-13', 20.00),
(10, '2025-04-14', 22.50);

-- Insert data into order_contents table
INSERT INTO order_contents (order_id, book_id, quantity) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(2, 5, 1),
(3, 9, 1),
(4, 4, 1),
(5, 6, 1),
(5, 11, 1),
(6, 16, 1),
(6, 20, 1),
(7, 21, 1),
(8, 22, 1),
(9, 23, 1),
(10, 24, 1),
(11, 25, 1),
(12, 26, 1),
(12, 27, 1),
(13, 28, 1),
(13, 29, 1),
(14, 30, 1);

-- Insert data into locations table
INSERT INTO locations (name, address_line_1, address_line_2, city, state, postal_code, phone, sq_ft, landmark_location, manager) VALUES
('Main Street Store', '123 Main St', NULL, 'Anytown', 'CA', '90210', '5551112222', 2000, 'Near the park', 1),
('Downtown Branch', '456 Broadway Ave', 'Floor 2', 'Bigcity', 'NY', '10001', '5552223333', 2500, 'Next to the theater', 2),
('Uptown Store', '789 Hill Rd', NULL, 'Greenville', 'TX', '75401', '5553334444', 1800, 'Opposite City Library', 3);

-- Insert data into employees table
INSERT INTO employees (first_name, middle_name, last_name, hourly_rate, location, is_manager) VALUES
('John', NULL, 'Doe', 15.00, 1, TRUE),
('Jane', 'Marie', 'Smith', 12.50, 1, FALSE),
('Emily', NULL, 'Clark', 14.25, 2, TRUE),
('George', 'H.', 'Adams', 13.00, 2, FALSE),
('Hannah', NULL, 'Lee', 13.50, 3, TRUE),
('Ivan', 'M.', 'King', 12.75, 3, FALSE);

-- Insert data into book_stock table
INSERT INTO book_stock (stock_id, book_id, location_id, quantity) VALUES
(101, 1, 1, 50),
(102, 2, 1, 30),
(103, 3, 1, 20),
(104, 16, 1, 25),
(105, 18, 2, 15),
(106, 21, 2, 20),
(107, 22, 2, 10),
(108, 23, 3, 18),
(109, 25, 3, 30);
