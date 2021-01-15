CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        can.cancao, COUNT(his.id_cancao) AS 'reproducoes'
    FROM
        cancoes can
            INNER JOIN
        historicos his ON can.id_cancao = his.id_cancao
    GROUP BY can.cancao
    ORDER BY `reproducoes` DESC , can.cancao
    LIMIT 2;
