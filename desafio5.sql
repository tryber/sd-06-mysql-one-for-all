CREATE VIEW top_2_hits_do_momento AS
SELECT
MN.musica_nome AS cancao,
COUNT(HR.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS MN,
SpotifyClone.historico_de_reproducoes AS HR

WHERE MN.musica_id = HR.musica_id GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
