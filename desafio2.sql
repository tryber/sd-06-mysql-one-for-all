CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(*) AS `cancoes`,
    COUNT(DISTINCT artist_id) AS `artistas`,
    COUNT(DISTINCT album_id) AS `albuns`
  FROM
    songs;
