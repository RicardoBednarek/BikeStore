SELECT P.*
FROM
	products P
	LEFT JOIN order_items OI ON OI.product_id = P.product_id
WHERE
	OI.order_id IS NULL