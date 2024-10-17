-- Function SafeDiv: Divides the first number by the second
-- Returns 0 if the second number is 0
-- Takes 2 arguments: a (INT), b (INT)
-- Returns a / b or 0 if b == 0

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    RETURN (IF (b = 0, 0, a / b));
END //

DELIMITER ;
