DECLARE @order_id INT

SET @order_id = 1

SELECT *
FROM
	staffs
WHERE
	staff_id NOT IN (SELECT staff_id FROM orders WHERE order_id = @order_id)
