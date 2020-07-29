
CREATE TABLE `RATER_SCHEMA`.`RATER_DATA` (
TASK_ID SERIAL PRIMARY KEY,
DATE DATE NOT NULL,
RATER  ENUM('A','B','C','D','E') NOT NULL,
CORRECT_ANS3 ENUM('LoW','Average','High') NOT NULL,
CORRECT_ANS5 ENUM('Bad','Okay','Intermediate','Great','Exceptional') NOT NULL,
RATER_ANS3 ENUM('LoW','Average','High') NOT NULL,
RATER_ANS5 ENUM('Bad','Okay','Intermediate','Great','Exceptional') NOT NULL 
);