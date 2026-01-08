SELECT 
    DATE(purchase_date) as revenue_date,
    SUM(total_purchase_amount) as daily_revenue
FROM purchases
WHERE purchase_date >= '2020-01-01'
GROUP BY DATE(purchase_date)
ORDER BY revenue_date ASC
