CREATE VIEW historico_reproducao_usuarios AS
SELECT
user.nome AS `usuario`,
song.musica AS `nome`
FROM SpotifyClone.historico_de_reproducoes AS c
JOIN SpotifyClone.usuarios AS user
ON c.usuario = user.usuario_id
JOIN SpotifyClone.cancoes AS song
ON c.musica = song.cancao_id
ORDER BY `usuario`, `nome`;
