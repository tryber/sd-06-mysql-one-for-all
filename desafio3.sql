CREATE VIEW historico_reproducao_usuarios
  AS SELECT
    u.user_name usuario,
    s.song_name nome
  FROM SpotifyClone.History h
    INNER JOIN SpotifyClone.Users u
      ON h.user_id = u.user_id
    INNER JOIN SpotifyClone.Songs s
      ON s.song_id = h.song_id
  ORDER BY `usuario`, `nome`;
  