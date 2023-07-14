USE F1;

DELIMITER $$
CREATE TRIGGER before_insert_funcionario
BEFORE INSERT ON Funcionario FOR EACH ROW
BEGIN
    IF(NEW.sexo != 'F' AND NEW.sexo != 'M') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aceita-se somente M(Masculino) e F(Feminino) para o sexo do funcionário.';
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_update_equipe
BEFORE UPDATE ON Equipe FOR EACH ROW
BEGIN
    DECLARE num_titulos INT;

    SELECT titulos INTO num_titulos
    FROM Equipe
    WHERE idEquipe = NEW.idEquipe;

    IF(NEW.titulos < num_titulos) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Número de títulos menor que o atual.';
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_delete_equipe
BEFORE DELETE ON Equipe FOR EACH ROW
BEGIN
    IF(OLD.nomeEquipe = 'Mercedes-AMG Petronas Formula One Team') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Não é possível deletar a equipe da Mercedes.';
    END IF;
END $$
DELIMITER ;

-- Inserção de um Funcionário informando o sexo corretamente (ocorre normalmente)
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (11, 'Ana Silva', 'Brasil', 'F', 'E', 2022, 1);

-- Inserção de um Funcionário informando o sexo errado
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (11, 'Ana Silva', 'Brasil', 'G', 'E', 2022, 1);


-- Atualizando o número de títulos de uma equipe por um número maior (ocorre normalmente)
UPDATE Equipe
SET titulos = 8
WHERE idEquipe = 1;

-- Tentando atualizar o número de títulos de uma equipe por um número menor
UPDATE Equipe
SET titulos = 3
WHERE idEquipe = 2;


-- Excluindo uma outra equipe (funciona normalmente)
DELETE FROM Equipe
WHERE idEquipe = 2;

-- Tentando excluir a equipe Mercedes
DELETE FROM Equipe
WHERE idEquipe = 1;
