CREATE VIEW `estatisticas_musicais` AS (
SELECT COUNT( songstable.song_id) AS `cancoes`,
COUNT( distinct artiststable.artist_id) AS `artistas`,
COUNT( distinct albunstable.album_id) AS `albuns`
from spotifyclone.songstable);
