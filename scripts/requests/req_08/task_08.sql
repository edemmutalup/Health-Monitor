SELECT s1.sleep_date,
       s1.sleep_end_time - s1.sleep_start_time AS duration_1,
       s2.sleep_end_time - s2.sleep_start_time AS duration_2
FROM sleep_log s1
JOIN sleep_log s2
   ON s1.sleep_date = s2.sleep_date
WHERE s1.participant_id = 1
  AND s2.participant_id = 2
  AND (s1.sleep_end_time - s1.sleep_start_time) >
      (s2.sleep_end_time - s2.sleep_start_time);

