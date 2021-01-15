DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN 
DECLARE quantidade_musicas_no_historico INT;
SELECT 
COUNT(id_cancao)
FROM SpotifyClone.historicos WHERE id_usuario = id INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$
    
DELIMITER  ; 
