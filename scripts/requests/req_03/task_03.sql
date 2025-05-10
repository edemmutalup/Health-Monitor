SELECT a.participant_id,
       SUM(a.steps_count) AS total_steps
FROM activity_log a
WHERE a.activity_date = '2025-03-01'
GROUP BY a.participant_id
HAVING SUM(a.steps_count) >
   (
     SELECT SUM(steps_count)
     FROM activity_log
     WHERE participant_id = 1
       AND activity_date = '2025-03-01'
   );

