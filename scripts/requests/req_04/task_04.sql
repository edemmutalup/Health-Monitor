SELECT s.participant_id,
       AVG(s.sleep_quality) AS avg_quality
FROM sleep_log s
GROUP BY s.participant_id
HAVING AVG(s.sleep_quality) < ALL (
    SELECT AVG(s2.sleep_quality)
    FROM sleep_log s2
    WHERE s2.participant_id IN (1,2,3)
    GROUP BY s2.participant_id
);

