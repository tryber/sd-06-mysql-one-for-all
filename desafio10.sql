DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_historico INT;
SELECT COUNT(cancoes_id)
FROM SpotifyClone.historico_execucoes
GROUP BY usuario_id
HAVING SpotifyClone.historico_execucoes.usuario_id = id INTO cancoes_historico;
RETURN cancoes_historico;
END $$
DELIMITER ; 

SELECT quantidade_musicas_no_historico(3);
