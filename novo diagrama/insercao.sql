USE trabalhobd;

INSERT INTO `amigos` (`idamigos`, `nome`, `ano_inicio_amizade`) VALUES (1, 'Zaratus', 2005);
INSERT INTO `amigos` (`idamigos`, `nome`, `ano_inicio_amizade`) VALUES (2, 'Aslan', 2007);

INSERT INTO `amigo_tem_jogo_em_comum`(`amigos_idamigos`, `compativel_jogo_plataforma_idplataforma`, `compativel_jogo_plataforma_idjogo`) VALUES (1, 1, 1);
INSERT INTO `amigo_tem_jogo_em_comum`(`amigos_idamigos`, `compativel_jogo_plataforma_idplataforma`, `compativel_jogo_plataforma_idjogo`) VALUES (2, 1, 1);

INSERT INTO `savegame` (`idsavegame`, `nome`, `horas_jogadas`, `compativel_jogo_plataforma_idplataforma`, `compativel_jogo_plataforma_idjogo`) VALUES (1, 'mago', 300, 1, 1);
INSERT INTO `savegame` (`idsavegame`, `nome`, `horas_jogadas`, `compativel_jogo_plataforma_idplataforma`, `compativel_jogo_plataforma_idjogo`) VALUES (2, 'guerreiro', 800, 1, 1);
INSERT INTO `savegame` (`idsavegame`, `nome`, `horas_jogadas`, `compativel_jogo_plataforma_idplataforma`, `compativel_jogo_plataforma_idjogo`) VALUES (1, 'corredor', 300, 4, 5);