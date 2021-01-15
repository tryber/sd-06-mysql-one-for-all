USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.usuario
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.historico_tocadas WHERE fk_usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.seguir_historico WHERE usuario_id = OLD.usuario_id;
END; $$
DELIMITER ;
