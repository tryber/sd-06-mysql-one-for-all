CREATE VIEW cancoes_premium AS 
SELECT C.cancao_nome 'nome', COUNT(H.cancao_id) 'reproducoes'
FROM SpotifyClone.cancoes C INNER JOIN SpotifyClone.historico_reproducao H
ON H.cancao_id = C.cancao_id  INNER JOIN 
(SELECT U.usuario_id, P.plano_nome plano_nome FROM SpotifyClone.usuarios U 
INNER JOIN SpotifyClone.planos P ON U.user_plano_id = P.plano_id) AS USERS
ON USERS.usuario_id = H.usuario_id 
WHERE USERS.plano_nome = 'familiar' OR USERS.plano_nome = 'Universitário' 
GROUP BY nome ORDER BY nome;
