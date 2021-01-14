DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome_usuario VARCHAR(40))	
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_musicas INT;
SELECT COUNT(hist.usuario_id)
FROM spotifyclone.historico_de_reproducoes AS hist
INNER JOIN spotifyclone.usuario AS uzer
ON uzer.nome = nome_usuario AND hist.usuario_id = uzer.usuario_id
INTO quantidade_de_musicas;
RETURN quantidade_de_musicas;
END $$

DELIMITER ;
