SELECT n.participant_id,
       AVG(n.calories) AS avg_calories
FROM nutrition_log n
GROUP BY n.participant_id
HAVING AVG(n.calories) > 2000
ORDER BY avg_calories DESC;

