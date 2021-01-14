DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.seguindo_artistas AS sa WHERE sa.id_usuario = OLD.id;
    DELETE FROM SpotifyClone.historico_de_reproducoes AS hr WHERE hr.id_usuario = OLD.id;
END; $$
DELIMITER ;
