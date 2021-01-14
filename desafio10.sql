USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(cliente VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT
COUNT(can.cancoes_id)
FROM SpotifyClone.historico
INNER JOIN SpotifyClone.usuario AS us
ON us.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes AS can
ON can.cancoes_id = historico.cancoes_id
WHERE us.usuario_nm = cliente INTO resultado;
RETURN resultado;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico("Bill");
