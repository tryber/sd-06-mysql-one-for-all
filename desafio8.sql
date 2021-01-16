DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON usuarios
    FOR EACH ROW
BEGIN
DELETE FROM historico_execucoes WHERE historico_execucoes.usuario_id = OLD.usuario_id;
DELETE FROM seguindo_artistas WHERE seguindo_artistas.usuario_id = OLD.usuario_id;
END; $$
DELIMITER ;

DELETE FROM usuarios WHERE usuario_id = 1;
