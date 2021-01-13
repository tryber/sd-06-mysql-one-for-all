CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        cancoes.cancao, COUNT(tocadas.id_cancao) AS 'reproducoes'
    FROM
        SpotifyClone.cancoes AS cancoes
            INNER JOIN
        SpotifyClone.historicos AS tocadas ON cancoes.id_cancao = tocadas.id_cancao
    GROUP BY cancoes.cancao
    ORDER BY `reproducoes` DESC , cancoes.cancao
    LIMIT 2;
