DROP VIEW IF EXISTS cancoes_premium;

CREATE VIEW cancoes_premium AS
SELECT C.nome AS nome,
COUNT(HR.cancoes_id) AS reproducoes 
FROM historico_de_reproducoes AS HR
JOIN usuario AS U ON U.usuario_id = HR.usuario_id
JOIN plano AS P ON P.plano_id = U.plano_id
JOIN cancoes AS C ON HR.cancoes_id = C.cancoes_id
WHERE P.plano_id <> 1
GROUP BY HR.cancoes_id
ORDER BY C.nome;

SELECT * FROM cancoes_premium;
