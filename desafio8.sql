DROP TRIGGER IF EXISTS trigger_usuario_delete;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM historico_reproducao WHERE usuario_id = old.usuario_id;
DELETE FROM segue_artistas WHERE usuario_id = old.usuario_id;
END;
$$ DELIMITER ;
