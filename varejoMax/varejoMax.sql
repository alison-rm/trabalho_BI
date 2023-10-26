-- Crie o banco de dados VarejoMaxDB
CREATE DATABASE VarejoMaxDB;
USE VarejoMaxDB;

-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);

-- Preencha a tabela de Produtos com dados 
INSERT INTO Produtos (ProdutoID, NomeProduto, Categoria, Preco)
VALUES
    (1, 'Smartphone Galaxy S22', 'Eletrônicos', 899.99),
    (2, 'Camisa Polo Azul', 'Roupas', 29.99),
    (3, 'Notebook HP EliteBook', 'Eletrônicos', 1299.99),
    (4, 'Tênis de Corrida Nike Air Zoom', 'Calçados', 89.99),
    (5, 'Smart TV 55" LG 4K', 'Eletrônicos', 599.99),
    (6, 'Smartwatch Fitbit Versa', 'Eletrônicos', 129.99),
    (7, 'Blusa de Lã Cinza', 'Roupas', 45.99),
    (8, 'Notebook Dell XPS', 'Eletrônicos', 1499.99),
    (9, 'Sapatos Sociais de Couro', 'Calçados', 79.99),
    (10, 'Câmera Digital Canon EOS', 'Eletrônicos', 699.99),
    (11, 'Vestido de Festa Azul', 'Roupas', 59.99),
    (12, 'Tênis de Basquete Nike Air Jordan', 'Calçados', 119.99),
    (13, 'Fone de Ouvido Bose QuietComfort', 'Eletrônicos', 249.99),
    (14, 'Jaqueta de Couro Marrom', 'Roupas', 69.99),
    (15, 'TV OLED 65" Sony 4K', 'Eletrônicos', 1499.99),
    (16, 'Bolsa de Couro Clássica', 'Acessórios', 39.99),
    (17, 'Tablet Samsung Galaxy Tab', 'Eletrônicos', 299.99),
    (18, 'Vestido de Verão Floral', 'Roupas', 34.99),
    (19, 'Botas de Caminhada Timberland', 'Calçados', 89.99),
    (20, 'Monitor de Jogos ASUS 27"', 'Eletrônicos', 349.99);

-- Tabela de Vendas
CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY,
    ProdutoID INT,
    DataVenda DATE,
    QuantidadeVendida INT,
    ValorVenda DECIMAL(10, 2)
);

-- Preencha a tabela de Vendas com dados
INSERT INTO Vendas (VendaID, ProdutoID, DataVenda, QuantidadeVendida, ValorVenda)
VALUES
    (1, 1, '2023-01-15', 3, 2699.97),
    (2, 2, '2023-01-16', 5, 149.95),
    (3, 3, '2023-01-17', 2, 2599.98),
    (4, 4, '2023-01-18', 7, 629.93),
    (5, 5, '2023-01-19', 1, 599.99),
    (6, 6, '2023-02-10', 2, 259.98),
    (7, 7, '2023-03-05', 3, 137.97),
    (8, 8, '2023-04-20', 1, 1499.99),
    (9, 9, '2023-05-15', 5, 399.95),
    (10, 10, '2023-06-25', 1, 699.99),
    (11, 11, '2023-07-12', 2, 119.98),
    (12, 12, '2023-08-30', 4, 479.96),
    (13, 13, '2023-09-14', 3, 749.97),
    (14, 14, '2023-10-03', 2, 139.98),
    (15, 15, '2023-11-22', 1, 1499.99),
    (16, 16, '2023-12-19', 4, 159.96),
    (17, 17, '2023-01-08', 2, 599.98),
    (18, 18, '2023-02-18', 3, 269.97),
    (19, 19, '2023-03-27', 1, 89.99),
    (20, 20, '2023-04-01', 2, 699.98);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY,
    NomeFornecedor VARCHAR(100),
    Contato VARCHAR(100)
);

-- Preencha a tabela de Fornecedores com dados 
INSERT INTO Fornecedores (FornecedorID, NomeFornecedor, Contato)
VALUES
    (1, 'Samsung Electronics', 'contato@samsung.com'),
    (2, 'Ralph Lauren Corp', 'contato@ralphlauren.com'),
    (3, 'HP Inc', 'contato@hp.com'),
    (4, 'Nike, Inc.', 'contato@nike.com'),
    (5, 'LG Electronics', 'contato@lg.com');
    
