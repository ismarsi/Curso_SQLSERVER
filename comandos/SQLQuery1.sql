USE curso_SQL_INOVA
/**/
--USER MASTER;
--CREATE DATABASE curso_SQL_INOVA



CREATE TABLE Produtos(
codigoProduto INT PRIMARY KEY IDENTITY (1,1) ,
nomeProduto VARCHAR(50) NOT NULL,
valorProduto DECIMAL(6,2) NOT NULL
);

CREATE TABLE Clientes (
codigoCliente INT PRIMARY KEY IDENTITY (1,1),
nomeCliente VARCHAR(50) NOT NULL,
dataNascimento DATE,
sexo varchar (1) NOT NULL,
nomeEndereco VARCHAR(50),
nomeCidade VARCHAR(50),
nomeEstado VARCHAR(30),
telefone1 VARCHAR(15),
telefone2 VARCHAR(15)
);

CREATE TABLE Vendas(
codigoVenda INT PRIMARY KEY IDENTITY (1,1),
codigoProduto INT NOT NULL,
valorProduto DECIMAL(10,2)
);

ALTER TABLE Vendas
ADD CONSTRAINT FK_Produto_Venda
FOREIGN KEY (codigoProduto)
REFERENCES Produtos (codigoProduto)

SELECT * FROM 