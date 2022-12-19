SELECT * FROM acompanhamento;

INSERT INTO acompanhamento VALUES (2, '03/10/2021', 'Banho', 1, 70.0, 20);
INSERT INTO acompanhamento VALUES (3, '05/07/2022', 'Tosa', 1, 70.0, 7);
INSERT INTO acompanhamento VALUES (4, '03/10/2022', 'Vacinação', 1, 100.0, 2);
INSERT INTO acompanhamento VALUES (5, '08/04/2022', 'Banho e tosa', 1, 140.0, 3);
INSERT INTO acompanhamento VALUES (6, '07/07/2021', 'Vacinação', 3, 150.0, 4);
INSERT INTO acompanhamento VALUES (7, '05/07/2022', 'Banho', 1, 70.0, 5);
INSERT INTO acompanhamento VALUES (8, '12/04/2020', 'Vacinação', 2, 100.0, 6);
INSERT INTO acompanhamento VALUES (9, '17/11/2021', 'Banho e tosa', 1, 150.0, 7);
INSERT INTO acompanhamento VALUES (10, '13/10/2021', 'Vacinação', 1, 100.0, 8);
INSERT INTO acompanhamento VALUES (11, '01/09/2022', 'Tosa', 1, 70.0, 9);
INSERT INTO acompanhamento VALUES (12, '09/02/2022', 'Vacinação', 2, 100.0, 10);
INSERT INTO acompanhamento VALUES (13, '08/11/2021', 'Banho e tosa', 1, 150.0, 2);
INSERT INTO acompanhamento VALUES (14, '21/04/2021', 'Curativos', 3, 180.0, 7);
INSERT INTO acompanhamento VALUES (15, '25/07/2020', 'Banho', 1, 70.0, 11);
INSERT INTO acompanhamento VALUES (16, '28/10/2021', 'Vacinação', 2, 140.0, 12);
INSERT INTO acompanhamento VALUES (17, '29/10/2022', 'Banho e tosa', 1, 140.0, 1);
INSERT INTO acompanhamento VALUES (18, '01/10/2022', 'Curativos', 1, 50.0, 13);
INSERT INTO acompanhamento VALUES (19, '24/05/2022', 'Vacinação', 2, 100.0, 14);
INSERT INTO acompanhamento VALUES (20, '21/07/2021', 'Banho e tosa', 1, 70.0, 15);
INSERT INTO acompanhamento VALUES (21, '26/05/2022', 'Banho', 2, 140.0, 5);
INSERT INTO acompanhamento VALUES (22, '28/10/2021', 'Banho e tosa', 1, 140.0, 16);
INSERT INTO acompanhamento VALUES (23, '29/10/2022', 'Curativos', 1, 50.0, 17);
INSERT INTO acompanhamento VALUES (24, '01/10/2022', 'Banho', 2, 100.0, 18);
INSERT INTO acompanhamento VALUES (25, '24/05/2022', 'Vacinação', 4, 180.0, 20);
INSERT INTO acompanhamento VALUES (26, '21/07/2021', 'Banho e tosa', 1, 140.0, 20);
INSERT INTO acompanhamento VALUES (27, '26/05/2022', 'Banho', 2, 100.0, 2);
INSERT INTO acompanhamento VALUES (28, '26/05/2022', 'Tosa', 2, 100.0, 2);
INSERT INTO acompanhamento VALUES (29, '26/05/2022', 'Vacinação', 2, 80.0, 5);
INSERT INTO acompanhamento VALUES (30, '26/05/2022', 'Banho', 1, 70.0, 6);

--Obter os dados dos animais da raça cujo código seja 3
SELECT 
	*
FROM
	animal
WHERE
	raca_codigo = 3;
	
--Obter os dados dos animais do porte cujo código seja 2
SELECT 
	*
FROM
	animal
WHERE
	porte_codigo = 2;
	
--Obter os dados dos animais que nasceram entre os anos de 2010 e 2015
SELECT * FROM animal WHERE data_nascimento BETWEEN '01/01/2010' AND '31/12/2015';

--Obter dados dos registros de acompanhamento que ocorreram no mês de Março/2018 somente para o animal cujo código seja 14
SELECT * FROM acompanhamento WHERE data BETWEEN '01/03/2018' AND '31/03/2018' AND animal_codigo = 14;
