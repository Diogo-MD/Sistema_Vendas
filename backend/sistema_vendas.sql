-- Criação do banco de dados
	CREATE DATABASE IF NOT EXISTS sistema_vendas;
	USE sistema_vendas;

-- Tabela Categoria
	CREATE TABLE IF NOT EXISTS Categoria (
		Id INT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR (100) NOT NULL,
        Descricao TEXT,
        DataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP,
        DataAtualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        UsuarioAtualizacao INT,
        Ativo TINYINT (1) DEFAULT 1
    );
    
-- Tabela FormaPagamento
	CREATE TABLE IF NOT EXISTS FormaPagamento (
		Id INT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR(100) NOT NULL,
        Descricao TEXT,
        DataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP,
        DataAtualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        UsuarioAtualizacao INT,
        Ativo TINYINT(1) DEFAULT 1
    );
    
-- Tabela Produto
	CREATE TABLE IF NOT EXISTS Produto (
		Id INT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR(100) NOT NULL,
        Descricao TEXT,
		Preco DECIMAL(10,2) NOT NULL,
		CategoriaID INT,
        DataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP,
        DataAtualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        UsuarioAtualizacao INT,
        Ativo TINYINT(1) DEFAULT 1,
        INDEX idx_nome_descricao (Nome, Descricao), -- Adiciona indrice nas colunas Nome e Descricao
        
    );