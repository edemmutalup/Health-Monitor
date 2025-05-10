SELECT p.last_name,
       p.first_name,
       s.sleep_date,
       s.sleep_quality
FROM participants p
INNER JOIN sleep_log s
   ON p.participant_id = s.participant_id
WHERE s.sleep_quality < 5
ORDER BY s.sleep_date DESC;

