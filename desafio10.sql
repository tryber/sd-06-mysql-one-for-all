USE spotifyclone;

DELIMITER $$
create function quantidade_musicas_no_historico(nomeId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(cancoes_id) FROM usuarios_has_cancoes WHERE usuarios_id = nomeId
INTO result;
RETURN result;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
