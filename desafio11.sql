CREATE VIEW cancoes_premium AS
SELECT mu.musica_nome AS nome,
COUNT(hi.musica_id) AS reproducoes
FROM SpotifyClone.musicas mu
INNER JOIN SpotifyClone.historico hi
ON mu.musica_id = hi.musica_id
INNER JOIN SpotifyClone.usuarios us
ON hi.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.planos pl
ON us.plano_id = pl.plano_id
WHERE pl.plano = "Familiar" OR pl.plano = "Universitário"
GROUP BY hi.musica_id
ORDER BY nome;
