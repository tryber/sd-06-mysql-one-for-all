CREATE VIEW cancoes_premium AS
SELECT
M.musica_nome AS nome,
COUNT(HR.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS M,
SpotifyClone.historico_de_reproducoes AS HR,
SpotifyClone.usuarios AS U
WHERE U.usuario_id = HR.usuario_id 
AND HR.musica_id = M.musica_id
AND U.plano_id BETWEEN 2 AND 3
GROUP BY nome
ORDER BY nome;
