CREATE VIEW cancoes_premium AS
SELECT C.titulo_cancao AS 'nome', COUNT(H.cancao_id) AS 'reproducoes'
FROM historico_reproducao AS H
INNER JOIN cancao AS C ON H.cancao_id = C.cancao_id
INNER JOIN usuario AS U On H.usuario_id = U.usuario_id 
INNER JOIN plano AS P ON P.plano_id = U.plano_id
WHERE P.plano_id <> 1
GROUP BY titulo_cancao
ORDER BY titulo_cancao;
