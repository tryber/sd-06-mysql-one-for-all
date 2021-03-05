DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_historico INT;
SELECT COUNT(cancoes_id)
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = id INTO cancoes_historico;
RETURN cancoes_historico;
END $$
DELIMITER ;
