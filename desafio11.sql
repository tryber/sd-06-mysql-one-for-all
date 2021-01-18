DROP VIEW IF EXISTS cancoes_premium;

CREATE VIEW cancoes_premium AS
SELECT C.titulo_cancao AS 'nome',
COUNT(HR.cancao_id) AS 'reproducoes'
FROM historico_reproducao AS HR
LEFT JOIN usuario AS U ON U.usuario_id = HR.usuario_id
LEFT JOIN plano AS P ON P.plano_id = U.plano_id
LEFT JOIN cancoes AS C ON HR.cancao_id = C.cancao_id
WHERE P.nome_plano IN ('familiar', 'universitário')
GROUP BY HR.cancao_id
ORDER BY `nome`;

SELECT * FROM cancoes_premium;
