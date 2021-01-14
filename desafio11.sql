CREATE VIEW cancoes_premium AS
SELECT c.nome AS 'nome', COUNT(hr.id_cancao) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c ON c.id = hr.id_cancao
INNER JOIN SpotifyClone.usuario AS u ON u.id = hr.id_usuario
INNER JOIN SpotifyClone.plano AS p ON p.id = u.id_plano
WHERE p.nome IN('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;
