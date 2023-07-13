USE F1;

-- Exclusão de dados na tabela Carro
DELETE FROM Carro WHERE idCarro = 1;

-- Exclusão de dados na tabela Endereco
DELETE FROM Endereco WHERE idEndereco = 1;

-- Exclusão de dados na tabela Engenheiro
DELETE FROM Engenheiro WHERE idEngenheiro = 1;

-- Exclusão de dados na tabela Equipe
DELETE FROM Equipe WHERE idEquipe = 1;

-- Exclusão de dados em tabelas relacionadas usando DELETE aninhado
DELETE FROM Funcionario 
	   WHERE idEquipe IN (SELECT idEquipe 
			      FROM Equipe 
                              WHERE nomeEquipe = 'Mercedes-AMG Petronas Formula One Team');
