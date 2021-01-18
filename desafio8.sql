DELIMITER $

CREATE TRIGGER `trigger_usuario_delete`
BEFORE DELETE ON userstable
FOR EACH ROW
BEGIN
DELETE FROM reproductiontable WHERE user_id = OLD.user_id;
DELETE FROM followerstable WHERE user_id = OLD.user_id;
END$

DELIMITER ;
