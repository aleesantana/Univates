CREATE TABLE Acompanhamento (
	codigo INT NOT NULL,
	data DATE NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	quantidade INT NOT NULL,
	valor_gasto FLOAT NOT NULL,
	PRIMARY KEY (codigo)
);
	
CREATE TABLE Animal (
	codigo INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE Porte (
	codigo INT NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE Raca (
	codigo INT NOT NULL,
	descricao VARCHAR(300) NOT NULL,
	PRIMARY KEY (codigo)
);

ALTER TABLE acompanhamento ADD COLUMN animal_codigo INT;

ALTER TABLE acompanhamento 
ADD CONSTRAINT animal_codigo
FOREIGN KEY (animal_codigo)
REFERENCES Animal (codigo);

ALTER TABLE animal ADD COLUMN porte_codigo INT;
ALTER TABLE animal ADD COLUMN raca_codigo INT;

ALTER TABLE animal 
ADD CONSTRAINT porte_codigo
FOREIGN KEY (porte_codigo)
REFERENCES porte (codigo);

ALTER TABLE animal 
ADD CONSTRAINT raca_codigo
FOREIGN KEY (raca_codigo)
REFERENCES raca (codigo);