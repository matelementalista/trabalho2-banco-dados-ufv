USE trabalhobd;

SELECT nomejogo, SUM(horas_jogadas) as total_horas_jogadas
FROM jogo NATURAL JOIN compativel_jogo_plataforma INNER JOIN savegame ON compativel_jogo_plataforma.idjogo = savegame.compativel_jogo_plataforma_idjogo AND compativel_jogo_plataforma.idplataforma = savegame.compativel_jogo_plataforma_idplataforma
GROUP BY nomejogo
ORDER BY total_horas_jogadas DESC;