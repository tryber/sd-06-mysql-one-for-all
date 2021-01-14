CREATE VIEW top_2_hits_do_momento AS
    SELECT s.song_name AS cancao,
        COUNT(s.song_id) AS reproducoes
    FROM Songs AS s
        INNER JOIN History AS h
            ON s.song_id = h.song_id
    GROUP BY cancao
    ORDER BY COUNT(s.song_id) DESC, cancao ASC
    LIMIT 2;
