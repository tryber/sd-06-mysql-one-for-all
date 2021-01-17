CREATE VIEW top_2_hits_do_momento AS
SELECT cancao AS cancao, COUNT(hr.cancao_id) AS reproducoes
FROM historico_execucoes AS hr
INNER JOIN cancoes AS c ON hr.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC
LIMIT 2;
