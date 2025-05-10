SELECT p.participant_id,
       p.first_name,
       p.last_name,
       m.medication_name,
       m.dosage
FROM participants p
LEFT JOIN medication_intake m
   ON p.participant_id = m.participant_id
  AND m.is_current = TRUE
ORDER BY p.last_name;

