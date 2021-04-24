DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT A.artista_nome AS `artista`,
B.album AS `album`
FROM SpotifyClone.artistas AS A, SpotifyClone.albuns AS B
WHERE A.artista_id = B.artista_id AND A.artista_nome = nome;
END $$

DELIMITER ;


CALL albuns_do_artista('Walter Phoenix');
