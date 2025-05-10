WITH sleep_ordered AS (
   SELECT
       participant_id,
       sleep_date,
       sleep_quality,
       LAG(sleep_quality, 1) OVER (
           PARTITION BY participant_id
           ORDER BY sleep_date
       ) AS prev_quality
   FROM sleep_log
)
SELECT
   participant_id,
   sleep_date,
   sleep_quality,
   (sleep_quality - prev_quality) AS diff
FROM sleep_ordered
ORDER BY participant_id, sleep_date
LIMIT 5 OFFSET 5;

