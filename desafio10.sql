DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_musicas_no_historico INT;

  SELECT
    COUNT(*)
  FROM
    SpotifyClone.historic
  WHERE
    historic.user_id = user
  GROUP BY
    historic.user_id
  INTO quantidade_musicas_no_historico;
  RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;

