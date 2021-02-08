
CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        c.cancao AS 'nome', COUNT(h.id_usuario) AS 'reproducoes'
    FROM
        cancoes c
            INNER JOIN
        historicos h ON c.id_cancao = h.id_cancao
            INNER JOIN
        usuarios u ON h.id_usuario = u.id_usuario
    WHERE
        u.id_plano IN (2 , 3)
    GROUP BY h.id_cancao
    ORDER BY `nome`;
