USE book_boutique;

-- pretty books table
SELECT b.book_id AS ID,
b.title AS Title,
b.author_name AS Author,
CONCAT("$", b.price) AS Price,
CASE
	WHEN b.series_id IS NULL THEN ""
    ELSE ser.name
END AS Series,
group_concat(g.genre_name ORDER BY g.genre_ID ASC SEPARATOR ", ") AS Genre,
CASE
	WHEN stock.quantity IS NULL THEN 0
    ELSE stock.quantity
END AS "Qty Main St"
FROM books b
LEFT JOIN book_genres bg
ON b.book_id = bg.book_id
INNER JOIN genres g
ON bg.genre_id = g.genre_id
LEFT JOIN book_series ser
ON b.series_id = ser.series_id
LEFT JOIN (
	SELECT book_id, quantity
	FROM book_stock
    WHERE location_id = 1
    ) stock
ON b.book_id = stock.book_id
GROUP BY b.book_id;

-- Total Revenue by Genre
SELECT g.genre_name, SUM(oc.quantity * b.price) AS genre_revenue
FROM order_contents oc
JOIN books b ON oc.book_id = b.book_id
JOIN book_genres bg ON b.book_id = bg.book_id
JOIN genres g ON bg.genre_id = g.genre_id
GROUP BY g.genre_name
ORDER BY genre_revenue DESC;


-- Top Customers by Purchase Value
SELECT c.name,
COUNT(o.order_id) AS orders_placed,
SUM(o.total_cost) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;


-- Books that were not sold
SELECT b.title, b.author_name, b.price, b.release_date
FROM books b
LEFT JOIN order_contents oc ON b.book_id = oc.book_id
WHERE oc.book_id IS NULL
ORDER BY b.release_date DESC;


-- Employees and their work locations
SELECT e.first_name, e.last_name, e.is_manager,
l.name AS location_name, l.city, l.state
FROM employees e
JOIN locations l ON e.location = l.location_id
ORDER BY l.name;

CREATE VIEW managers AS
SELECT *
FROM employees
WHERE is_manager = 1;

SELECT *
FROM managers;
