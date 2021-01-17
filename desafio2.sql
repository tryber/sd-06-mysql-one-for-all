CREATE VIEW `estatisticas_musicais` AS (
SELECT COUNT(spotifyclone.songstable.song_id) AS `cancoes`,
COUNT( distinct spotifyclone.artiststable.artist_id) AS `artistas`,
COUNT( distinct spotifyclone.albunstable.album_id) AS `albuns`
from spotifyclone.songstable, spotifyclone.artiststable, spotifyclone.albunstable );
