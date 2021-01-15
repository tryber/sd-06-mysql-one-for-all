CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome_musica AS 'cancao', COUNT(ht.fk_musica_id)  AS 'reproducoes'  
FROM SpotifyClone.historico_tocadas AS ht
INNER JOIN SpotifyClone.musica AS m ON ht.fk_musica_id = m.musica_id
GROUP BY ht.fk_musica_id
ORDER BY COUNT(ht.fk_musica_id) DESC, m.nome_musica
LIMIT 2;
