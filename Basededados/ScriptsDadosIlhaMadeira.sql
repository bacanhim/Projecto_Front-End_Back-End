

INSERT INTO `perfil` ( `nome`, `bio`, `email`, `password`, `numero`, `ava`, `data_nasc`, `gender`) VALUES
( 'Gil', 'Sou grande', 'gil@gmail.com', '123', '960336340', 'http://static.asianetnews.com/img/default-user-avatar.png', '2019-06-15', 'M'),
( 'Fernando', 'Fron\'t End é Vida', 'fernando@hotmail.com', '123', NULL, 'http://static.asianetnews.com/img/default-user-avatar.png', '1998-06-11', 'M'),
( 'Helder', 'Programador', 'helder@hotmail.com', '123', NULL, 'http://static.asianetnews.com/img/default-user-avatar.png', '1999-02-19', 'M');

INSERT INTO `pagina` ( `nome`, `descricao`, `perfil_id`) VALUES
( 'Somos Uma', 'Hoje vamos a uma', 2);

INSERT INTO `publicacao` ( `texto`, `imagem`, `video`, `perfil_id`, `pagina_id`) VALUES
( 'Sou o gil', NULL, NULL, 1, NULL),
( 'E eu sou o helder', 'Foto Helder', NULL, 3, NULL),
( 'Hoje encontramos na uma', NULL, NULL, 3, 1);



INSERT INTO `chat` ( `nome`) VALUES
( 'Amios');



INSERT INTO `chat_perfil` (`perfil_id`, `chat_id`) VALUES
(2, 1),
(1, 1);






INSERT INTO `concelho` ( `nome`) VALUES
( 'Sta Cruz'),
( 'Funchal');


INSERT INTO `evento` ( `nome`, `descricao`, `perfil_id`, `concelho_id`) VALUES
( 'Vamos ao arrial', 'Hoje vamos ao arraial', 2, 1);



INSERT INTO `freguesia` (`nome`, `concelho_id`) VALUES
('Assomada', 1);


INSERT INTO `galeria` (`foto`, `perfil_id`) VALUES
( 'Album', 3);



INSERT INTO `galeria_perfil` (`galeria_id`, `perfil_id`) VALUES
(1, 3);



INSERT INTO `galeria_publicacao` (`galeria_id`, `publicacao_id`) VALUES
(1, 2);



INSERT INTO `identificar` (`publicacao_Id`, `perfil_id`) VALUES
(2, 3);

INSERT INTO `comentario` ( `texto`, `publicacao_id`, `perfil_id`) VALUES
( 'eu sou o fernando', 1, 2);

INSERT INTO `like_comentario` ( `tipo_like`, `perfil_id`, `comentario_id`) VALUES
('n', 1, 1);



INSERT INTO `like_publicacao` (`perfil_id`, `publicacao_id`, `tipo_like`) VALUES
(2, 1, 'n');



INSERT INTO `mensagem` (`mensagem`, `dataMensagem`, `chat_id`, `perfil_id`) VALUES
('ola gil', '2019-06-17 00:00:00', 1, 2);

