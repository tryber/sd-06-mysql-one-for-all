DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW

BEGIN
DELETE FROM historico_reproducoes
USING historico_reproducoes INNER JOIN usuarios
ON historico_reproducoes.usuario_id = usuarios.usuario_id;
DELETE FROM seguindo_artistas
USING seguindo_artistas INNER JOIN usuarios
ON seguindo_artistas.usuario_id = usuarios.usuario_id;
END $$

DELIMITER ;
