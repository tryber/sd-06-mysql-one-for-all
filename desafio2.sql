CREATE VIEW estatisticas_musicais
  AS SELECT
    COUNT(s.song_id) cancoes,
    COUNT(ar.artist_id) artistas,
    COUNT(al.album_id) albuns
  FROM SpotifyClone.Songs s
    INNER JOIN SpotifyClone.Artists ar
      ON s.artist_id = ar.artist_id
    INNER JOIN SpotifyClone.Albums al
      ON s.album_id =al.album_id;
