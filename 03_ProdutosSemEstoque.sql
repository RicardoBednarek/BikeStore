SELECT P.* 
FROM
	production.products P
	LEFT JOIN production.stocks S ON S.product_id = P.product_id
WHERE
	S.quantity IS NULL OR S.quantity = 0