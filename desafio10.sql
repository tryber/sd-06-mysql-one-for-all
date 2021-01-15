DELIMITER $ CREATE FUNCTION quantidade_musicas_no_historico(UserId INT) RETURNS INT READS SQL DATA BEGIN DECLARE result INT;

SELECT
  COUNT(song_list_id)
FROM
  play_history
WHERE
  user_id = UserId INTO result;

RETURN result;

END $ DELIMITER;
