CREATE VIEW top_2_hits_do_momento AS
SELECT M.nome_musica AS `cancao`, COUNT(H.musica_id) AS `reproducoes`
FROM SpotifyClone.historico_reproducao AS H
INNER JOIN SpotifyClone.musica AS M ON H.musica_id = M.musica_id
GROUP BY H.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
