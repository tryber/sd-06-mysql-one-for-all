CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario, c.cancao AS 'nome'
    FROM
        SpotifyClone.usuarios u
            INNER JOIN
        SpotifyClone.historicos h ON u.id_usuario = h.id_usuario
            INNER JOIN
        SpotifyClone.cancoes c ON h.id_cancao = c.id_cancao
    ORDER BY u.usuario , c.cancao;
