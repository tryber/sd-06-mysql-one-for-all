CREATE VIEW cancoes_premium AS
SELECT C.nome_cancao AS nome,
COUNT(HE.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_execucoes HE
INNER JOIN SpotifyClone.cancoes C ON C.cancoes_id = HE.cancoes_id
INNER JOIN SpotifyClone.usuarios U ON U.usuario_id = HE.usuario_id
WHERE U.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
