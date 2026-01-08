
SELECT 
    product_category,
    SUM(total_purchase_amount) as total_revenue,
    COUNT(*) as number_of_purchases,
    AVG(total_purchase_amount) as avg_purchase_amount
FROM purchases
GROUP BY product_category
ORDER BY total_revenue DESC
