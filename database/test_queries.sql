-- SELECT COUNT(*) AS customers FROM customers;

-- SELECT COUNT(*) AS products FROM products;

-- SELECT COUNT(*) AS orders FROM orders;

-- SELECT COUNT(*) AS order_items FROM order_items;


-- SELECT
--     o.order_id,
--     c.customer_id,
--     c.first_name,
--     c.last_name,
--     o.order_date,
--     o.status,
--     o.total_amount
-- FROM orders o
-- JOIN customers c
-- ON o.customer_id = c.customer_id
-- ORDER BY o.order_id;


SELECT
    o.order_id,
    c.first_name,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
ORDER BY o.order_id;