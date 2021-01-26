CREATE VIEW cancoes_premium
SELECT c.cancao AS nome,
COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historico_de_reproducao AS h
ON(h.cancao_id = c.id)
JOIN SpotifyClone.usuarios AS u
ON(u.id = h.usuario_id)
JOIN SpotifyClone.planos AS p
ON(p.id = u.plano_id)
WHERE p.id IN(2, 3)
GROUP BY `nome`
ORDER BY 1 ASC;
