USE book_boutique;

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


