USE F1;

DELIMITER $$
CREATE PROCEDURE VerificarParidadeDosPilotos()
BEGIN
    -- Declaração de variável
    DECLARE contador INT DEFAULT 1;

    -- Loop WHILE
    WHILE contador <= 5 DO
        -- Comando IF
        IF contador % 2 = 0 THEN
            SELECT CONCAT('O piloto de número ', contador, ' é par.') AS Resultado;
        ELSE
            SELECT CONCAT('O piloto de número ', contador, ' é ímpar.') AS Resultado;
        END IF;

        SET contador = contador + 1;
    END WHILE;
END $$
DELIMITER ;

-- Execução do procedimento
CALL VerificarParidadeDosPilotos();


DELIMITER $$
CREATE PROCEDURE BuscarNomeDoPiloto(IN idPiloto INT, OUT nomePiloto VARCHAR(50))
BEGIN
    -- Buscar o nome do piloto com base no idPiloto
    SELECT nome INTO nomePiloto FROM Funcionario WHERE idFuncionario = idPiloto;

    -- Comando IF
    IF nomePiloto IS NOT NULL THEN
        SET nomePiloto = CONCAT('O piloto de id ', idPiloto, ' é ', nomePiloto, '.');
    ELSE
        SET nomePiloto = CONCAT('Não foi encontrado um piloto com id ', idPiloto, '.');
    END IF;
END $$
DELIMITER ;

-- Execução do procedimento
SET @nomePiloto := '';
CALL BuscarNomeDoPiloto(7, @nomePiloto);
SELECT @nomePiloto AS Resultado;



-- Criação da função
DELIMITER $$
CREATE FUNCTION CalcularMediaPontosEquipe(idEquipe INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE somaPontos DECIMAL(10,2);
    DECLARE numCarros INT;
    DECLARE mediaPontos DECIMAL(10,2);
    
    SELECT SUM(pontos) INTO somaPontos
    FROM Piloto
    WHERE idPiloto IN (
        SELECT idPiloto
        FROM Carro
        WHERE idEquipe = idEquipe
    );
    
    SELECT COUNT(*) INTO numCarros
    FROM Carro
    WHERE idEquipe = idEquipe;
    
    IF numCarros > 0 THEN
        SET mediaPontos = somaPontos / numCarros;
    ELSE
        SET mediaPontos = 0;
    END IF;
    
    RETURN mediaPontos;
END$$
DELIMITER ;

-- Exemplo de chamada da função
SELECT CalcularMediaPontosEquipe(1); -- Substitua o valor 1 pelo idEquipe desejado
