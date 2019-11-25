USE trabalhobd;

SELECT nomejogo
FROM jogo NATURAL JOIN compativel_jogo_plataforma
GROUP BY nomejogo
HAVING COUNT(*)>1;