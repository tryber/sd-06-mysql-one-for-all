DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(CODIGO INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(usuario_id) AS 'quantidade_historico' INTO result 
FROM SpotifyClone.historico_reproducao
WHERE usuario_id = 3;         
RETURN result;
END $$
DELIMITER ;
