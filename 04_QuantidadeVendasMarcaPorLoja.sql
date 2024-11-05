DECLARE @brand_id INT

SET @brand_id = 1

SELECT 
	B.brand_name, S.store_name, COUNT(1) AS sales_quantity
FROM
	production.brands B
	INNER JOIN production.products P ON P.brand_id = B.brand_id
	INNER JOIN sales.order_items OI ON OI.product_id = P.product_id
	INNER JOIN sales.orders O ON O.order_id = OI.order_id
	INNER JOIN sales.stores S ON S.store_id = O.order_id
WHERE
	B.brand_id = @brand_id
GROUP BY
	B.brand_name, S.store_name
ORDER BY
	B.brand_name, sales_quantity DESC, S.store_name