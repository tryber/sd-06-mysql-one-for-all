CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.Historico_de_reproducoes AS H
        INNER JOIN
    SpotifyClone.Usuarios AS U ON U.usuario_id = H.usuario_id
WHERE
    U.usuario_id = id INTO quantidade;
RETURN quantidade;
END$$
DELIMITER ;
