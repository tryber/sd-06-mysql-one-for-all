CREATE VIEW cancoes_premium AS
SELECT can.nome as nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes hist, SpotifyClone.cancoes can, SpotifyClone.usuario uzer
WHERE hist.cancoes_id = can.cancoes_id AND uzer.usuario_id = hist.usuario_id AND uzer.plano_id BETWEEN 2 AND 3
GROUP BY nome
ORDER BY nome;
