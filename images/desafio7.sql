CREATE VIEW perfil_artistas
  AS SELECT
    ar.artist_name artista,
    al.album_name album,
    COUNT(f.user_id) seguidores
  FROM SpotifyClone.Albums al
    INNER JOIN SpotifyClone.Artists ar
      ON ar.artist_id = al.artist_id
    INNER JOIN SpotifyClone.Follow f
      ON f.artist_id = al.artist_id
  GROUP BY ar.artist_name, al.album_name
  ORDER BY `seguidores` DESC, `artista`, `album`;
