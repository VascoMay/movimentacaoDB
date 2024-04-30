CREATE TABLE usuario (
    idUsuario INTEGER IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(50) NOT NULL
);


CREATE TABLE pessoa (
    idPessoa INTEGER PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
    logradouro VARCHAR(300) NOT NULL,
	cidade VARCHAR(200) NOT NULL,
	estado VARCHAR(5) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);


CREATE TABLE pessoaFisica (
    idPessoa INTEGER PRIMARY KEY REFERENCES pessoa(idPessoa),
    cpf VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE pessoaJuridica (
    idPessoa INTEGER PRIMARY KEY REFERENCES pessoa(idPessoa),
    cnpj VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE produto (
    idProduto INTEGER IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INTEGER NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE movimentacao (
    idMovimentacao INTEGER IDENTITY(1,1) PRIMARY KEY,
    idUsuario INTEGER NOT NULL,
    idProduto INTEGER NOT NULL,
    idPessoa INTEGER NOT NULL ,
    quantidade INTEGER NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
	tipo CHAR(1) NOT NULL,
	CONSTRAINT fk_usuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
	CONSTRAINT fk_produto FOREIGN KEY (idProduto) REFERENCES produto(idProduto),
	CONSTRAINT fk_pessoa FOREIGN KEY (idPessoa) REFERENCES pessoa(idPessoa)
);

CREATE SEQUENCE seq_idPessoa
    AS INTEGER
    START WITH 1
    INCREMENT BY 1;