CREATE VIEW historico_reproducao_usuarios AS
SELECT 
usu.usuario_nome AS usuario,
can.cancao_nome AS nome
FROM SpotifyClone.table_historico AS his
INNER JOIN SpotifyClone.table_usuarios AS usu
ON usu.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.table_cancoes AS can
ON can.cancao_id = his.cancao_id
ORDER BY usuario ASC, nome ASC;
