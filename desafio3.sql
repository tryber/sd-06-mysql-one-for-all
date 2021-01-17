CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        U.usuario AS usuario, M.nome AS nome
    FROM
        SpotifyClone.Historico_de_reproducoes AS H
            INNER JOIN
        SpotifyClone.Usuarios AS U ON H.usuario_id = U.usuario_id
            INNER JOIN
        SpotifyClone.Musicas AS M ON M.musica_id = H.musica_id
    ORDER BY `usuario` , `nome`;
