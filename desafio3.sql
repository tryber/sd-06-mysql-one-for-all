CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        us.usuario, can.cancao AS 'nome'
    FROM
        usuarios  us
            INNER JOIN
        historicos his ON us.id_usuario = his.id_usuario
            INNER JOIN
        cancoes can ON his.id_cancao = can.id_cancao
    ORDER BY us.usuario , `nome`;
