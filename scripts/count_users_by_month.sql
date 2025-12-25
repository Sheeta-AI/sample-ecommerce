-- SQL Query to Count User Creation by Month
-- This query aggregates user registrations by month and year
-- Compatible with PostgreSQL
SELECT
  TO_CHAR(DATE_TRUNC('month', created_at), 'Month YYYY') AS month_name,
  COUNT(*) AS user_count
FROM
  users
WHERE
  created_at IS NOT NULL
GROUP BY
  DATE_TRUNC('month', created_at);