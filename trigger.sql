-- Enforces the business rule that whenever a book is sold (i.e., added to an order), 
-- its quantity is automatically reduced to reflect the updated stock.

USE book_boutique;

DELIMITER //
CREATE TRIGGER tr_update_book_stock
AFTER INSERT ON order_contents
FOR EACH ROW
BEGIN 
  UPDATE book_stock
  SET quantity = quantity - NEW.quantity
  WHERE book_id = NEW.book_id;
END //
DELIMITER ;

-- BEFORE A ORDER IS PLACED
SELECT * FROM book_stock;

INSERT INTO orders (customer_id, order_date, total_cost) VALUES
(2, '2025-04-21', 65.94);
  
INSERT INTO order_contents (order_id, book_id, quantity) VALUES
(33, 1, 3);

-- AFTER A ORDER IS PLACED
SELECT * FROM book_stock;
