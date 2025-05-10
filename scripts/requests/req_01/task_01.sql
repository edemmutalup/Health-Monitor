SELECT participant_id,
       first_name,
       last_name,
       date_of_birth,
       gender
FROM participants
WHERE gender = 'F'
  AND date_of_birth <= '1995-01-01'
ORDER BY last_name;

