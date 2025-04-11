USE book_boutique;

drop procedure if exists p_checkForOrderOrphans;

Delimiter //
Create procedure p_checkForOrderOrphans()
Deterministic
begin
	drop view if exists order_orphan_view;
	Create view order_orphan_view as
    select customer_id
    from orders
    where customer_id not in (select customer_id from customers);
    
    select * from order_orphan_view;
end //
Delimiter ;

call p_checkForOrderOrphans;


