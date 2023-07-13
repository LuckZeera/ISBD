USE F1;

UPDATE Patrocinador
SET setor_comercial = 'Servidores'
WHERE idPatrocinador IN (SELECT idPatrocinador FROM Patrocinador_Equipe WHERE idEquipe = 2);

SELECT *
FROM Patrocinador;

UPDATE Inovacao
SET nome_inovacao = 'Sistema de Conversão de Energia'
WHERE idInovacao = 2;

SELECT *
FROM Inovacao;

UPDATE Fa
SET email = 'luiz@exemplo.com'
WHERE idFa = 2;

SELECT *
FROM Fa;

UPDATE Piloto
SET titulos = 5
WHERE idPiloto = 2;

SELECT *
FROM Piloto;

UPDATE Carro
SET marca_motor = 'Porshe'
WHERE idCarro = 2;

SELECT *
FROM Carro;
