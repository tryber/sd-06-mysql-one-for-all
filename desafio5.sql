CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        M.nome AS cancao, COUNT(H.usuario_id) AS reproducoes
    FROM
        SpotifyClone.Historico_de_reproducoes AS H
            INNER JOIN
        SpotifyClone.Musicas AS M ON M.musica_id = H.musica_id
    GROUP BY M.musica_id
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2
