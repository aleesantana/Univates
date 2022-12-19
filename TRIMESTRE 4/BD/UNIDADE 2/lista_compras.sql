CREATE TABLE Usuario (
	codigo INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	senha VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
	admin VARCHAR(100) NOT NULL,
    situacao VARCHAR(250) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE Lista (
	codigo INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data DATE NOT NULL,
    situacao VARCHAR(250) NOT NULL,
	usuario_codigo INT,
	PRIMARY KEY (codigo)
);

CREATE TABLE ItensLista (
	codigo INT NOT NULL,
	qtdeRequerida NUMERIC NOT NULL,
    qtdeComprada NUMERIC NOT NULL,
	valorItem MONEY NOT NULL,
	situacaoItem VARCHAR(200),
	lista_codigo INT,
	produto_codigo INT,
	PRIMARY KEY (codigo)
);

CREATE TABLE Categoria (
	codigo INT NOT NULL,
	descricao VARCHAR(200),
	PRIMARY KEY (codigo)
);

CREATE TABLE Produto (
	codigo INT NOT NULL,
	descricao VARCHAR(300),
	categoria_codigo INT,
	PRIMARY KEY (codigo)
);

ALTER TABLE LISTA 
ADD CONSTRAINT usuario_codigo
FOREIGN KEY (usuario_codigo)
REFERENCES Usuario (codigo);

ALTER TABLE ItensLista 
ADD CONSTRAINT lista_codigo
FOREIGN KEY (lista_codigo)
REFERENCES Lista (codigo);

ALTER TABLE ItensLista 
ADD CONSTRAINT produto_codigo
FOREIGN KEY (produto_codigo)
REFERENCES Produto (codigo);

ALTER TABLE Produto 
ADD CONSTRAINT categoria_codigo
FOREIGN KEY (categoria_codigo)
REFERENCES Categoria (codigo);