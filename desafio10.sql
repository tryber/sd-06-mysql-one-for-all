DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(usuario_id)
FROM historico AS HISTORICO
WHERE HISTORICO.usuario_id = id
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
