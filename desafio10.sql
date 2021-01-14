DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
DECLARE num_plays INT;
SELECT num.qtd
FROM (SELECT usuario_id, COUNT(*) AS qtd
FROM historico
GROUP BY usuario_id) AS num
INNER JOIN usuarios AS u ON num.usuario_id = u.id
WHERE usuario_id = 3 INTO num_plays;
RETURN num_plays;
END $$

DELIMITER ;
