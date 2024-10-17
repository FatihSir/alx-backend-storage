-- Stored procedure ComputeAverageScoreForUser:
-- Computes and updates the average score for a student in the 'users' table
-- Input:
-- user_id: ID from the users table

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    UPDATE users
    SET average_score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id)
    WHERE id = user_id;

END $$

DELIMITER ;
