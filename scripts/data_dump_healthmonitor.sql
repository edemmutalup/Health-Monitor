-- ========= 1. Таблица participants =========
INSERT INTO participants (first_name, last_name, date_of_birth, gender, phone, email)
VALUES
('Иван', 'Иванов', '1990-01-05', 'M', '89001112233', 'ivanov@example.com'),
('Пётр', 'Петров', '1985-02-10', 'M', '89002223344', 'petrov@example.com'),
('Мария', 'Сидорова', '1993-03-15', 'F', '89003334455', 'sidorova@example.com'),
('Анна', 'Козлова', '1992-07-21', 'F', '89004445566', 'kozlova@example.com'),
('Сергей', 'Егоров', '1998-11-30', 'M', '89005556677', 'egorov@example.com'),
('Наталья', 'Смирнова', '1995-04-12', 'F', '89006667788', 'smirnova@example.com'),
('Дмитрий', 'Волков', '1988-09-08', 'M', '89007778899', 'volkov@example.com'),
('Екатерина', 'Лебедева', '1991-03-25', 'F', '89008889900', 'lebedeva@example.com'),
('Александр', 'Морозов', '1983-06-17', 'M', '89009990011', 'morozov@example.com'),
('Ольга', 'Федорова', '1994-10-05', 'F', '89001110022', 'fedorova@example.com'),
('Михаил', 'Соколов', '1986-12-20', 'M', '89002220033', 'sokolov@example.com'),
('Юлия', 'Кудрявцева', '1990-08-15', 'F', '89003330044', 'kudryavtseva@example.com'),
('Андрей', 'Попов', '1987-11-11', 'M', '89004440055', 'popov@example.com'),
('Виктория', 'Громова', '1993-05-27', 'F', '89005550066', 'gromova@example.com'),
('Руслан', 'Новиков', '1991-07-30', 'M', '89006660077', 'novikov@example.com');

-- ========= 2. Таблица chronic_conditions =========
INSERT INTO chronic_conditions (participant_id, disease_name, diagnosis_date, current_status, comments)
VALUES
(1, 'Бронхиальная астма', '2018-03-10', 'обострение', 'Частые приступы'),
(2, 'Гипертония', '2016-05-20', 'под контролем', 'Принимает препараты регулярно'),
(3, 'Диабет 2 типа', '2019-09-15', 'под контролем', 'Следит за уровнем сахара'),
(4, 'Остеохондроз', '2017-11-25', 'обострение', 'Боли в спине'),
(5, 'Хронический гастрит', '2020-01-10', 'под контролем', 'Соблюдает диету'),
(6, 'Бронхиальная астма', '2015-06-30', 'под контролем', 'Регулярный контроль врача'),
(7, 'Гипертония', '2018-08-08', 'обострение', 'Недавно изменена терапия'),
(8, 'Диабет 2 типа', '2020-04-18', 'под контролем', 'Контроль уровня глюкозы'),
(9, 'Артрит', '2017-03-05', 'обострение', 'Слабые боли в суставах'),
(10, 'Остеохондроз', '2016-12-12', 'под контролем', 'Упражнения рекомендованы'),
(11, 'Гипертония', '2019-07-07', 'под контролем', 'Стабильно'),
(12, 'Бронхиальная астма', '2018-10-10', 'обострение', 'Наблюдается сезонность'),
(13, 'Диабет 2 типа', '2021-02-20', 'под контролем', 'Недавно диагностирован'),
(14, 'Хронический ринит', '2017-05-05', 'обострение', 'Постоянный насморк'),
(15, 'Гипертония', '2018-09-09', 'под контролем', 'Стабильно');

-- ========= 3. Таблица sleep_log =========
INSERT INTO sleep_log (participant_id, sleep_date, sleep_start_time, sleep_end_time, sleep_quality, notes)
VALUES
(1, '2025-03-01', '2025-03-01 23:00:00', '2025-03-02 07:00:00', 8, 'Хороший сон'),
(2, '2025-03-01', '2025-03-01 22:30:00', '2025-03-02 06:30:00', 7, 'Немного беспокойный сон'),
(3, '2025-03-01', '2025-03-01 23:15:00', '2025-03-02 07:15:00', 9, 'Отличный сон'),
(4, '2025-03-01', '2025-03-01 00:00:00', '2025-03-02 08:00:00', 6, 'Долго засыпал'),
(5, '2025-03-01', '2025-03-01 23:45:00', '2025-03-02 07:30:00', 7, 'Нормально'),
(6, '2025-03-02', '2025-03-02 23:00:00', '2025-03-03 06:30:00', 8, 'Спокойный сон'),
(7, '2025-03-02', '2025-03-02 22:45:00', '2025-03-03 06:45:00', 7, 'Небольшие пробуждения'),
(8, '2025-03-02', '2025-03-02 23:30:00', '2025-03-03 07:30:00', 8, 'Выспалась'),
(9, '2025-03-02', '2025-03-02 23:15:00', '2025-03-03 07:00:00', 7, 'Хороший, но короче обычного'),
(10, '2025-03-02', '2025-03-02 22:30:00', '2025-03-03 06:30:00', 6, 'Усталость'),
(11, '2025-03-03', '2025-03-03 23:00:00', '2025-03-04 07:00:00', 8, 'Нормально'),
(12, '2025-03-03', '2025-03-03 23:30:00', '2025-03-04 07:30:00', 9, 'Отлично'),
(13, '2025-03-03', '2025-03-03 22:45:00', '2025-03-04 06:45:00', 7, 'Немного беспокойный'),
(14, '2025-03-03', '2025-03-03 23:15:00', '2025-03-04 07:15:00', 8, 'Хороший'),
(15, '2025-03-03', '2025-03-03 22:30:00', '2025-03-04 06:30:00', 7, 'Усталость');

-- ========= 4. Таблица nutrition_log =========
INSERT INTO nutrition_log (participant_id, log_datetime, meal_type, food_description, calories, proteins, fats, carbs)
VALUES
(1, '2025-03-01 08:00:00', 'завтрак', 'Овсянка с фруктами, чай', 350, 10.5, 5.0, 60.0),
(2, '2025-03-01 09:00:00', 'завтрак', 'Яичница, тост, сок', 300, 15.0, 10.0, 30.0),
(3, '2025-03-01 12:30:00', 'обед', 'Салат, курица, рис', 500, 25.0, 12.0, 50.0),
(4, '2025-03-01 19:00:00', 'ужин', 'Рыба, овощи, картофель', 550, 30.0, 15.0, 70.0),
(5, '2025-03-01 14:00:00', 'обед', 'Суп, хлеб', 400, 20.0, 10.0, 45.0),
(6, '2025-03-02 08:30:00', 'завтрак', 'Каша, фрукты', 350, 10.0, 5.0, 55.0),
(7, '2025-03-02 13:00:00', 'обед', 'Паста, соус, салат', 600, 22.0, 18.0, 65.0),
(8, '2025-03-02 20:00:00', 'ужин', 'Стейк, овощи', 700, 35.0, 20.0, 40.0),
(9, '2025-03-02 10:00:00', 'завтрак', 'Блинчики, варенье', 400, 8.0, 12.0, 50.0),
(10, '2025-03-02 15:00:00', 'обед', 'Сэндвич, салат', 450, 18.0, 12.0, 55.0),
(11, '2025-03-03 08:00:00', 'завтрак', 'Йогурт, гранола, фрукты', 350, 12.0, 8.0, 50.0),
(12, '2025-03-03 12:00:00', 'обед', 'Суп, хлеб, овощи', 400, 15.0, 10.0, 45.0),
(13, '2025-03-03 18:00:00', 'ужин', 'Паста, соус, сыр', 550, 20.0, 15.0, 60.0),
(14, '2025-03-03 09:00:00', 'завтрак', 'Омлет, тост', 320, 14.0, 10.0, 30.0),
(15, '2025-03-03 14:00:00', 'обед', 'Рис, курица, салат', 500, 25.0, 10.0, 60.0);

-- ========= 5. Таблица activity_log =========
INSERT INTO activity_log (participant_id, activity_date, steps_count, distance_km, calories_burned)
VALUES
(1, '2025-03-01', 10000, 7.5, 300),
(2, '2025-03-01', 8000, 6.0, 250),
(3, '2025-03-01', 12000, 9.0, 350),
(4, '2025-03-01', 5000, 3.5, 150),
(5, '2025-03-01', 11000, 8.0, 320),
(6, '2025-03-02', 9000, 6.5, 280),
(7, '2025-03-02', 7000, 5.0, 220),
(8, '2025-03-02', 13000, 9.5, 360),
(9, '2025-03-02', 8000, 6.0, 250),
(10, '2025-03-02', 9500, 7.0, 290),
(11, '2025-03-03', 10500, 7.8, 310),
(12, '2025-03-03', 11500, 8.5, 330),
(13, '2025-03-03', 10000, 7.0, 300),
(14, '2025-03-03', 9000, 6.3, 280),
(15, '2025-03-03', 12000, 8.0, 350);

-- ========= 6. Таблица medical_checkups (SCD 2) =========
-- Для каждого участника создаём 2 версии: старая (is_current = FALSE) и новая (is_current = TRUE)
-- Участник 1
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (1, '2025-02-01', 'Терапевт', 'Общее состояние удовлетворительное', 'Регулярный контроль давления', '2025-02-01', '2025-02-28', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (1, '2025-03-01', 'Кардиолог', 'Небольшое повышение давления', 'Сниженная физическая нагрузка', '2025-03-01', NULL, TRUE);

-- Участник 2
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (2, '2025-01-15', 'Стоматолог', 'Профилактический осмотр', 'Регулярная чистка зубов', '2025-01-15', '2025-02-14', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (2, '2025-02-15', 'Терапевт', 'Легкая простуда', 'Прием витаминов', '2025-02-15', NULL, TRUE);

-- Участник 3
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (3, '2025-01-10', 'Терапевт', 'Общее состояние хорошее', 'Продолжать режим', '2025-01-10', '2025-02-09', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (3, '2025-02-10', 'Кардиолог', 'Легкое повышение давления', 'Диета, контроль давления', '2025-02-10', NULL, TRUE);

-- Участник 4
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (4, '2025-01-20', 'Невролог', 'Небольшие головные боли', 'Отдых и витамины', '2025-01-20', '2025-02-19', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (4, '2025-02-20', 'Терапевт', 'Стабильное состояние', 'Регулярный осмотр', '2025-02-20', NULL, TRUE);

-- Участник 5
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (5, '2025-01-25', 'Терапевт', 'Умеренное давление', 'Снижение соли в рационе', '2025-01-25', '2025-02-24', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (5, '2025-02-25', 'Кардиолог', 'Немного повышенное давление', 'Контроль давления', '2025-02-25', NULL, TRUE);

-- Участник 6
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (6, '2025-02-05', 'Терапевт', 'Хорошее состояние', 'Продолжать режим', '2025-02-05', '2025-03-04', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (6, '2025-03-05', 'Кардиолог', 'Легкое повышение давления', 'Наблюдение', '2025-03-05', NULL, TRUE);

-- Участник 7
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (7, '2025-01-30', 'Стоматолог', 'Профилактический осмотр', 'Чистка зубов', '2025-01-30', '2025-02-28', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (7, '2025-02-28', 'Терапевт', 'Легкая простуда', 'Прием витаминов', '2025-02-28', NULL, TRUE);

-- Участник 8
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (8, '2025-02-01', 'Терапевт', 'Хорошее состояние', 'Регулярный осмотр', '2025-02-01', '2025-02-28', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (8, '2025-03-01', 'Кардиолог', 'Небольшое повышение давления', 'Диета и контроль давления', '2025-03-01', NULL, TRUE);

-- Участник 9
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (9, '2025-01-18', 'Терапевт', 'Стабильное состояние', 'Продолжать наблюдение', '2025-01-18', '2025-02-17', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (9, '2025-02-18', 'Кардиолог', 'Немного повышенное давление', 'Снижение физической нагрузки', '2025-02-18', NULL, TRUE);

-- Участник 10
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (10, '2025-01-22', 'Терапевт', 'Умеренное состояние', 'Регулярный осмотр', '2025-01-22', '2025-02-21', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (10, '2025-02-22', 'Кардиолог', 'Легкое повышение давления', 'Контроль питания', '2025-02-22', NULL, TRUE);

-- Участник 11
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (11, '2025-01-28', 'Терапевт', 'Хорошее состояние', 'Поддерживать режим', '2025-01-28', '2025-02-27', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (11, '2025-02-27', 'Кардиолог', 'Немного повышенное давление', 'Умеренная активность', '2025-02-27', NULL, TRUE);

-- Участник 12
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (12, '2025-02-03', 'Терапевт', 'Общее состояние удовлетворительное', 'Регулярный контроль', '2025-02-03', '2025-03-02', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (12, '2025-03-03', 'Кардиолог', 'Легкое повышение давления', 'Диета и физическая активность', '2025-03-03', NULL, TRUE);

-- Участник 13
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (13, '2025-02-07', 'Терапевт', 'Стабильное состояние', 'Поддерживать образ жизни', '2025-02-07', '2025-03-06', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (13, '2025-03-07', 'Кардиолог', 'Небольшое повышение давления', 'Контроль питания', '2025-03-07', NULL, TRUE);

-- Участник 14
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (14, '2025-02-12', 'Невролог', 'Небольшие головные боли', 'Отдых, витамины', '2025-02-12', '2025-03-11', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (14, '2025-03-12', 'Терапевт', 'Хорошее состояние', 'Регулярный осмотр', '2025-03-12', NULL, TRUE);

-- Участник 15
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (15, '2025-02-15', 'Терапевт', 'Стабильное состояние', 'Продолжать наблюдение', '2025-02-15', '2025-03-14', FALSE);
INSERT INTO medical_checkups (participant_id, checkup_date, doctor_specialty, diagnosis_summary, recommendations, effective_start_date, effective_end_date, is_current)
VALUES (15, '2025-03-15', 'Кардиолог', 'Легкое повышение давления', 'Диета и физическая активность', '2025-03-15', NULL, TRUE);

-- ========= 7. Таблица medication_intake (SCD 2) =========
-- Для каждого участника создаём 2 версии назначений
-- Участник 1
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (1, 'Витамин D', '1000 МЕ', '1 раз в день', 'Принимать утром', '2025-02-01', '2025-02-28', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (1, 'Витамин D', '2000 МЕ', '1 раз в день', 'Увеличенная доза', '2025-03-01', NULL, TRUE);

-- Участник 2
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (2, 'Омега-3', '1 капсула', '2 раза в день', 'Утром и вечером', '2025-01-15', '2025-02-14', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (2, 'Омега-3', '2 капсулы', '2 раза в день', 'Увеличенная доза', '2025-02-15', NULL, TRUE);

-- Участник 3
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (3, 'Витамин C', '500 мг', '1 раз в день', 'Принимать утром', '2025-01-10', '2025-02-09', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (3, 'Витамин C', '1000 мг', '1 раз в день', 'Увеличенная доза', '2025-02-10', NULL, TRUE);

-- Участник 4
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (4, 'Магний', '250 мг', '1 раз в день', 'Принимать вечером', '2025-01-20', '2025-02-19', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (4, 'Магний', '500 мг', '1 раз в день', 'Увеличенная доза', '2025-02-20', NULL, TRUE);

-- Участник 5
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (5, 'Витамин B12', '1000 мкг', '1 раз в день', 'Принимать утром', '2025-01-25', '2025-02-24', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (5, 'Витамин B12', '2000 мкг', '1 раз в день', 'Увеличенная доза', '2025-02-25', NULL, TRUE);

-- Участник 6
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (6, 'Кальций', '500 мг', '1 раз в день', 'Принимать с пищей', '2025-02-05', '2025-03-04', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (6, 'Кальций', '1000 мг', '1 раз в день', 'Увеличенная доза', '2025-03-05', NULL, TRUE);

-- Участник 7
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (7, 'Витамин E', '400 МЕ', '1 раз в день', 'Принимать вечером', '2025-01-30', '2025-02-28', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (7, 'Витамин E', '800 МЕ', '1 раз в день', 'Увеличенная доза', '2025-02-28', NULL, TRUE);

-- Участник 8
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (8, 'Омега-3', '1 капсула', '2 раза в день', 'Принимать с едой', '2025-02-01', '2025-02-28', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (8, 'Омега-3', '2 капсулы', '2 раза в день', 'Увеличенная доза', '2025-03-01', NULL, TRUE);

-- Участник 9
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (9, 'Витамин D', '1000 МЕ', '1 раз в день', 'Принимать утром', '2025-01-18', '2025-02-17', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (9, 'Витамин D', '2000 МЕ', '1 раз в день', 'Увеличенная доза', '2025-02-18', NULL, TRUE);

-- Участник 10
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (10, 'Витамин C', '500 мг', '1 раз в день', 'Принимать утром', '2025-01-22', '2025-02-21', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (10, 'Витамин C', '1000 мг', '1 раз в день', 'Увеличенная доза', '2025-02-22', NULL, TRUE);

-- Участник 11
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (11, 'Магний', '250 мг', '1 раз в день', 'Принимать вечером', '2025-01-28', '2025-02-27', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (11, 'Магний', '500 мг', '1 раз в день', 'Увеличенная доза', '2025-02-27', NULL, TRUE);

-- Участник 12
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (12, 'Витамин B12', '1000 мкг', '1 раз в день', 'Принимать утром', '2025-02-03', '2025-03-02', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (12, 'Витамин B12', '2000 мкг', '1 раз в день', 'Увеличенная доза', '2025-03-03', NULL, TRUE);

-- Участник 13
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (13, 'Омега-3', '1 капсула', '2 раза в день', 'Принимать с едой', '2025-02-07', '2025-03-06', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (13, 'Омега-3', '2 капсулы', '2 раза в день', 'Увеличенная доза', '2025-03-07', NULL, TRUE);

-- Участник 14
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (14, 'Витамин D', '1000 МЕ', '1 раз в день', 'Принимать утром', '2025-02-12', '2025-03-11', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (14, 'Витамин D', '2000 МЕ', '1 раз в день', 'Увеличенная доза', '2025-03-12', NULL, TRUE);

-- Участник 15
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (15, 'Витамин C', '500 мг', '1 раз в день', 'Принимать утром', '2025-02-15', '2025-03-14', FALSE);
INSERT INTO medication_intake (participant_id, medication_name, dosage, times_per_day, notes, effective_start_date, effective_end_date, is_current)
VALUES (15, 'Витамин C', '1000 мг', '1 раз в день', 'Увеличенная доза', '2025-03-15', NULL, TRUE);
