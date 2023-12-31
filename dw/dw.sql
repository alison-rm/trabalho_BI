-- MySQL Script generated by MySQL Workbench
-- Sun Oct  1 09:22:15 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dw
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dw
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dw` DEFAULT CHARACTER SET utf8 ;
USE `dw` ;

-- Tabela Dimensão Produto
CREATE TABLE DimensaoProduto (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);

-- Tabela Dimensão Tempo
CREATE TABLE DimensaoTempo (
    TempoID INT PRIMARY KEY,
    Ano INT,
    Mes VARCHAR(50),
    Trimestre INT,
    DiaSemana VARCHAR(50),
    FlagFeriado BOOLEAN
);

-- Tabela Dimensão Fornecedor
CREATE TABLE DimensaoFornecedor (
    FornecedorID INT PRIMARY KEY,
    NomeFornecedor VARCHAR(100),
    Contato VARCHAR(100)
);

-- Tabela Fato Vendas
CREATE TABLE FatoVendas (
    VendaID INT PRIMARY KEY,
    ProdutoID INT,
    TempoID INT,
    FornecedorID INT,
    QuantidadeVendida INT,
    ValorVenda DECIMAL(10, 2)
);

ALTER TABLE FatoVendas
    ADD FOREIGN KEY (ProdutoID) REFERENCES DimensaoProduto(ProdutoID),
    ADD FOREIGN KEY (TempoID) REFERENCES DimensaoTempo(TempoID),
    ADD FOREIGN KEY (FornecedorID) REFERENCES DimensaoFornecedor(FornecedorID);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

