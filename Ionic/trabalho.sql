-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jun-2019 às 15:57
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabalho`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `likes` int(40) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `ava` varchar(500) NOT NULL DEFAULT 'https://cdn2.iconfinder.com/data/icons/website-icons/512/User_Avatar-512.png',
  `descricao` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_id`, `nome`, `likes`, `comments`, `ava`, `descricao`, `img`, `bio`) VALUES
(1, 'Fernando Mendesss', 500, 'Lindo, comia.', 'https://cdn2.iconfinder.com/data/icons/website-icons/512/User_Avatar-512.png', 'Gostoso como sempre', 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FCFrmfA6FqaA%2Fhqdefault.jpg&f=1', 'awdaw'),
(2, 'Gervasio', 20, 'wawdaw', 'https://cdn2.iconfinder.com/data/icons/website-icons/512/User_Avatar-512.png', 'Abri a camera frontal sem querer', 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fb4%2F2010TIBE_Day4_Hall1_Monga_Photobook_Event_Ethan_Ruan.jpg%2F1200px-2010TIBE_Day4_Hall1_Monga_Photobook_Event_Ethan_Ruan.jpg&f=1', 'awdawd2e12dawd');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
