USE book_boutique;

/*
p_checkForOrderOrphans: procedure that checks for orders that need to be removed if the customer 
the order is associated to is taken off the list
*/
DROP PROCEDURE IF EXISTS p_checkForOrderOrphans;

Delimiter //
CREATE PROCEDURE p_checkForOrderOrphans()
DETERMINISTIC
BEGIN
	DROP VIEW IF EXISTS order_orphan_view;
	CREATE VIEW order_orphan_view AS
    SELECT customer_id
    FROM orders
    WHERE customer_id NOT IN (SELECT customer_id FROM customers);
    
    SELECT * FROM order_orphan_view; -- change this to a remove statement ! !
END //
Delimiter ;

CALL p_checkForOrderOrphans;

-- removes order contents entries for orders that no longer exist
DROP PROCEDURE IF EXISTS p_remove_order_contents_orphans;
DELIMITER //
CREATE PROCEDURE p_remove_order_contents_orphans()
BEGIN
	DELETE FROM order_contents
    WHERE order_id NOT IN (
		SELECT order_id
        FROM orders
	);
END //
DELIMITER ;

CALL p_remove_order_contents_orphans();

DROP PROCEDURE IF EXISTS p_book_percent_markdown;
DELIMITER //
CREATE PROCEDURE p_book_percent_markdown(IN book_id_param INT, IN percent_down_param DECIMAL(5,2))
BEGIN
	UPDATE books
    SET price = ROUND(price * ((100 - percent_down_param) / 100), 2)
    WHERE book_id = book_id_param;
END//
DELIMITER ;

CALL p_book_percent_markdown(1, 25);

DROP PROCEDURE IF EXISTS p_global_percent_markdown
DELIMITER //
CREATE PROCEDURE p_global_percent_markdown(IN percent_down_param INT)
BEGIN
	UPDATE books
    SET price = price * ((100 - percent_down_param) / 100);
END//
DELIMITER ;

CALL p_global_percent_markdown(10);
