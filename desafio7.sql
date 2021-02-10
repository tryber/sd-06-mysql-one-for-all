CREATE VIEW perfil_artistas AS
SELECT ARTISTAS.nome AS "artista",
ALBUNS.nome AS "album",
COUNT(SEGUIDORES.usuario_id) AS "seguidores"
FROM SpotifyClone.seguidores AS SEGUIDORES
INNER JOIN SpotifyClone.artistas AS ARTISTAS
ON ARTISTAS.artista_id = SEGUIDORES.artista_id
INNER JOIN SpotifyClone.albuns AS ALBUNS
ON ALBUNS.artista_id = ARTISTAS.artista_id
GROUP BY artista, album
ORDER BY `seguidores` DESC, `artista`, `album`;
