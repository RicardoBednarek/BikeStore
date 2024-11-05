SELECT C.*
FROM
	sales.customers C
	LEFT JOIN sales.orders O ON O.customer_id = C.customer_id
WHERE O.order_id IS NULL