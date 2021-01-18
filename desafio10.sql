DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (art DECIMAL)
RETURNS INT READS SQL DATA 
BEGIN
RETURN (
SELECT COUNT(*) from SpotifyClone.historico as `his`
WHERE `his`.USUARIO_ID = art);
END$$
DELIMITER ;
