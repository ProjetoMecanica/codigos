-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Nov-2015 às 18:44
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mecanica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `checklist`
--

CREATE TABLE IF NOT EXISTS `checklist` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` smallint(3) NOT NULL,
  `item` smallint(3) NOT NULL,
  `estado` smallint(3) NOT NULL,
  `os_fk` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_check` (`os_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientepessoa`
--

CREATE TABLE IF NOT EXISTS `clientepessoa` (
  `cpf_cnpj` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `rg` varchar(14) DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cep_fk` int(11) NOT NULL,
  `contato_fk` int(11) NOT NULL,
  PRIMARY KEY (`cpf_cnpj`),
  KEY `fk_contatoP` (`contato_fk`),
  KEY `fk_cepP` (`cep_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE IF NOT EXISTS `contato` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `telefone_fixo` int(11) NOT NULL,
  `telefone_celular` int(11) NOT NULL,
  `operadora` varchar(10) NOT NULL,
  `email` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados_oficina`
--

CREATE TABLE IF NOT EXISTS `dados_oficina` (
  `cnpj` bigint(20) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(40) DEFAULT NULL,
  `cep_fk` int(11) NOT NULL,
  `contato_fk` int(11) NOT NULL,
  PRIMARY KEY (`cnpj`),
  KEY `fk_cep` (`cep_fk`),
  KEY `fk_contato` (`contato_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
  `cep` int(11) NOT NULL,
  `logradouro` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  PRIMARY KEY (`cep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicoveiculo`
--

CREATE TABLE IF NOT EXISTS `historicoveiculo` (
  `codCliente` bigint(20) NOT NULL,
  `placaVeiculo` varchar(7) NOT NULL,
  KEY `fk_histVeiculo` (`codCliente`),
  KEY `fk_placaVeiculo` (`placaVeiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `operador`
--

CREATE TABLE IF NOT EXISTS `operador` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_fk` bigint(20) NOT NULL,
  `ususario` varchar(10) NOT NULL,
  `senha` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_coperador` (`cpf_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE IF NOT EXISTS `os` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `dataAbertura` date NOT NULL,
  `dataFechamento` date DEFAULT NULL,
  `cliente_FK` bigint(20) NOT NULL,
  `operadr_FK` int(11) NOT NULL,
  `valorTotal` double(4,2) DEFAULT NULL,
  `placaVeiculo` varchar(7) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_oscliente` (`cliente_FK`),
  KEY `fk_osoperador` (`operadr_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `osservico`
--

CREATE TABLE IF NOT EXISTS `osservico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `servico_Fk` int(11) NOT NULL,
  `os_FK` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_osservico` (`servico_Fk`),
  KEY `fk_oss` (`os_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os_peca`
--

CREATE TABLE IF NOT EXISTS `os_peca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `os_FK` int(11) NOT NULL,
  `peca_FK` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_osp` (`os_FK`),
  KEY `fk_ospeca` (`peca_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca`
--

CREATE TABLE IF NOT EXISTS `peca` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  `valor` double(4,2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  `valor` double(4,2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE IF NOT EXISTS `veiculo` (
  `placa` varchar(7) NOT NULL,
  `vim` int(11) NOT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `motor` varchar(10) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `ano` int(11) NOT NULL,
  `km` float NOT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `fk_check` FOREIGN KEY (`os_fk`) REFERENCES `os` (`codigo`);

--
-- Limitadores para a tabela `clientepessoa`
--
ALTER TABLE `clientepessoa`
  ADD CONSTRAINT `fk_cepP` FOREIGN KEY (`cep_fk`) REFERENCES `endereco` (`cep`),
  ADD CONSTRAINT `fk_contatoP` FOREIGN KEY (`contato_fk`) REFERENCES `contato` (`codigo`);

--
-- Limitadores para a tabela `dados_oficina`
--
ALTER TABLE `dados_oficina`
  ADD CONSTRAINT `fk_cep` FOREIGN KEY (`cep_fk`) REFERENCES `endereco` (`cep`),
  ADD CONSTRAINT `fk_contato` FOREIGN KEY (`contato_fk`) REFERENCES `contato` (`codigo`);

--
-- Limitadores para a tabela `historicoveiculo`
--
ALTER TABLE `historicoveiculo`
  ADD CONSTRAINT `fk_histVeiculo` FOREIGN KEY (`codCliente`) REFERENCES `clientepessoa` (`cpf_cnpj`),
  ADD CONSTRAINT `fk_placaVeiculo` FOREIGN KEY (`placaVeiculo`) REFERENCES `veiculo` (`placa`);

--
-- Limitadores para a tabela `operador`
--
ALTER TABLE `operador`
  ADD CONSTRAINT `fk_coperador` FOREIGN KEY (`cpf_fk`) REFERENCES `clientepessoa` (`cpf_cnpj`);

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_osoperador` FOREIGN KEY (`operadr_FK`) REFERENCES `operador` (`codigo`),
  ADD CONSTRAINT `fk_oscliente` FOREIGN KEY (`cliente_FK`) REFERENCES `clientepessoa` (`cpf_cnpj`);

--
-- Limitadores para a tabela `osservico`
--
ALTER TABLE `osservico`
  ADD CONSTRAINT `fk_oss` FOREIGN KEY (`os_FK`) REFERENCES `os` (`codigo`),
  ADD CONSTRAINT `fk_osservico` FOREIGN KEY (`servico_Fk`) REFERENCES `servico` (`codigo`);

--
-- Limitadores para a tabela `os_peca`
--
ALTER TABLE `os_peca`
  ADD CONSTRAINT `fk_ospeca` FOREIGN KEY (`peca_FK`) REFERENCES `peca` (`codigo`),
  ADD CONSTRAINT `fk_osp` FOREIGN KEY (`os_FK`) REFERENCES `os` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
