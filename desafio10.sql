DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas DECIMAL(5,2);
SELECT COUNT(*)
FROM SpotifyClone.historico_de_reproducao
WHERE usuario_id = id INTO total_musicas;
RETURN total_musicas;
END $$
    
DELIMITER ;
    
SELECT quantidade_musicas_no_historico(3);
