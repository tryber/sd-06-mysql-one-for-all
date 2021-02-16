CREATE VIEW perfil_artistas AS
SELECT
  (ar.artist_name) AS "artista",
  (al.album_name) AS "album",
  COUNT(fa.artist_id) AS "seguidores"
FROM 
  SpotifyClone.artists AS ar
    INNER JOIN SpotifyClone.albuns AS al
    ON ar.artist_id = al.artist_id
    INNER JOIN SpotifyClone.followed_artists AS fa
    ON ar.artist_id = fa.artist_id
GROUP BY `artista`, `album`
ORDER BY
  `seguidores` DESC,
  `artista` ASC,
  `album` ASC;
  