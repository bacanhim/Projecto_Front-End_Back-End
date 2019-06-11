CREATE TABLE `concelho` (
  `concelho_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `numero` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `evento_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `perfil_perfil_id` int(11) NOT NULL,
  `concelho_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `freguesia`
--

CREATE TABLE `freguesia` (
  `freguesia_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `concelho_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria`
--

CREATE TABLE `galeria` (
  `galeria_id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `publicacao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `identificar`
--

CREATE TABLE `identificar` (
  `publicacao_Id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `like_comentario`
--

CREATE TABLE `like_comentario` (
  `comentario_id` int(11) NOT NULL,
  `like_comentario` enum('n','c','r') NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `like_publicaao`
--

CREATE TABLE `like_publicaao` (
  `perfil_id` int(11) NOT NULL,
  `publicacao_Id` int(11) NOT NULL,
  `tipo_like` enum('n','c','r') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros_chat`
--

CREATE TABLE `membros_chat` (
  `perfil_perfil_id` int(11) NOT NULL,
  `chat_chat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `mensagem_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `dataMensagem` datetime NOT NULL,
  `chat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--

CREATE TABLE `pagina` (
  `pagina_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `perfil_id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `bio` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `numero` varchar(99) DEFAULT NULL,
  `ava` varchar(500) DEFAULT 'http://static.asianetnews.com/img/default-user-avatar.png',
  `data_nasc` date NOT NULL,
  `gender` enum('Masculino','Femenino','Nao especificado','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`perfil_id`, `nome`, `bio`, `email`, `password`, `numero`, `ava`, `data_nasc`, `gender`) VALUES
(15, 'Helder Perestrelo', 'Querer comprar xemilhas', 'hbacanhim@gmail.com', '1234', '918041395', 'http://static.asianetnews.com/img/default-user-avatar.png', '2019-03-05', 'Masculino'),
(16, 'Joao Macarrao', 'Xemilhassss', 'awdaw@adwa', '9Fc996898194@', '999999999', 'http://static.asianetnews.com/img/default-user-avatar.png', '0000-00-00', 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

CREATE TABLE `publicacao` (
  `publicacao_id` int(11) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  `video` varchar(9) DEFAULT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`publicacao_id`, `texto`, `imagem`, `video`, `perfil_id`) VALUES
(3, 'Vendo couvesd awd awdaw daw daw daw daw ad wa dwakjnd awbhjdbhi awd awiud awhdhb awbhudhb aijw', NULL, NULL, 15),
(4, 'afsdegrh', NULL, NULL, 16),
(5, 'adwad', NULL, NULL, 15),
(10, 'wadaw', NULL, NULL, 15),
(24, 'dwadaw', NULL, NULL, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concelho`
--
ALTER TABLE `concelho`
  ADD PRIMARY KEY (`concelho_id`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `fk_evento_perfil1_idx` (`perfil_perfil_id`),
  ADD KEY `fk_evento_concelho1_idx` (`concelho_id`);

--
-- Indexes for table `freguesia`
--
ALTER TABLE `freguesia`
  ADD PRIMARY KEY (`freguesia_id`),
  ADD KEY `fk_freguesia_concelho1_idx` (`concelho_id`);

--
-- Indexes for table `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`galeria_id`),
  ADD KEY `fk_galeria_perfil1_idx` (`perfil_id`),
  ADD KEY `fk_galeria_publicacao1_idx` (`publicacao_id`);

--
-- Indexes for table `identificar`
--
ALTER TABLE `identificar`
  ADD PRIMARY KEY (`publicacao_Id`,`perfil_id`),
  ADD KEY `fk_publicacao_has_perfil_perfil1_idx` (`perfil_id`),
  ADD KEY `fk_publicacao_has_perfil_publicacao1_idx` (`publicacao_Id`);

--
-- Indexes for table `like_comentario`
--
ALTER TABLE `like_comentario`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `fk_like_comentario_perfil1_idx` (`perfil_id`);

--
-- Indexes for table `like_publicaao`
--
ALTER TABLE `like_publicaao`
  ADD PRIMARY KEY (`perfil_id`,`publicacao_Id`),
  ADD KEY `fk_perfil_has_publicacao_publicacao1_idx` (`publicacao_Id`),
  ADD KEY `fk_perfil_has_publicacao_perfil1_idx` (`perfil_id`);

--
-- Indexes for table `membros_chat`
--
ALTER TABLE `membros_chat`
  ADD PRIMARY KEY (`perfil_perfil_id`,`chat_chat_id`),
  ADD KEY `fk_perfil_has_chat_perfil1_idx` (`perfil_perfil_id`);

--
-- Indexes for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`mensagem_id`),
  ADD KEY `fk_mensagem_perfil1` (`perfil_id`);

--
-- Indexes for table `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`pagina_id`),
  ADD KEY `fk_pagina_perfil1_idx` (`perfil_id`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perfil_id`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`publicacao_id`),
  ADD KEY `fk_publicacao_perfil1_idx` (`perfil_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concelho`
--
ALTER TABLE `concelho`
  MODIFY `concelho_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `evento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freguesia`
--
ALTER TABLE `freguesia`
  MODIFY `freguesia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `galeria_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `mensagem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagina`
--
ALTER TABLE `pagina`
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perfil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `publicacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `fk_evento_concelho1` FOREIGN KEY (`concelho_id`) REFERENCES `concelho` (`concelho_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_evento_perfil1` FOREIGN KEY (`perfil_perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `freguesia`
--
ALTER TABLE `freguesia`
  ADD CONSTRAINT `fk_freguesia_concelho1` FOREIGN KEY (`concelho_id`) REFERENCES `concelho` (`concelho_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `fk_galeria_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_galeria_publicacao1` FOREIGN KEY (`publicacao_id`) REFERENCES `publicacao` (`publicacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `identificar`
--
ALTER TABLE `identificar`
  ADD CONSTRAINT `fk_publicacao_has_perfil_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_publicacao_has_perfil_publicacao1` FOREIGN KEY (`publicacao_Id`) REFERENCES `publicacao` (`publicacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `like_comentario`
--
ALTER TABLE `like_comentario`
  ADD CONSTRAINT `fk_like_comentario_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `like_publicaao`
--
ALTER TABLE `like_publicaao`
  ADD CONSTRAINT `fk_perfil_has_publicacao_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfil_has_publicacao_publicacao1` FOREIGN KEY (`publicacao_Id`) REFERENCES `publicacao` (`publicacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `membros_chat`
--
ALTER TABLE `membros_chat`
  ADD CONSTRAINT `fk_perfil_has_chat_perfil1` FOREIGN KEY (`perfil_perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD CONSTRAINT `fk_mensagem_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pagina`
--
ALTER TABLE `pagina`
  ADD CONSTRAINT `fk_pagina_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `publicacao`
--
ALTER TABLE `publicacao`
  ADD CONSTRAINT `fk_publicacao_perfil1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

