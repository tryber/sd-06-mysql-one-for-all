DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(100))
RETURNS INT DETERMINISTIC
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(cancao_id)
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id=id
GROUP BY usuario_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
