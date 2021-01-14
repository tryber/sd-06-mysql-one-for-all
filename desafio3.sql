CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        usuario.usuario, cancoes.cancao AS 'nome'
    FROM
        usuarios  usuario
            INNER JOIN
        historicos historico ON usuario.id_usuario = historico.id_usuario
            INNER JOIN
        cancoes cancoes ON historico.id_cancao = cancoes.id_cancao
    ORDER BY usuario.usuario , cancoes.cancao;
