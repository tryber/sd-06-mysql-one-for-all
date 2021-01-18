CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', s.song_title AS 'nome'
    FROM
        SpotifyClone.history AS h
            INNER JOIN
        SpotifyClone.users AS u ON h.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
    ORDER BY usuario , nome;

select * from historico_reproducao_usuarios;
drop view historico_reproducao_usuarios;