SELECT a.participant_id,
       SUM(a.calories_burned) AS total_burned,
       RANK() OVER (ORDER BY SUM(a.calories_burned) DESC) AS burn_rank
FROM activity_log a
GROUP BY a.participant_id
ORDER BY total_burned DESC;

