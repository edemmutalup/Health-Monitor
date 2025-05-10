DROP TABLE IF EXISTS medication_intake      CASCADE;
DROP TABLE IF EXISTS chronic_conditions     CASCADE;
DROP TABLE IF EXISTS activity_log           CASCADE;
DROP TABLE IF EXISTS medical_checkups       CASCADE;
DROP TABLE IF EXISTS nutrition_log          CASCADE;
DROP TABLE IF EXISTS sleep_log              CASCADE;
DROP TABLE IF EXISTS participants           CASCADE;

-- =====================================================================
-- 1. Таблица participants: участники
-- =====================================================================
CREATE TABLE participants (
    participant_id    BIGSERIAL       PRIMARY KEY,
    first_name        VARCHAR(100)    NOT NULL,
    last_name         VARCHAR(100)    NOT NULL,
    date_of_birth     DATE,
    gender            CHAR(1),
    phone             VARCHAR(20),
    email             VARCHAR(100)
);

-- =====================================================================
-- 2. Таблица chronic_conditions: хронические заболевания
-- =====================================================================
CREATE TABLE chronic_conditions (
    condition_id      BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),
    disease_name      VARCHAR(200)    NOT NULL,
    diagnosis_date    DATE,
    current_status    VARCHAR(100), 
    comments          TEXT
);

-- =====================================================================
-- 3. Таблица sleep_log: дневник сна
-- =====================================================================
CREATE TABLE sleep_log (
    sleep_log_id      BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),
    sleep_date        DATE            NOT NULL,  
    sleep_start_time  TIMESTAMP       NOT NULL,
    sleep_end_time    TIMESTAMP       NOT NULL,
    sleep_quality     SMALLINT        NOT NULL, 
    notes             TEXT
);

-- =====================================================================
-- 4. Таблица nutrition_log: дневник питания
-- =====================================================================
CREATE TABLE nutrition_log (
    nutrition_log_id  BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),
    log_datetime      TIMESTAMP       NOT NULL, 
    meal_type         VARCHAR(50),               
    food_description  TEXT,
    calories          INT,
    proteins          DECIMAL(5,2),
    fats              DECIMAL(5,2),
    carbs             DECIMAL(5,2)
);

-- =====================================================================
-- 5. Таблица activity_log: дневник активности
-- =====================================================================
CREATE TABLE activity_log (
    activity_log_id   BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),
    activity_date     DATE            NOT NULL,
    steps_count       INT,
    distance_km       DECIMAL(6,3),   -- Дистанция в км
    calories_burned   INT
);

-- =====================================================================
-- 6. Таблица medical_checkups: обходы врачей (версионирование SCD 2)
-- =====================================================================
CREATE TABLE medical_checkups (
    checkup_id        BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),
    checkup_date      DATE            NOT NULL,  
    doctor_specialty  VARCHAR(100),
    diagnosis_summary TEXT,
    recommendations   TEXT,

    -- Поля для версионирования (SCD 2)
    effective_start_date DATE         NOT NULL,  
    effective_end_date   DATE,                  
    is_current          BOOLEAN       NOT NULL DEFAULT TRUE
);

-- =====================================================================
-- 7. Таблица medication_intake: назначенные лекарства/витамины (версионирование SCD 2)
-- =====================================================================
CREATE TABLE medication_intake (
    medication_id     BIGSERIAL       PRIMARY KEY,
    participant_id    BIGINT          NOT NULL
        REFERENCES participants(participant_id),

    medication_name   VARCHAR(200)    NOT NULL,
    dosage            VARCHAR(50),    
    times_per_day     VARCHAR(50),    
    notes             TEXT,

    -- Поля для версионирования (SCD 2)
    effective_start_date  DATE        NOT NULL,  
    effective_end_date    DATE,                 
    is_current            BOOLEAN     NOT NULL DEFAULT TRUE
);

-- =====================================================================
-- 8. Создание индексов (при необходимости)
-- =====================================================================
CREATE INDEX idx_sleep_log_date ON sleep_log (sleep_date);
CREATE INDEX idx_activity_date ON activity_log (activity_date);
CREATE INDEX idx_medical_checkups_participant ON medical_checkups (participant_id);
CREATE INDEX idx_medication_intake_participant ON medication_intake (participant_id);