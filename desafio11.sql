USE SpotifyClone;
DROP VIEW IF EXISTS cancoes_premium;

CREATE VIEW cancoes_premium AS 
SELECT c.nome AS nome, COUNT(r.cancao_id) AS reproducoes
FROM (
SELECT cancao_id
FROM reproducao AS r
INNER JOIN usuario AS u ON r.usuario_id = u.usuario_id
INNER JOIN plano AS p ON u.plano_id = p.plano_id
WHERE p.nome IN ("familiar", "universitário")
) AS r
INNER JOIN cancao AS c ON r.cancao_id = c.cancao_id
GROUP BY nome
ORDER BY nome;

SELECT * FROM cancoes_premium;
