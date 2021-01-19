CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario AS usuario,
mu.musica_nome AS nome
FROM SpotifyClone.usuarios us
INNER JOIN SpotifyClone.historico hi
ON hi.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.musicas mu
ON hi.musica_id = mu.musica_id
ORDER BY usuario, nome;
