DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuario int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico int;
SELECT COUNT(*) 
FROM SpotifyClone.historico_de_reproducoes
WHERE historico_de_reproducoes.usuario_id = usuario
GROUP BY historico_de_reproducoes.usuario_id
INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
