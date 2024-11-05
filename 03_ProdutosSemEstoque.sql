SELECT P.* 
FROM
	products P
	LEFT JOIN stocks S ON S.product_id = P.product_id
WHERE
	S.quantity IS NULL OR S.quantity = 0