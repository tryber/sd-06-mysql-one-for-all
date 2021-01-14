CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario,
    s.song_name AS nome
FROM Users AS u
    INNER JOIN History AS h
        ON u.user_id = h.user_id
    INNER JOIN Songs AS s
        ON s.song_id = h.song_id
ORDER BY u.user_name ASC, s.song_name ASC;
