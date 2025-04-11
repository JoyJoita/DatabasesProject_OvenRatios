USE book_boutique;

-- A customer deletes their account
DELETE FROM customers
WHERE customer_id = 1;

-- A price changes
UPDATE books
SET price = 13
WHERE book_id = 2;

-- A new shipment comes in
UPDATE book_stock
SET quantity = quantity + 200
WHERE stock_id = 3;

-- Our store closes because nobody shops there because we only stock 3 books
DELETE FROM locations
WHERE location_id = 1;
