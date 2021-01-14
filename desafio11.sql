CREATE VIEW cancoes_premium AS
SELECT C.cancao AS `nome`,
COUNT(HR.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico_reproducoes AS HR, SpotifyClone.cancoes AS C
WHERE HR.usuario_id NOT IN (1, 4) AND C.cancao_id = HR.cancao_id
GROUP BY HR.cancao_id
ORDER BY `nome`;
