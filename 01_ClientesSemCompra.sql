SELECT C.*
FROM
	customers C
	LEFT JOIN orders O ON O.customer_id = C.customer_id
WHERE O.order_id IS NULL