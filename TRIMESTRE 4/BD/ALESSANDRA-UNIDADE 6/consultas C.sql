/* 1 - Obter todos os dados dos professores com titulação de Mestre ou
Doutor. Mostrar o id, o nome do professor e a descrição da titulação
do professor.*/

select 
	p.idprofessor, p.nome, t.descricao
from
	professor p
INNER JOIN titulacao t ON p.titulacao_idtitulacao = t.idtitulacao
where 
	p.titulacao_idtitulacao = 3 OR
	p.titulacao_idtitulacao = 4;
	
/* 2 - Obter todos os dados dos cursos com pelo menos 20 horas. Exibir o
nome e a carga horária do curso.*/

select 
	c.nome, c.carga_horaria
from 
	curso c
where
	carga_horaria >= 20;
	
/* 3 - Obter todos os dados dos cursos ministrados pelo professor Juca
Bala (ele deve ter sido cadastrado). Exibir o nome do professor e os
nomes dos cursos que ele ministrou.*/

select
	p.nome, c.nome
from 
	curso c
inner join professor_curso pc ON c.idcurso = pc.curso_idcurso
inner join professor p ON pc.professor_idprofessor = p.idprofessor
where
	p.nome = 'Juca Bala'
	
/* 4 - Obter quantos cursos o professor Juca Bala ministra com carga horária
superior a 30 horas. Exibir o id e o nome do professor e a contagem
dos cursos ministrados por ele.*/

select 
	count(pc.curso_idcurso),
	p.idprofessor, 
	p.nome
from 
	curso c, professor_curso pc
inner join professor p on pc.professor_idprofessor = p.idprofessor
where
	c.carga_horaria >= 30 and
	c.idcurso = pc.curso_idcurso and
	p.nome = 'Juca Bala'
group by 
	p.idprofessor
	
/* 5 - Obter a quantidade de cursos ministrados categorizados de acordo
com a titulação dos professores. Ex.: Graduação – 5, Especialista – 12,
Mestre – 20, Doutor – 3. Isso significa que 5 dos cursos são ministrados
por professores com Graduação, 12 cursos são ministrados por
professores Especialistas. A consulta deve retornar o id e a descrição
da titulação e também a contagem de cursos para cada titulação.*/

select 
	count(pc.curso_idcurso),
	tit.idtitulacao,
	tit.descricao
from 
	titulacao tit, professor_curso pc, professor p, curso c
where
	tit.idtitulacao = p.titulacao_idtitulacao and
	pc.curso_idcurso = c.idcurso
group by
	tit.idtitulacao