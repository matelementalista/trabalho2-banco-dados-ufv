USE trabalhobd;

SELECT DISTINCT nomejogo
FROM amigo_tem_jogo_em_comum INNER JOIN jogo ON amigo_tem_jogo_em_comum.compativel_jogo_plataforma_idjogo = jogo.idjogo;