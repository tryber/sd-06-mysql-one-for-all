CREATE VIEW perfil_artistas AS
SELECT
  a.nome_artista AS `artista`,
  a2.nome_album as `album`,
  COUNT(*) AS `seguidores`
FROM SpotifyClone.seguidores AS s
  INNER JOIN SpotifyClone.artistas AS a
    ON s.id_artista = a.id_artista
  INNER JOIN SpotifyClone.albuns AS a2
    ON a2.artista_associado = a.id_artista
GROUP BY a2.id_album
ORDER BY `seguidores` DESC, `artista`, `album`;
