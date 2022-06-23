USE curso_SQL_INOVA
/**/
--USER MASTER;
--CREATE DATABASE curso_SQL_INOVA


--truncar o que é --> é diminuir um tamanho de campo quer dizer que se eu passei um valor em varchar (10) e tiver 20 ele vai diminuir para 10 cortando as palavras isso é truncar 

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

--CONSTRAINT --> é uma regra é a restricao de uma integridade sao usados 
--para garantir a exatidao e a consistencia  dos dados 

--quando eu faco um CONSTRAINT  estou altrando uma tabela 