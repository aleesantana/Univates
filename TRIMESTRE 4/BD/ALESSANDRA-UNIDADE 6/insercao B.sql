/* 1 - Inserção de 5 áreas de conhecimento: Exatas, Humanas, Sociais, Saúde,
Teologia*/

insert into area_conhecimento values(1, 'Exatas');
insert into area_conhecimento values(2, 'Humanas');
insert into area_conhecimento values(3, 'Sociais');
insert into area_conhecimento values(4, 'Saúde');
insert into area_conhecimento values(5, 'Teologia');

/* 2 - Inserção de 5 níveis de titulação: Graduado, Especialista, Mestre,
Doutor, Pós-Doutor*/

insert into titulacao values(1, 'Graduado');
insert into titulacao values(2, 'Especialista');
insert into titulacao values(3, 'Mestre');
insert into titulacao values(4, 'Doutor');
insert into titulacao values(5, 'Pós-Doutor');

/* 3 - Inserção de 20 professores (um deles deve ser o Juca Bala): gerar os
dados para essa inserção*/

insert into professor values(1, 'Juca Bala', 1, 4);
insert into professor values(2, 'Marcio', 2, 5);
insert into professor values(3, 'Joao', 2, 5);
insert into professor values(4, 'Maria', 3, 1);
insert into professor values(5, 'Ana', 3, 2);
insert into professor values(6, 'Paulo', 4, 2);
insert into professor values(7, 'Jean', 4, 2);
insert into professor values(8, 'Julio', 5, 3);
insert into professor values(9, 'Margarete', 5, 3);
insert into professor values(10, 'Fernando', 1, 3);
insert into professor values(11, 'Thiago', 2, 4);
insert into professor values(12, 'Ivete', 1, 4);
insert into professor values(13, 'Angelita', 3, 4);
insert into professor values(14, 'Mariana', 4, 5);
insert into professor values(15, 'Julia', 4, 3);
insert into professor values(16, 'Carlos', 1, 3);
insert into professor values(17, 'Gorge', 2, 1);
insert into professor values(18, 'Luciano', 4, 2);
insert into professor values(19, 'Fabricio', 3, 2);
insert into professor values(20, 'Evandro', 1, 4);

/* 4 - Inserção de 7 cursos: gerar os dados para essa inserção*/

insert into curso values(1, 'Estatística Aplicada', 'Ensinamentos sobre estatística para áreas de estudo.', 15);
insert into curso values(2, 'Formação de Gerentes', 'Curso dinâmico para pessoas que desejam gerenciar com sabedoria.', 20);
insert into curso values(3, 'Projetos Sociais em Lajeado', 'Como obter sucesso em projetos sociais na cidade de Lajeado', 35);
insert into curso values(4, 'Aplicação de injetáveis', 'Práticas para aplicação de medicamentos injetáveis.', 40);
insert into curso values(5, 'Nutrição na atualidade', 'Como se alimentar bem em meio a tantos industrializados.', 40);
insert into curso values(6, 'Lógica de Programação', 'Ensinamentos sobre lógica computacional para profissionais de tecnologia.', 44);
insert into curso values(7, 'Teologia no século XXI', 'Como vemos a teologia nos dias de hoje', 20);

/* 5 - Inserção/Amarração de cada professor a 1 ou mais cursos: amarrar
aleatoriamente no script*/

insert into professor_curso values(1, 1, 6);
insert into professor_curso values(2, 2, 1);
insert into professor_curso values(3, 3, 2);
insert into professor_curso values(4, 4, 3);
insert into professor_curso values(5, 5, 4);
insert into professor_curso values(6, 6, 5);
insert into professor_curso values(7, 7, 6);
insert into professor_curso values(8, 8, 7);
insert into professor_curso values(9, 9, 1);
insert into professor_curso values(10, 10, 2);
insert into professor_curso values(11, 11, 3);
insert into professor_curso values(12, 12, 4);
insert into professor_curso values(13, 13, 5);
insert into professor_curso values(14, 14, 6);
insert into professor_curso values(15, 15, 7);
insert into professor_curso values(16, 16, 1);
insert into professor_curso values(17, 17, 2);
insert into professor_curso values(18, 18, 3);
insert into professor_curso values(19, 19, 4);
insert into professor_curso values(20, 20, 5);
