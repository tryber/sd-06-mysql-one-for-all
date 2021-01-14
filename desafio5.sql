CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS 'cancao', COUNT(hr.id_cancao) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c ON hr.id_cancao = c.id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
