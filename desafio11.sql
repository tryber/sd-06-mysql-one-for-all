DROP VIEW IF EXISTS cancoes_premium;

CREATE VIEW cancoes_premium AS (
SELECT C.nome AS 'nome',
COUNT(HR.cancoes_id) AS 'reproducoes'
FROM historico_de_reproducoes AS HR
LEFT JOIN usuario AS U ON U.usuario_id = HR.usuario_id
LEFT JOIN plano AS P ON P.plano_id = U.plano_id
LEFT JOIN cancoes AS C ON HR.cancoes_id = C.cancoes_id
WHERE P.nome IN ('familiar', 'universitário')
GROUP BY HR.cancoes_id
ORDER BY C.nome
);
