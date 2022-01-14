-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jan-2022 às 19:40
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_digital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `desenvolvedora`
--

CREATE TABLE `desenvolvedora` (
  `id_desenvolvedora` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `CNPJ` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pais` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `desenvolvedora`
--

INSERT INTO `desenvolvedora` (`id_desenvolvedora`, `nome`, `CNPJ`, `email`, `pais`) VALUES
(1, 'RockS', 'xxxuuuuuu', 'Rocks@gmail.com', 'USA'),
(2, 'Rito Gomes', 'xxxxxxxyo', 'Rito@gmail.com', 'USA'),
(3, 'Santa Monica', 'xxxxxxxyz', 'Santa@gmail.com', 'USA'),
(4, 'Poker Company', 'xxxxxoooo', 'Poker@gmail.com', 'JP'),
(5, 'Bugsoft', 'xxxxxooooi', 'Bug@gmail.com', 'FR'),
(6, 'RockS', 'xxxuuuuuu', 'Rocks@gmail.com', 'USA'),
(7, 'Rito Gomes', 'xxxxxxxyo', 'Rito@gmail.com', 'USA'),
(8, 'Santa Monica', 'xxxxxxxyz', 'Santa@gmail.com', 'USA'),
(9, 'Poker Company', 'xxxxxoooo', 'Poker@gmail.com', 'JP'),
(10, 'Bugsoft', 'xxxxxooooi', 'Bug@gmail.com', 'FR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `distribuidora`
--

CREATE TABLE `distribuidora` (
  `id_distribuidora` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `CNPJ` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `distribuidora`
--

INSERT INTO `distribuidora` (`id_distribuidora`, `nome`, `CNPJ`, `email`) VALUES
(1, 'AE', 'xxxxxxxxx', 'AE@gmail.com'),
(2, 'LevelDown', 'xyxyxyxyx', 'level@gmail.com'),
(3, 'Vapour', 'xyxytttyxyx', 'vapour@gmail.co'),
(4, 'AE', 'xxxxxxxxx', 'AE@gmail.com'),
(5, 'LevelDown', 'xyxyxyxyx', 'level@gmail.com'),
(6, 'Vapour', 'xyxytttyxyx', 'vapour@gmail.co');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id_jogo` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(600) NOT NULL,
  `data_de_lancamento` date NOT NULL,
  `id_distribuidora` int(11) NOT NULL,
  `id_desenvolvedora` int(11) NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id_jogo`, `nome`, `descricao`, `data_de_lancamento`, `id_distribuidora`, `id_desenvolvedora`, `imagem`) VALUES
(2, 'Bom de guerra', 'jogo eletrônico de ação e aventura', '2018-04-28', 1, 3, ''),
(3, 'Liga das Lendas', 'jogo do estilo de DOTAH', '2004-06-23', 2, 2, ''),
(4, 'DOTAH', 'DOTAH é DOTAH', '2005-11-18', 1, 1, ''),
(5, 'Pocketmon', 'Pocketmon é um jogo de RPG ', '2009-05-19', 2, 4, ''),
(6, 'Degemon', 'jogo estilo pocketmon ', '2009-09-29', 3, 3, ''),
(7, 'The Bruxao', 'Jogo de mata demonio', '2018-11-04', 3, 5, ''),
(8, 'WOR do warcreft', 'jogo eletrônico de ação e aventura jogado em turnos', '2015-04-03', 3, 4, ''),
(9, 'Assassino da creusa', 'jogo eletrônico de ação e aventura e sobrevivencia', '1998-04-03', 3, 5, ''),
(10, 'Olhe os cachorro', 'Jogo onde vc pode hackear tudo', '2019-12-04', 3, 5, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `possui_jogo`
--

CREATE TABLE `possui_jogo` (
  `id_jogo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `datanasc` date NOT NULL,
  `cep` varchar(15) NOT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `datanasc`, `cep`, `senha`) VALUES
(1, 'daw', '0000-00-00', '', 'awd'),
(2, 'dawd', '0000-00-00', '', 'wadawd'),
(3, 'aw', '0000-00-00', '', 'wwww'),
(4, 'senho', '0000-00-00', '', '234'),
(5, 'benadu', '0000-00-00', '', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `desenvolvedora`
--
ALTER TABLE `desenvolvedora`
  ADD PRIMARY KEY (`id_desenvolvedora`);

--
-- Índices para tabela `distribuidora`
--
ALTER TABLE `distribuidora`
  ADD PRIMARY KEY (`id_distribuidora`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id_jogo`),
  ADD KEY `id_distribuidora` (`id_distribuidora`),
  ADD KEY `id_desenvolvedora` (`id_desenvolvedora`);

--
-- Índices para tabela `possui_jogo`
--
ALTER TABLE `possui_jogo`
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `desenvolvedora`
--
ALTER TABLE `desenvolvedora`
  MODIFY `id_desenvolvedora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `distribuidora`
--
ALTER TABLE `distribuidora`
  MODIFY `id_distribuidora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id_jogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_distribuidora`) REFERENCES `distribuidora` (`id_distribuidora`),
  ADD CONSTRAINT `jogo_ibfk_2` FOREIGN KEY (`id_desenvolvedora`) REFERENCES `desenvolvedora` (`id_desenvolvedora`);

--
-- Limitadores para a tabela `possui_jogo`
--
ALTER TABLE `possui_jogo`
  ADD CONSTRAINT `possui_jogo_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id_jogo`),
  ADD CONSTRAINT `possui_jogo_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
