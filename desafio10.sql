DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas_usuario INT;
SELECT COUNT(musica_id)
FROM SpotifyClone.historico_reproducao
WHERE historico_reproducao.usuario_id = id
INTO total_musicas_usuario;
RETURN total_musicas_usuario;
END
$$ DELIMITER;
