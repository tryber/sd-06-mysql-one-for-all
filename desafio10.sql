DELIMITER $$
CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN 
DECLARE QuantidadeMusicasNoHistorico INT;
SELECT 
COUNT(id_cancao)
FROM historicos WHERE id_usuario = id INTO QuantidadeMusicasNoHistorico;
RETURN QuantidadeMusicasNoHistorico;
END $$
DELIMITER  ;
