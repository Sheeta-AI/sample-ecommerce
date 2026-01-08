
SELECT 
    payment_method,
    SUM(total_purchase_amount) as total_revenue,
    COUNT(*) as transaction_count,
    ROUND(AVG(total_purchase_amount)::numeric, 2) as avg_transaction_value
FROM purchases
WHERE payment_method IS NOT NULL
GROUP BY payment_method
ORDER BY total_revenue DESC
