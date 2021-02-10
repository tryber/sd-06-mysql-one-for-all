CREATE VIEW estatisticas_musicais AS
SELECT COUNT(MUSICAS.musicas_id) AS "cancoes",
(SELECT COUNT(ARTISTAS.artista_id) FROM artistas AS ARTISTAS) AS "artistas",
(SELECT COUNT(ALBUNS.album_id) FROM albuns AS ALBUNS) AS "albuns"
FROM musicas AS MUSICAS;
