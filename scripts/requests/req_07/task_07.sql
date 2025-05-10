SELECT p.participant_id,
       p.first_name,
       p.last_name,
       c.condition_id,
       c.disease_name
FROM participants p
FULL JOIN chronic_conditions c
   ON p.participant_id = c.participant_id
ORDER BY p.participant_id, c.condition_id;

