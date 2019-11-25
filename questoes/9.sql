USE trabalhobd;

SELECT AVG(memoria) AS media_memoria
FROM compativel_jogo_plataforma NATURAL JOIN plataforma;