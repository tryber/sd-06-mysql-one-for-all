CREATE VIEW top_3_artistas
  AS SELECT
    a.artist_name artista,
    COUNT(f.user_id) seguidores
  FROM SpotifyClone.Follow f
    INNER JOIN SpotifyClone.Artists a
      ON f.artist_id = a.artist_id
  ORDER BY `seguidores` DESC, a.artist_name;
