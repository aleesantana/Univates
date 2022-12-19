/* a. Crie um script criacao.sql que contenha os comandos de criação da base de
dados representada pelo modelo.*/

CREATE TABLE titulacao (
	idtitulacao INT NOT NULL,
	descricao VARCHAR(150),
	PRIMARY KEY (idtitulacao));
	
create table area_conhecimento (
	idarea_conhecimento INT NOT NULL,
	descricao VARCHAR(100),
	primary key (idarea_conhecimento)
);

create table curso (
	idcurso INT NOT NULL,
	nome VARCHAR(100),
	descricao TEXT,
	carga_horaria INT,
	primary key (idcurso)
);

create table professor (
	idprofessor int not null,
	nome varchar(100)
);

create table professor_curso (
	idprofessor_curso int not null
);

alter table professor add constraint idprofessor primary key (idprofessor);
alter table professor_curso add constraint idprofessor_curso primary key (idprofessor_curso);

alter table professor 
add column area_conhecimento_idarea_conhecimento INT;

alter table professor
add constraint area_conhecimento_idarea_conhecimento
	foreign key(area_conhecimento_idarea_conhecimento)
	references area_conhecimento(idarea_conhecimento);
	
alter table professor 
add column titulacao_idtitulacao INT;

alter table professor
add constraint titulacao_idtitulacao
	foreign key (titulacao_idtitulacao)
	references titulacao (idtitulacao);
	
alter table professor_curso
add column professor_idprofessor INT;

alter table professor_curso
add column curso_idcurso INT;

alter table professor_curso
add constraint professor_idprofessor
	foreign key (professor_idprofessor)
		references professor(idprofessor);
		
alter table professor_curso
add constraint curso_idcurso
	foreign key(curso_idcurso)
	references curso(idcurso);
