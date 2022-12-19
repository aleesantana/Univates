CREATE TABLE Bicicleta (
	codigo INT NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	situacao VARCHAR(250) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE Local (
	codigo INT NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	situacao VARCHAR(250) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE Locacao (
	codigo INT NOT NULL,
	data_hora_retirada TIMESTAMP,
    data_hora_devolucao TIMESTAMP,
	situacao VARCHAR(250) NOT NULL,
	Bicicleta_codigo INT,
	Local_codigo_retirada INT,
    Local_codigo_devolucao INT,
	Pessoa_codigo INT,
	PRIMARY KEY (codigo)
);

CREATE TABLE Pessoa (
	codigo INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
	senha VARCHAR(50) NOT NULL,
    situacao VARCHAR(250) NOT NULL,
	PRIMARY KEY (codigo)
);

ALTER TABLE locacao 
ADD CONSTRAINT bicicleta_codigo
FOREIGN KEY (bicicleta_codigo)
REFERENCES Bicicleta (codigo);

ALTER TABLE locacao 
ADD CONSTRAINT Local_codigo_retirada
FOREIGN KEY (Local_codigo_retirada)
REFERENCES Local (codigo);

ALTER TABLE locacao 
ADD CONSTRAINT Local_codigo_devolucao
FOREIGN KEY (Local_codigo_devolucao)
REFERENCES Local (codigo);

ALTER TABLE locacao 
ADD CONSTRAINT Pessoa_codigo
FOREIGN KEY (Pessoa_codigo)
REFERENCES Pessoa (codigo);