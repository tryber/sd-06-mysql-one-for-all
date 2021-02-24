DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN 
DECLARE quantidade_musicas_no_historico INT;
SELECT 
COUNT(U.usuario_id)
FROM SpotifyClone.historico_de_reproducoes AS U
WHERE U.usuario_id = id INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$
DELIMITER ;
