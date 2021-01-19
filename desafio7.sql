CREATE VIEW perfil_artistas AS
  SELECT
    ar.artist_name AS `artista`,
    al.album_name AS `album`,
    artist_ranking.quantity AS `seguidores`
  FROM
    artists AS ar
  INNER JOIN albums AS al ON ar.id = al.artist_id
  INNER JOIN (
    SELECT
      artist_id,
      COUNT(artist_id) AS quantity
	FROM
      follow
	GROUP BY
      artist_id) AS artist_ranking
        ON ar.id = artist_ranking.artist_id
  ORDER BY
    `seguidores` DESC,
    `artista` ASC,
    `album` ASC;
