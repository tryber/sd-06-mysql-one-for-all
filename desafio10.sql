DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(inputed_user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_reproducoes INT;
SELECT COUNT(cancao_id) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = inputed_user_id INTO total_reproducoes;
RETURN total_reproducoes;

END $$
