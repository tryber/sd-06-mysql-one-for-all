USE SpotifyClone;
DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(nome_cancao) AS cancoes,
COUNT(DISTINCT nome_artista) AS artistas,
COUNT(DISTINCT nome_album) AS albuns
FROM (
	SELECT c.nome AS nome_cancao, al.nome AS nome_album, a.nome AS nome_artista
	FROM album AS al
	LEFT JOIN cancao AS c ON al.album_id = c.album_id
	LEFT JOIN artista AS a ON al.artista_id = a.artista_id
) AS pre_table;

SELECT * FROM estatisticas_musicais;