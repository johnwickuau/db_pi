USE pi_idev4_2026_1;

DELIMITER //
DROP FUNCTION IF EXISTS total_voltas;
CREATE FUNCTION IF NOT EXISTS total_voltas(
_id_equipe INT,
_id_corrida INT
)
RETURNS INT
reads sql data

BEGIN 
DECLARE total INT;
SET total = (SELECT COUNT(id) 
FROM dados_corridas
WHERE id_corrida= _id_corrida
AND id_equipe= _id_equipe

);
RETURN total;
	END//
 DELIMITER ;


DELIMITER //

DROP FUNCTION IF EXISTS tempo_voltas //

CREATE FUNCTION tempo_voltas(
    _id_equipe INT,
    _id_corrida INT
)
RETURNS TIME 
READS SQL DATA
BEGIN 
    DECLARE v_media TIME; 


    SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(tempo_volta))) INTO v_media
    FROM dados_corridas
    WHERE id_corrida = _id_corrida
    AND id_equipe = _id_equipe;

    RETURN v_media;
END //

DELIMITER ;
        DELIMITER //

DROP FUNCTION IF EXISTS melhor_volta //
CREATE FUNCTION melhor_volta(
    _id_equipe INT,
    _id_corrida INT
)
RETURNS TIME
READS SQL DATA
BEGIN 
    DECLARE v_melhor_tempo TIME;
    
    SELECT MIN(tempo_volta) INTO v_melhor_tempo
    FROM dados_corridas
    WHERE id_corrida = _id_corrida
    AND id_equipe = _id_equipe;

    RETURN v_melhor_tempo;
END //
DELIMITER ;

DELIMITER //




DELIMITER //
DROP FUNCTION IF EXISTS ultima_volta;
CREATE FUNCTION ultima_volta(
    _id_equipe INT,
    _id_corrida INT
)
RETURNS TIME
READS SQL DATA
BEGIN 
    DECLARE v_ultima TIME;
    
    SELECT MAX(hora_registro) INTO v_ultima
    FROM dados_corridas
    WHERE id_corrida = _id_corrida
    AND id_equipe = _id_equipe
    ORDER BY hora_registro DESC 
   
    LIMIT 1;
    RETURN v_ultima;
END //
DELIMITER ;


desc dados_corridas;


SELECT total_voltas(1,1);

SELECT tempo_voltas(1,1);

SELECT melhor_volta(1,1);

SELECT ultima_volta(1,1);







