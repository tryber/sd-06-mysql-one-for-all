CREATE VIEW `estatisticas_musicais` AS (
SELECT COUNT(distinct song_id) AS `cancoes`,
COUNT( distinct artiststable.artist_id) AS `artistas`,
COUNT( distinct albunstable.album_id) AS `albuns`
from songstable, artiststable, albunstable );
