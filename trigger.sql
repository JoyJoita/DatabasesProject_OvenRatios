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
