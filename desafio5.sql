CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        cancoes.cancao, COUNT(tocadas.id_cancao) AS 'reproducoes'
    FROM
        cancoes cancoes
            INNER JOIN
        historicos tocadas ON cancoes.id_cancao = tocadas.id_cancao
    GROUP BY cancoes.cancao
    ORDER BY `reproducoes` DESC , cancoes.cancao
    LIMIT 2;
