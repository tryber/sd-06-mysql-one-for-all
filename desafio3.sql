CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.nome As 'usuario', 
C.titulo_cancao AS 'nome' 
FROM SpotifyClone.historico_reproducao AS HR
INNER JOIN SpotifyClone.usuario AS U ON U.usuario_id = HR.usuario_id
INNER JOIN SpotifyClone.cancao AS C ON C.cancao_id = HR.cancao_id
ORDER BY U.nome, C.titulo_cancao;
