DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_musicas INT;
    SELECT COUNT(*)
    FROM historico_de_reproducoes
    WHERE historico_de_reproducoes.usuario_id = id INTO quantidade_musicas;
    RETURN quantidade_musicas;
END $$

DELIMITER ;

select quantidade_musicas_no_historico(3);
