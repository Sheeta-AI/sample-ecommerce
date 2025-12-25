-- SQL Script to Randomize created_at Timestamps for All Users
-- Sets random created_at dates between January 1, 2020 and November 15, 2025
-- Update all users with random created_at timestamps
UPDATE users
SET
  created_at = TIMESTAMPADD (
    SECOND,
    FLOOR(
      RAND () * TIMESTAMPDIFF (
        SECOND,
        '2020-01-01 00:00:00',
        '2025-11-15 23:59:59'
      )
    ),
    '2020-01-01 00:00:00'
  );

-- Alternative version for PostgreSQL:
-- UPDATE users
-- SET created_at = '2020-01-01 00:00:00'::timestamp +
--                  RANDOM() * ('2025-11-15 23:59:59'::timestamp - '2020-01-01 00:00:00'::timestamp);
-- Alternative version for SQLite:
-- UPDATE users
-- SET created_at = datetime('2020-01-01 00:00:00',
--                          '+' || (ABS(RANDOM()) % (strftime('%s', '2025-11-15 23:59:59') - strftime('%s', '2020-01-01 00:00:00'))) || ' seconds');
-- Verify the updates (optional)
-- SELECT MIN(created_at) AS earliest_created_at,
--        MAX(created_at) AS latest_created_at,
--        COUNT(*) AS total_users
-- FROM users;