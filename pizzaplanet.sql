-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2021 às 14:49
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzaplanet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizzas`
--

CREATE TABLE `pizzas` (
  `pk_pizza` int(11) NOT NULL COMMENT 'Numero identificador das pizzas',
  `nome_pizza` varchar(35) NOT NULL COMMENT 'Nome da pizza',
  `descricao_pizza` text NOT NULL COMMENT 'Descrição mais detalhada da pizza',
  `img_pizza` varchar(33) NOT NULL COMMENT 'Nome da imagem da pizza (sem diretório)',
  `fk_tamanhos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela de sabores de pizza';

-- --------------------------------------------------------

--
-- Estrutura da tabela `tamanhos`
--

CREATE TABLE `tamanhos` (
  `fk_tamanhos` int(11) NOT NULL COMMENT 'Identificador dos tamanhos',
  `nome_tamanho` varchar(30) NOT NULL COMMENT 'Nome do tamanho',
  `preco` decimal(5,2) NOT NULL COMMENT 'Preço do tamanho da pizza'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tamanhos das pizzas';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`pk_pizza`),
  ADD KEY `fk_tamanhos_id` (`fk_tamanhos_id`);

--
-- Indexes for table `tamanhos`
--
ALTER TABLE `tamanhos`
  ADD PRIMARY KEY (`fk_tamanhos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `pk_pizza` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Numero identificador das pizzas';

--
-- AUTO_INCREMENT for table `tamanhos`
--
ALTER TABLE `tamanhos`
  MODIFY `fk_tamanhos` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador dos tamanhos';

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pizzas`
--
ALTER TABLE `pizzas`
  ADD CONSTRAINT `pizzas_ibfk_1` FOREIGN KEY (`fk_tamanhos_id`) REFERENCES `tamanhos` (`fk_tamanhos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
