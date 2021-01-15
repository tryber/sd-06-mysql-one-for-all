CREATE VIEW SpotifyClone.faturamento_atual AS
    SELECT 
        ROUND(MIN(pla.valor_plano), 2) AS 'faturamento_minimo',
        ROUND(MAX(pla.valor_plano), 2) AS 'faturamento_maximo',
        ROUND(AVG(pla.valor_plano), 2) AS 'faturamento_medio',
        ROUND(SUM(pla.valor_plano), 2) AS 'faturamento_total'
    FROM
        planos pla
            INNER JOIN
        usuarios usu ON pla.id_plano = usu.id_plano;
