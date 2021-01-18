CREATE VIEW estatisticas_musicais as
SELECT
  mus.can as `cancoes`,
  albtb.alb as `albuns`,
  aut.art as `artistas`
from
  (
    SELECT
      count(*) as can
    from
      musicas
  ) as mus,
  (
    SELECT
      count(*) as alb
    from
      SpotifyClone.albuns
  ) as albtb,
  (
    SELECT
      count(*) as art
    from
      SpotifyClone.author
  ) as aut
