USE F1;

-- 1- Consulta simples com cláusulas SELECT, FROM e WHERE
SELECT nome, nacionalidade 
FROM Funcionario
WHERE tipo_func = 'P';
-- Esta consulta retorna os nomes e nacionalidades dos funcionários do tipo "P" (Piloto)

-- 2- Consulta com cláusulas SELECT, FROM, WHERE e ORDER BY
SELECT nome, pontos 
FROM Piloto JOIN Funcionario ON idPiloto = idFuncionario 
ORDER BY pontos DESC;
-- Esta consulta retorna os nomes e pontos dos pilotos, ordenados pelos pontos em ordem decrescente.

-- 3- Consulta com cláusulas SELECT, FROM, WHERE e GROUP BY
SELECT idEquipe, COUNT(*) AS total_carros 
FROM Carro 
GROUP BY idEquipe;
-- Esta consulta retorna o número total de carros em cada equipe.

-- 4- Consulta com cláusulas SELECT, FROM, WHERE, GROUP BY e HAVING
SELECT idEquipe, AVG(titulos) AS media_titulos 
FROM Equipe 
GROUP BY idEquipe 
HAVING AVG(titulos) > 5;
-- Esta consulta retorna a média de títulos por equipe, apenas para as equipes com uma média de títulos superior a 5.

-- 5- Consulta com cláusulas SELECT, FROM e JOIN (junção interna)
SELECT Carro.nome_modelo, Equipe.nomeEquipe 
FROM Carro 
JOIN Equipe ON Carro.idEquipe = Equipe.idEquipe;
-- Esta consulta retorna o nome do modelo do carro e o nome da equipe correspondente, combinando os registros nas tabelas Carro e Equipe com base no idEquipe.

-- 6- Consulta com cláusulas SELECT, FROM e LEFT JOIN (junção externa esquerda)
SELECT Carro.nome_modelo, Funcionario.nome AS nome_piloto
FROM Carro
LEFT JOIN Funcionario ON Carro.idEquipe = Funcionario.idEquipe and Funcionario.tipo_func = 'P'
LEFT JOIN Piloto ON Funcionario.idFuncionario = Piloto.idPiloto;
-- Esta consulta retorna o nome do modelo do carro e o nome do piloto correspondente, incluindo todos os carros, 
-- mesmo que não haja um piloto associado (exibindo NULL para os registros sem correspondência).

-- 7- Consulta com cláusulas SELECT, FROM e UNION
SELECT nome
FROM Funcionario
WHERE idFuncionario IN (
  SELECT idEquipe
  FROM Funcionario
  WHERE tipo_func = 'E'
)
UNION
SELECT nome
FROM Funcionario
WHERE idFuncionario IN (
  SELECT idFuncionario
  FROM Piloto
);
-- Esta consulta retorna os nomes dos engenheiros e pilotos, combinando os resultados das duas consultas SELECT com UNION.

-- 8- Consulta com cláusulas SELECT, FROM e IN
SELECT nome_modelo 
FROM Carro 
WHERE idEquipe IN (SELECT idEquipe 
			       FROM Equipe 
                   WHERE nomeEquipe = 'Red Bull Racing');
-- Esta consulta retorna o nome e o nome do modelo dos carros pertencentes à equipe com o nome "Red Bull Racing".

-- 9- Consulta com cláusulas SELECT, FROM e LIKE
SELECT nome 
FROM Fa 
WHERE cidade LIKE '%ão%';
-- Esta consulta retorna os nomes dos fãs cuja cidade contém a sequência de caracteres "ão" em qualquer posição.

-- 10- Consulta com cláusulas SELECT, FROM e EXISTS
SELECT e.nomeEquipe, e.titulos
FROM Equipe e
WHERE e.titulos > (SELECT MAX(titulos)
				   FROM Equipe
				   WHERE ano_adesao > 2005
);
-- Esta consulta retorna o nome e o número de títulos das equipes com um número de títulos maior do que qualquer equipe que tenha aderido após 2005.

-- 11- Consulta com cláusulas SELECT, FROM e ANY/SOME
SELECT nomeEquipe, titulos 
FROM Equipe 
WHERE titulos > ANY (SELECT titulos 
					 FROM Equipe 
                     WHERE ano_adesao < 2020);
-- Esta consulta retorna o nome e o número de títulos das equipes com um número de títulos maior do que qualquer equipe que tenha aderido antes de 2020.

-- 12- Consulta com cláusulas SELECT, FROM e AVG (função agregada):
SELECT idEquipe, AVG(titulos) AS media_titulos 
FROM Equipe 
GROUP BY idEquipe 
HAVING AVG(titulos) > (SELECT AVG(titulos) FROM Equipe);
-- Esta consulta retorna o id da equipe e a média de títulos de cada equipe, apenas para as equipes cuja média de títulos seja maior do que a média de títulos geral de todas as equipes.






