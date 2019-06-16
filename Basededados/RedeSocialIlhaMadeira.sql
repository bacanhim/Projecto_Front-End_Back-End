
-- -----------------------------------------------------
-- Schema trabgrupo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema trabgrupo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trabgrupo` DEFAULT CHARACTER SET utf8 ;
USE `trabgrupo` ;

-- -----------------------------------------------------
-- Table `trabgrupo`.`concelho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`concelho` (
  `concelho_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`concelho_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`perfil` (
  `perfil_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `bio` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `numero` VARCHAR(99) NULL DEFAULT NULL,
  `ava` VARCHAR(500) NULL DEFAULT 'http://static.asianetnews.com/img/default-user-avatar.png',
  `data_nasc` DATE NOT NULL,
  `gender` ENUM('M', 'F', 'N') NOT NULL,
  PRIMARY KEY (`perfil_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`evento` (
  `evento_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `descricao` VARCHAR(50) NOT NULL,
  `perfil_id` INT NOT NULL,
  `concelho_id` INT NOT NULL,
  PRIMARY KEY (`evento_id`),
  INDEX `fk_evento_perfil1_idx` (`perfil_id` ASC),
  INDEX `fk_evento_concelho1_idx` (`concelho_id` ASC),
  CONSTRAINT `fk_evento_concelho1`
    FOREIGN KEY (`concelho_id`)
    REFERENCES `trabgrupo`.`concelho` (`concelho_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_evento_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`freguesia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`freguesia` (
  `freguesia_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `concelho_id` INT NOT NULL,
  PRIMARY KEY (`freguesia_id`),
  INDEX `fk_freguesia_concelho1_idx` (`concelho_id` ASC),
  CONSTRAINT `fk_freguesia_concelho1`
    FOREIGN KEY (`concelho_id`)
    REFERENCES `trabgrupo`.`concelho` (`concelho_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`galeria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`galeria` (
  `galeria_id` INT NOT NULL AUTO_INCREMENT,
  `foto` VARCHAR(100) NOT NULL,
  `perfil_id` INT NOT NULL,
  `publicacao_id` INT NOT NULL,
  PRIMARY KEY (`galeria_id`),
  INDEX `fk_galeria_perfil1_idx` (`perfil_id` ASC),
  CONSTRAINT `fk_galeria_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`pagina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`pagina` (
  `pagina_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `descricao` VARCHAR(50) NOT NULL,
  `perfil_id` INT NOT NULL,
  PRIMARY KEY (`pagina_id`),
  INDEX `fk_pagina_perfil1_idx` (`perfil_id` ASC),
  CONSTRAINT `fk_pagina_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`publicacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`publicacao` (
  `publicacao_id` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(200) NOT NULL,
  `imagem` VARCHAR(100) NULL DEFAULT NULL,
  `video` VARCHAR(100) NULL DEFAULT NULL,
  `perfil_id` INT NOT NULL,
  `pagina_id` INT NULL,
  `galeria_galeria_id` INT NOT NULL,
  PRIMARY KEY (`publicacao_id`),
  INDEX `fk_publicacao_perfil1_idx` (`perfil_id` ASC),
  INDEX `fk_publicacao_pagina1_idx` (`pagina_id` ASC),
  CONSTRAINT `fk_publicacao_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicacao_pagina1`
    FOREIGN KEY (`pagina_id`)
    REFERENCES `trabgrupo`.`pagina` (`pagina_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`identificar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`identificar` (
  `publicacao_Id` INT NOT NULL,
  `perfil_id` INT NOT NULL,
  INDEX `fk_publicacao_has_perfil_perfil1_idx` (`perfil_id` ASC),
  INDEX `fk_publicacao_has_perfil_publicacao1_idx` (`publicacao_Id` ASC),
  CONSTRAINT `fk_publicacao_has_perfil_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicacao_has_perfil_publicacao1`
    FOREIGN KEY (`publicacao_Id`)
    REFERENCES `trabgrupo`.`publicacao` (`publicacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`comentario` (
  `comentario_id` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(250) NOT NULL,
  `publicacao_id` INT NOT NULL,
  `perfil_id` INT NOT NULL,
  PRIMARY KEY (`comentario_id`),
  INDEX `fk_comentario_publicacao1_idx` (`publicacao_id` ASC),
  INDEX `fk_comentario_perfil1_idx` (`perfil_id` ASC),
  CONSTRAINT `fk_comentario_publicacao1`
    FOREIGN KEY (`publicacao_id`)
    REFERENCES `trabgrupo`.`publicacao` (`publicacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabgrupo`.`like_comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`like_comentario` (
  `like_comentario_id` INT NOT NULL AUTO_INCREMENT,
  `tipo_like` ENUM('n', 'c', 'r') NOT NULL,
  `perfil_id` INT NOT NULL,
  `comentario_id` INT NOT NULL,
  PRIMARY KEY (`like_comentario_id`),
  INDEX `fk_like_comentario_perfil1_idx` (`perfil_id` ASC),
  INDEX `fk_like_comentario_comentario1_idx` (`comentario_id` ASC),
  CONSTRAINT `fk_like_comentario_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_like_comentario_comentario1`
    FOREIGN KEY (`comentario_id`)
    REFERENCES `trabgrupo`.`comentario` (`comentario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`like_publicacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`like_publicacao` (
  `perfil_id` INT NOT NULL,
  `publicacao_id` INT NOT NULL,
  `tipo_like` ENUM('n', 'c', 'r') NOT NULL,
  INDEX `fk_perfil_has_publicacao_publicacao1_idx` (`publicacao_id` ASC),
  INDEX `fk_perfil_has_publicacao_perfil1_idx` (`perfil_id` ASC),
  CONSTRAINT `fk_perfil_has_publicacao_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_has_publicacao_publicacao1`
    FOREIGN KEY (`publicacao_id`)
    REFERENCES `trabgrupo`.`publicacao` (`publicacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`chat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`chat` (
  `chat_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`chat_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabgrupo`.`mensagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`mensagem` (
  `mensagem_id` INT NOT NULL AUTO_INCREMENT,
  `mensagem` VARCHAR(50) NOT NULL,
  `dataMensagem` DATETIME NOT NULL,
  `chat_id` INT NOT NULL,
  `perfil_id` INT NOT NULL,
  PRIMARY KEY (`mensagem_id`),
  INDEX `fk_mensagem_perfil1` (`perfil_id` ASC),
  INDEX `fk_mensagem_chat1_idx` (`chat_id` ASC),
  CONSTRAINT `fk_mensagem_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensagem_chat1`
    FOREIGN KEY (`chat_id`)
    REFERENCES `trabgrupo`.`chat` (`chat_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`chat_perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`chat_perfil` (
  `perfil_id` INT NOT NULL,
  `chat_id` INT NOT NULL,
  INDEX `fk_perfil_has_chat_chat1_idx` (`chat_id` ASC),
  INDEX `fk_perfil_has_chat_perfil1_idx` (`perfil_id` ASC),
  CONSTRAINT `fk_perfil_has_chat_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_has_chat_chat1`
    FOREIGN KEY (`chat_id`)
    REFERENCES `trabgrupo`.`chat` (`chat_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`galeria_perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`galeria_perfil` (
  `galeria_id` INT NOT NULL,
  `perfil_id` INT NOT NULL,
  INDEX `fk_galeria_has_perfil_perfil1_idx` (`perfil_id` ASC),
  INDEX `fk_galeria_has_perfil_galeria1_idx` (`galeria_id` ASC),
  CONSTRAINT `fk_galeria_has_perfil_galeria1`
    FOREIGN KEY (`galeria_id`)
    REFERENCES `trabgrupo`.`galeria` (`galeria_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_galeria_has_perfil_perfil1`
    FOREIGN KEY (`perfil_id`)
    REFERENCES `trabgrupo`.`perfil` (`perfil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `trabgrupo`.`galeria_publicacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabgrupo`.`galeria_publicacao` (
  `galeria_id` INT NOT NULL,
  `publicacao_id` INT NOT NULL,
  INDEX `fk_galeria_has_publicacao_publicacao1_idx` (`publicacao_id` ASC),
  INDEX `fk_galeria_has_publicacao_galeria1_idx` (`galeria_id` ASC),
  CONSTRAINT `fk_galeria_has_publicacao_galeria1`
    FOREIGN KEY (`galeria_id`)
    REFERENCES `trabgrupo`.`galeria` (`galeria_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_galeria_has_publicacao_publicacao1`
    FOREIGN KEY (`publicacao_id`)
    REFERENCES `trabgrupo`.`publicacao` (`publicacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

