CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuario.usuario, cancoes.cancao AS 'nome'
    FROM
        SpotifyClone.usuarios AS usuario
            INNER JOIN
        SpotifyClone.historicos AS historico ON usuario.id_usuario = historico.id_usuario
            INNER JOIN
        SpotifyClone.cancoes AS cancoes ON historico.id_cancao = cancoes.id_cancao
    ORDER BY usuario.usuario , cancoes.cancao;
