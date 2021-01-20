DELIMITER $$
CREATE FUNCTION  quantidade_musicas_no_historico(identificador INT)
RETURNS INT READS SQL DATA
BEGIN
RETURN (
    SELECT COUNT(H.cancao_id) AS quantidade  FROM historico_reproducao AS H
    WHERE H.usuario_id = identificador
);
END $$

DELIMITER ;
