DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
    DELETE FROM seguindo_artistas AS sa WHERE sa.id_usuario = OLD.id;
    DELETE FROM historico_de_reproducoes AS hr WHERE hr.id_usuario = OLD.id;
END; $$
DELIMITER ;
