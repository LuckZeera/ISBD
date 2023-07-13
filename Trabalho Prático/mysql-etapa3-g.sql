USE F1;
-- View 1
CREATE VIEW Inovacao_Engenheiro (area_trab, nome_inovacao, idEngenheiro) AS
SELECT area_trab, nome_inovacao, idEngenheiro 
FROM Inovacao NATURAL JOIN Engenheiro;

-- Exemplos de uso da View
SELECT nome_inovacao 
FROM Inovacao_Engenheiro 
WHERE idEngenheiro = 2;

SELECT area_trab 
FROM Inovacao_Engenheiro 
WHERE nome_Inovacao = 'Sistema de Direção Assistida';

-- View 2
CREATE VIEW Carro_Equipe(nome_modelo, nomeEquipe, ano_adesao) AS
SELECT nome_modelo, nomeEquipe, ano_adesao 
FROM Carro NATURAL JOIN Equipe;

-- Exemplos do uso da View
SELECT nome_modelo 
FROM Carro_Equipe 
WHERE ano_adesao = 2010;

SELECT nomeEquipe 
FROM Carro_Equipe 
WHERE nome_modelo = 'Red Bull RB16B';

-- View 3
CREATE VIEW Piloto_Funcionario AS
SELECT nome, nacionalidade, ano_contratacao, idPiloto
FROM Piloto JOIN Funcionario ON Piloto.idPiloto = Funcionario.idFuncionario;


-- Exemplos do uso da View
SELECT nome, nacionalidade 
FROM Piloto_Funcionario 
WHERE idPiloto = 7;

SELECT nome, ano_contratacao 
FROM Piloto_Funcionario 
WHERE idPiloto = 10;