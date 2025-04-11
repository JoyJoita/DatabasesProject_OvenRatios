DELIMITER //
CREATE TRIGGER tr_update_book_stock
AFTER INSERT ON order_contents
FOR EACH ROW
BEGIN 
  UPDATE book_stock
  SET book_stock.quantity = book_stock.quantity - 1
  WHERE order_contents.book_id = book_stock.book_id;
END //
DELIMITER ;
