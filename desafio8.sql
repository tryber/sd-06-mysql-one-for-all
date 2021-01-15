DROP TRIGGER IF EXISTS trigger_usuario_delete;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuario
    FOR EACH ROW
BEGIN
    DELETE FROM historico_de_reproducao
    WHERE historico_de_reproducao.usuario_id = OLD.usuario_id;
    DELETE FROM seguindo_artista WHERE seguindo_artista.usuario_id = OLD.usuario_id;
END; $$
DELIMITER ;
