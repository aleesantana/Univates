/* 1 - Criar uma tabela Cidade, contendo basicamente os atributos: id e
nome. Popular essa tabela com 10 cidades.*/

create table cidade (
	idcidade int not null,
	nomecidade varchar(100)
);

alter table cidade add constraint idcidade primary key (idcidade);

insert into cidade values (1, 'Lajeado');
insert into cidade values (2, 'Arroio do Meio');
insert into cidade values (3, 'Encantado');
insert into cidade values (4, 'Estrela');
insert into cidade values (5, 'Cruzeiro do Sul');
insert into cidade values (6, 'Venâncio Aires');
insert into cidade values (7, 'Santa Cruz do Sul');
insert into cidade values (8, 'Porto Alegre');
insert into cidade values (9, 'Rio de Janeiro');
insert into cidade values (10, 'São Pulo');

/* 2 - Adicionar um relacionamento entre Professor e Cidade, em que um
Professor mora em uma Cidade. Isso significa criar uma chave estrangeira
entre Professor e Cidade. Este novo relacionamento está
mapeado no modelo ER a seguir:*/

alter table professor
add column cidade_idcidade INT;

alter table professor
add constraint cidade_idcidade
	foreign key(cidade_idcidade)
	references cidade(idcidade);
	
/* 3 - Vincular cidades a professores, por meio de comandos UPDATE. Todos
professores devem possuir uma cidade. Estabelecida a referência
entre Professor e Cidade no passo 2, aqui vamos definir qual a cidade
de cada professor.*/

update professor set cidade_idcidade = 1 where nome = 'Juca Bala';
update professor set cidade_idcidade = 2 where nome = 'Marcio';
update professor set cidade_idcidade = 3 where nome = 'Joao';
update professor set cidade_idcidade = 4 where nome = 'Maria';
update professor set cidade_idcidade = 5 where nome = 'Ana';
update professor set cidade_idcidade = 6 where nome = 'Paulo';
update professor set cidade_idcidade = 7 where nome = 'Jean';
update professor set cidade_idcidade = 8 where nome = 'Julio';
update professor set cidade_idcidade = 9 where nome = 'Margarete';
update professor set cidade_idcidade = 10 where nome = 'Fernando';
update professor set cidade_idcidade = 1 where nome = 'Thiago';
update professor set cidade_idcidade = 2 where nome = 'Ivete';
update professor set cidade_idcidade = 3 where nome = 'Angelita';
update professor set cidade_idcidade = 4 where nome = 'Mariana';
update professor set cidade_idcidade = 5 where nome = 'Julia';
update professor set cidade_idcidade = 6 where nome = 'Carlos';
update professor set cidade_idcidade = 7 where nome = 'Gorge';
update professor set cidade_idcidade = 8 where nome = 'Luciano';
update professor set cidade_idcidade = 9 where nome = 'Fabricio';
update professor set cidade_idcidade = 10 where nome = 'Evandro';

/* 4 - Consultas: Obter o número de professores por cidade. Exibir o id e
o nome da cidade, além do número de professores vinculados a cada
cidade.*/

select 	
	c.idcidade, c.nomecidade,
	count(p.cidade_idcidade) as totalporcidade
from
	professor p, cidade c
where 
	p.cidade_idcidade = c.idcidade
group by
	c.idcidade

/* 5 - Consultas: Obter todos os dados dos professores que residem na Cidade
de Lajeado e são Mestres. Mostrar o nome do professor, a descrição
da titulação e o nome da cidade.*/

select 
	p.nome, t.descricao, c.nomecidade
from 
	professor p, titulacao t, cidade c
where
	p.cidade_idcidade = c.idcidade AND 
	c.nomecidade = 'Lajeado' AND
	t.descricao = 'Mestre';

/* 6 - Consultas: Obter todos os dados dos cursos ministrados por professores
da Cidade de Porto Alegre, com carga horário mínima de 30
horas, exceto os cursos ministrados pelo professor Juca Bala. Exibir o
id, a carga horária e o nome destes cursos. */

select 
	c.idcurso, c.carga_horaria, c.nome
from
	curso c, professor p
where
	p.cidade_idcidade = 8 and
	p.nome != 'Juca Bala' and
	c.carga_horaria >= 30;