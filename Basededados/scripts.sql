-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Jun-2019 às 21:05
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trabgrupo`
--

-- --------------------------------------------------------

--
--    dados da tabela `chat`
--

INSERT INTO `chat` (`chat_id`, `nome`) VALUES
(1, 'Fernando');

-- --------------------------------------------------------

-- --------------------------------------------------------

--    dados da tabela `comentario`
--

INSERT INTO `comentario` (`comentario_id`, `texto`, `publicacao_id`, `perfil_id`) VALUES
(1, 'Es pequeno', 1, 2);

-- --------------------------------------------------------

--
--    dados da tabela `concelho`
--

INSERT INTO `concelho` (`concelho_id`, `nome`) VALUES
(1, 'Sta Cruz');

-- --------------------------------------------------------
--
--    dados da tabela `evento`
--

INSERT INTO `evento` (`evento_id`, `nome`, `descricao`, `perfil_id`, `concelho_id`) VALUES
(1, 'Cavar com style', 'vou cavar com style', 2, 1);

-- --------------------------------------------------------
--
--    dados da tabela `freguesia`
--

INSERT INTO `freguesia` (`freguesia_id`, `nome`, `concelho_id`) VALUES
(1, 'Assomada', 1);

-- --------------------------------------------------------

--
--    dados da tabela `galeria`
--

INSERT INTO `galeria` (`galeria_id`, `foto`, `perfil_id`, `publicacao_id`) VALUES
(1, 'loucura', 2, 1);

-- --------------------------------------------------------
--
--    dados da tabela `identificar`
--

INSERT INTO `identificar` (`publicacao_Id`, `perfil_id`) VALUES
(1, 3);

-- --------------------------------------------------------

..
--    dados da tabela `like_comentario`
--

INSERT INTO `like_comentario` (`like_comentario_id`, `tipo_like`, `perfil_id`, `comentario_id`) VALUES
(1, 'r', 1, 1),
(2, 'n', 3, 1);

-- --------------------------------------------------------
--
--    dados da tabela `like_publicacao`
--

INSERT INTO `like_publicacao` (`perfil_id`, `publicacao_id`, `tipo_like`) VALUES
(2, 1, 'n');

-- --------------------------------------------------------
--
--    dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`mensagem_id`, `mensagem`, `dataMensagem`, `chat_id`, `perfil_id`) VALUES
(1, 'ola', '2019-06-16 00:00:00', 1, 1);

-- --------------------------------------------------------
--
--    dados da tabela `pagina`
--

INSERT INTO `pagina` (`pagina_id`, `nome`, `descricao`, `perfil_id`) VALUES
(1, 'Piadas Secas', 'Aventures nas piadas secas encontradas na net', 1);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
--    dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`publicacao_id`, `texto`, `imagem`, `video`, `perfil_id`, `pagina_id`, `galeria_galeria_id`) VALUES
(1, 'Sou grande tenho 1.5', NULL, NULL, 1, NULL, 0),
(2, 'foto de perfil', 'fotoperfil', NULL, 2, NULL, 1);

--
--
--    dados da tabela `perfil`
--

INSERT INTO `perfil` (`perfil_id`, `nome`, `bio`, `email`, `password`, `numero`, `ava`, `data_nasc`, `gender`) VALUES
(1, 'Gil', 'Sou grande', 'gil@gmail.com', '123', '960336340', 'http://static.asianetnews.com/img/default-user-avatar.png', '2019-06-15', 'M'),
(2, 'Fernando', 'Fron\'t End é Vida', 'fernando@hotmail.com', '123', NULL, 'http://static.asianetnews.com/img/default-user-avatar.png', '1998-06-11', 'M'),
(3, 'Helder', 'Programador', 'helder@hotmail.com', '123', NULL, 'http://static.asianetnews.com/img/default-user-avatar.png', '1999-02-19', 'M');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
