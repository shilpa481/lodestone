
DELIMITER $$
CREATE PROCEDURE generate_data()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 10000 DO
INSERT INTO RATER_SCHEMA.RATER_DATA (DATE,RATER,CORRECT_ANS3,CORRECT_ANS5,RATER_ANS3,RATER_ANS5)
	SELECT '2005-10-01' + INTERVAL FLOOR(RAND()*30) DAY, 
    ELT(1+FLOOR(RAND()*5), 'A','B','C','D','E'),
    ELT(1+FLOOR(RAND()*3), 'LoW','Average','High'),
    ELT(1+FLOOR(RAND()*5), 'Bad','Okay','Intermediate','Great','Exceptional'),
    ELT(1+FLOOR(RAND()*3), 'LoW','Average','High'),
	ELT(1+FLOOR(RAND()*5), 'Bad','Okay','Intermediate','Great','Exceptional') 
	FROM DUAL;
    
SET i = i + 1;
  END WHILE;
END$$
DELIMITER ;

CALL generate_data();



SELECT * FROM rater_schema.RATER_DATA;
select count(*) from rater_schema.RATER_DATA;