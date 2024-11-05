DECLARE @order_id INT

SET @order_id = 1

SELECT *
FROM
	sales.staffs
WHERE
	staff_id NOT IN (SELECT staff_id FROM sales.orders WHERE order_id = @order_id)
