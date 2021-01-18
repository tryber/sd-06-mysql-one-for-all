DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_reproducao
WHERE historico_reproducao.usuario_id = usuario_id INTO qtd_musicas;
RETURN qtd_musicas;
END $$
DELIMITER ;
