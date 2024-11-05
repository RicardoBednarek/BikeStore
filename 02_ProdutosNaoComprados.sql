SELECT P.*
FROM
	production.products P
	LEFT JOIN sales.order_items OI ON OI.product_id = P.product_id
WHERE
	OI.order_id IS NULL