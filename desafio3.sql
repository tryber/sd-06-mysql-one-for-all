CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user AS 'usuario', c.song AS 'nome'
FROM SpotifyClone.reproduction_history AS r
INNER JOIN SpotifyClone.users AS u ON r.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS c ON r.song_id = c.song_id
ORDER BY `usuario`, `nome`;
