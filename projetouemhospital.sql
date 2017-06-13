-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Jun-2017 às 22:59
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetouemhospital`
--
CREATE DATABASE IF NOT EXISTS `projetouemhospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projetouemhospital`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

DROP TABLE IF EXISTS `funcao`;
CREATE TABLE `funcao` (
  `idFuncao` int(11) NOT NULL,
  `nomeFuncao` varchar(80) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`idFuncao`, `nomeFuncao`, `data`) VALUES
(1, 'Enfermagem', '2017-06-05 09:26:26'),
(2, 'Recepcionista', '2017-06-05 09:28:59'),
(3, 'Bombeiro', '0000-00-00 00:00:00'),
(4, 'Financeiro', '0000-00-00 00:00:00'),
(5, 'teste3', '2017-06-08 15:55:50'),
(6, 'teste3', '2017-06-08 15:56:33'),
(7, 'teste3', '2017-06-08 15:57:05'),
(8, 'teste34', '2017-06-08 15:58:41'),
(9, 'teste3w', '2017-06-08 16:01:06'),
(10, 'g', '2017-06-08 16:02:56'),
(11, 'rt', '2017-06-08 16:03:15'),
(12, 'hoje', '2017-06-08 16:06:18'),
(13, 'telefonista', '2017-06-08 16:25:37'),
(14, 'telefonista', '2017-06-08 16:26:44'),
(15, 'loja fer', '2017-06-08 16:42:13'),
(16, 'loja fer', '2017-06-08 16:42:29'),
(17, 'Vendedor', '2017-06-08 21:44:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `idFuncao` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `plantao` varchar(10) NOT NULL,
  `data` datetime NOT NULL,
  `ativo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `idLogin` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `login` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `ativo` int(11) NOT NULL,
  `nivel` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`idLogin`, `nome`, `login`, `password`, `ativo`, `nivel`) VALUES
(1, 'Rafael Alves Florindo', 'rafael', '123', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE `medico` (
  `idMedico` int(11) NOT NULL,
  `crm` varchar(20) NOT NULL,
  `idEspecialidade` int(11) NOT NULL,
  `plantao` varchar(10) NOT NULL,
  `data` datetime NOT NULL,
  `ativo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `numeroCns` varchar(20) NOT NULL,
  `tipoSanguineo` varchar(10) NOT NULL,
  `responsavel` varchar(80) NOT NULL,
  `pacienteMaiorIdade` tinyint(4) NOT NULL,
  `historicoDoencaFamiliar` tinyint(4) NOT NULL,
  `qualDoenca` varchar(80) NOT NULL,
  `realizouCirurgia` tinyint(4) NOT NULL,
  `qualCirurgia` varchar(80) NOT NULL,
  `medicamentoControlado` tinyint(4) NOT NULL,
  `qualMedicamento` varchar(80) NOT NULL,
  `idPlanoSaude` int(11) NOT NULL,
  `leito` varchar(20) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `idPessoa`, `numeroCns`, `tipoSanguineo`, `responsavel`, `pacienteMaiorIdade`, `historicoDoencaFamiliar`, `qualDoenca`, `realizouCirurgia`, `qualCirurgia`, `medicamentoControlado`, `qualMedicamento`, `idPlanoSaude`, `leito`, `data`) VALUES
(1, 3, '', '', '', 0, 0, '', 0, '', 0, '', 0, '', '0000-00-00 00:00:00'),
(2, 2, '', '', '', 0, 0, '', 0, '', 0, '', 0, '', '0000-00-00 00:00:00'),
(3, 14, '', '', '', 0, 0, '', 0, '', 0, '', 0, '', '0000-00-00 00:00:00'),
(4, 29, '66666666666666666666', 'AB -', 'cavalo Bravo', 1, 1, 'sobrepeso', 1, 'er', 1, 'cafe', 0, 'Enfermaria', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `telefone1` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone2` varchar(20) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `emissorRg` char(3) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `dataNascimento` date NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `estadoCivil` varchar(10) NOT NULL,
  `data` datetime NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `nome`, `telefone1`, `email`, `telefone2`, `rg`, `emissorRg`, `cpf`, `dataNascimento`, `endereco`, `estadoCivil`, `data`, `ativo`) VALUES
(1, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:42:56', 0),
(2, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:43:36', 0),
(3, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:48:32', 0),
(4, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:49:47', 0),
(5, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:55:16', 0),
(6, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:56:39', 0),
(7, '', '', '', '', '', '', '', '0000-00-00', '', '', '2017-06-11 08:56:39', 0),
(8, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:57:18', 0),
(9, '', '', '', '', '', '', '', '0000-00-00', '', '', '2017-06-11 08:57:18', 0),
(10, 'Rafae Alves Florindo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 08:57:40', 0),
(11, '', '', '', '', '', '', '', '0000-00-00', '', '', '2017-06-11 08:57:40', 0),
(12, 'Juliana', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 09:13:05', 0),
(13, '', '', '', '', '', '', '', '0000-00-00', '', '', '2017-06-11 09:13:05', 0),
(14, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 09:17:21', 0),
(15, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 09:17:54', 0),
(16, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 09:18:31', 0),
(17, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:11:54', 0),
(18, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:12:09', 0),
(19, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:12:38', 0),
(20, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:12:58', 0),
(21, 'Maria', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:13:06', 0),
(22, 'JosÃ© Antonio Ferreira', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:15:22', 0),
(23, 'Marcos', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:17:35', 0),
(24, 'Ricardo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:20:16', 0),
(25, 'Ricardo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:25:26', 0),
(26, 'Ricardo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:27:19', 0),
(27, 'Ricardo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:27:49', 0),
(28, 'Ricardo', '44984014320', 'rafaelflorindo@hotmail.com', '44988381434', '128823514', 'SSP', '30292244819', '1982-12-02', 'JosÃ© Granado Parra, 374', 'Casado', '2017-06-11 10:28:08', 0),
(29, 'Ricardo Alves Florindo', '11111111111111111111', '3333333@hotmail.com', '22222222222222222222', '44444444444444444444', 'SSP', '30292244819', '1986-04-11', '5555555555555555555555555555555555555555555', 'Solteiro', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `planosaude`
--

DROP TABLE IF EXISTS `planosaude`;
CREATE TABLE `planosaude` (
  `idPlanoSaude` int(11) NOT NULL,
  `nomePlano` varchar(80) NOT NULL,
  `tipoAcomodacao` varchar(10) NOT NULL,
  `coberturaPlano` varchar(80) NOT NULL,
  `coberturaSUS` varchar(80) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `planosaude`
--

INSERT INTO `planosaude` (`idPlanoSaude`, `nomePlano`, `tipoAcomodacao`, `coberturaPlano`, `coberturaSUS`, `data`) VALUES
(1, 'Unimed', 'Enfermaria', '3', '2', '2017-06-13 17:51:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`idFuncao`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncao`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idLogin`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idMedico`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`);

--
-- Indexes for table `planosaude`
--
ALTER TABLE `planosaude`
  ADD PRIMARY KEY (`idPlanoSaude`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcao`
--
ALTER TABLE `funcao`
  MODIFY `idFuncao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `idLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medico`
--
ALTER TABLE `medico`
  MODIFY `idMedico` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `planosaude`
--
ALTER TABLE `planosaude`
  MODIFY `idPlanoSaude` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
