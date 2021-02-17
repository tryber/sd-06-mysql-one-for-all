CREATE VIEW historico_reproducao_usuarios AS
SELECT
  (u.user_name) AS "usuario",
  (s.song_name) AS "nome"
FROM
  SpotifyClone.songs_history AS sh
    INNER JOIN SpotifyClone.songs AS s
    ON sh.song_id = s.song_id
    INNER JOIN SpotifyClone.users AS u
    ON sh.user_id = u.user_id
ORDER BY `usuario`, `nome`;
