CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        can.cancao AS 'nome', COUNT(his.id_usuario) AS 'reproducoes'
    FROM
        cancoes can
            INNER JOIN
        historicos his ON can.id_cancao = his.id_cancao
            INNER JOIN
        usuarios us ON his.id_usuario = us.id_usuario
    WHERE
        us.id_plano IN (2 , 3)
    GROUP BY his.id_cancao
    ORDER BY `nome`;
