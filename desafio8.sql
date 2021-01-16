DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Users
FOR EACH ROW
BEGIN
DELETE FROM Users_Reprod_History
WHERE OLD.user_id = user_id;
DELETE FROM Users_Following_Artists
WHERE OLD.user_id = user_id;
END $$
DELIMITER ;
