USE F1;

-- Inserção de dados na tabela Equipe
INSERT INTO Equipe (nomeEquipe, titulos, ano_adesao)
VALUES ('Mercedes-AMG Petronas Formula One Team', 7, 2010);
INSERT INTO Equipe (nomeEquipe, titulos, ano_adesao)
VALUES ('Red Bull Racing', 4, 2005);
INSERT INTO Equipe (nomeEquipe, titulos, ano_adesao)
 VALUES ('Scuderia Ferrari Mission Winnow', 16, 1950);
INSERT INTO Equipe (nomeEquipe, titulos, ano_adesao) 
VALUES ('McLaren F1 Team', 8, 1966);
INSERT INTO Equipe (nomeEquipe, titulos, ano_adesao) 
VALUES ('Alpine F1 Team', 2, 1977);

-- Inserção de dados na tabela Carro
INSERT INTO Carro (idCarro, nome_modelo, marca_motor, idEquipe)
VALUES (1, 'Mercedes W12', 'Mercedes', 1);
INSERT INTO Carro (idCarro, nome_modelo, marca_motor, idEquipe)
VALUES (2, 'Red Bull RB16B', 'Honda', 2);
INSERT INTO Carro (idCarro, nome_modelo, marca_motor, idEquipe) 
VALUES (3, 'Ferrari SF21', 'Ferrari', 3);
INSERT INTO Carro (idCarro, nome_modelo, marca_motor, idEquipe) 
VALUES (4, 'McLaren MCL35M', 'Mercedes', 4);
INSERT INTO Carro (idCarro, nome_modelo, marca_motor, idEquipe) 
VALUES (5, 'Alpine A521', 'Renault', 5);

-- Inserção de dados na tabela Endereco
INSERT INTO Endereco (cidade, pais, estado, bairro, numero, logradouro, IdEquipe)
VALUES ('Brackley', 'Reino Unido', 'Inglaterra', 'Industrial Park', 123, 'Factory Road', 1);
INSERT INTO Endereco (cidade, pais, estado, bairro, numero, logradouro, IdEquipe)
VALUES ('Milton Keynes', 'Reino Unido', 'Inglaterra', 'Technology Park', 456, 'Raceway Street', 2);
INSERT INTO Endereco (cidade, pais, estado, bairro, numero, logradouro, IdEquipe) 
VALUES ('Maranello', 'Itália', 'Emilia-Romagna', 'Via Abetone Inferiore', 789, 'Ferrari S.p.A.', 3);
INSERT INTO Endereco (cidade, pais, estado, bairro, numero, logradouro, IdEquipe) 
VALUES ('Woking', 'Reino Unido', 'Surrey', 'Chertsey Road', 1011, 'McLaren Technology Centre', 4);
INSERT INTO Endereco (cidade, pais, estado, bairro, numero, logradouro, IdEquipe) 
VALUES ('Enstone', 'Reino Unido', 'Oxfordshire', 'Hinckley Road', 1213, 'Enstone Airfield', 5);

-- Inserção de dados na tabela Engenheiro
INSERT INTO Engenheiro (area_trab, idEngenheiro)
VALUES ('Aerodinâmica', 1);
INSERT INTO Engenheiro (area_trab, idEngenheiro)
VALUES ('Motor', 2);
INSERT INTO Engenheiro (area_trab, idEngenheiro) 
VALUES ('Eletrônica', 3);
INSERT INTO Engenheiro (area_trab, idEngenheiro)
 VALUES ('Suspensão', 4);
INSERT INTO Engenheiro (area_trab, idEngenheiro) 
VALUES ('Chassi', 5);

-- Inserção de dados na tabela Funcionario
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (1, 'John Smith', 'Reino Unido', 'M', 'E', 2010, 1);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (2, 'Maria Garcia', 'Brasil', 'F', 'E', 2015, 2);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (3, 'Lucas de Castro', 'Canadá', 'M', 'E', 2023, 3);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (4, 'Luiz Victor', 'EUA', 'M', 'E', 2022, 4);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe)
VALUES (5, 'Cauã Marcos', 'Alemanhã', 'M', 'E', 2020, 5);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe) 
VALUES (6, 'Lewis Hamilton', 'Reino Unido', 'M', 'P', 2007, 1);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe) 
VALUES (7, 'Max Verstappen', 'Países Baixos', 'M', 'P', 2015, 2);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe) 
VALUES (8, 'Charles Leclerc', 'Mônaco', 'M', 'P', 2018, 3);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe) 
VALUES (9, 'Lando Norris', 'Reino Unido', 'M', 'P', 2019, 4);
INSERT INTO Funcionario (idFuncionario, nome, nacionalidade, sexo, tipo_func, ano_contratacao, idEquipe) 
VALUES (10, 'Esteban Ocon', 'França', 'M', 'P', 2019, 5);

-- Inserção de dados na tabela Fã
INSERT INTO Fa (email, nome, num, bairro, cidade, estado, pais, logradouro)
VALUES ('lucas@exemplo.com', 'Lucas', 123, 'Centro', 'São Paulo', 'SP', 'Brasil', 'Avenida Paulista');
INSERT INTO Fa (email, nome, num, bairro, cidade, estado, pais, logradouro)
VALUES ('luiz@exemplo.com', 'Luiz', 456, 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil', 'Avenida Atlântica');
INSERT INTO Fa (email, nome, num, bairro, cidade, estado, pais, logradouro) 
VALUES ('caua@exemplo.com', 'Caua', 5432, 'Botafogo', 'Rio de Janeiro', 'RJ', 'Brasil', 'Rua das Flores');
INSERT INTO Fa (email, nome, num, bairro, cidade, estado, pais, logradouro) 
VALUES ('gabriel@exemplo.com', 'Gabriel', 985, 'Centro', 'São Paulo', 'SP', 'Brasil', 'Avenida Principal');
INSERT INTO Fa (email, nome, num, bairro, cidade, estado, pais, logradouro) 
VALUES ('wildes@exemplo.com', 'Wildes', 135, 'Ipanema', 'Rio de Janeiro', 'RJ', 'Brasil', 'Rua dos Coqueiros');

-- Inserção de dados na tabela Inovacao
INSERT INTO Inovacao (nome_inovacao, idEngenheiro)
VALUES ('Sistema de Direção Assistida', 1);
INSERT INTO Inovacao (nome_inovacao, idEngenheiro)
VALUES ('Sistema de Recuperação de Energia', 2);
INSERT INTO Inovacao (nome_inovacao, idEngenheiro) 
VALUES ('Novo conceito de aerofólio traseiro', 3);
INSERT INTO Inovacao (nome_inovacao, idEngenheiro) 
VALUES ('Melhorias no motor de combustão interna', 4);
INSERT INTO Inovacao (nome_inovacao, idEngenheiro) 
VALUES ('Sistema de refrigeração otimizado', 5);

-- Inserção de dados na tabela Patrocinador
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial) 
VALUES ('Red Bull', 'Áustria', 'Bebidas energéticas');
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial) 
VALUES ('Oracle', 'Estados Unidos da América', 'Servidores');
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial) 
VALUES ('Mercedes-AMG Petronas F1 Team', 'Alemanha', 'Automobilismo');
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial)
VALUES ('Scuderia Ferrari', 'Itália', 'Automobilismo');
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial) 
VALUES ('McLaren Racing', 'Reino Unido', 'Automobilismo');
INSERT INTO Patrocinador (nome_patro, pais_origem, setor_comercial) 
VALUES ('Aston Martin Cognizant Formula One Team', 'Reino Unido', 'Automobilismo');


-- Inserção de dados na tabela Patrocinador
INSERT INTO Patrocinador_Equipe (idPatrocinador, idEquipe) 
VALUES (1, 1);
INSERT INTO Patrocinador_Equipe (idPatrocinador, idEquipe) 
VALUES (2, 2);
INSERT INTO Patrocinador_Equipe (idPatrocinador, idEquipe) 
VALUES (3, 3);
INSERT INTO Patrocinador_Equipe (idPatrocinador, idEquipe) 
VALUES (4, 4);
INSERT INTO Patrocinador_Equipe (idPatrocinador, idEquipe) 
VALUES (5, 5);

-- Inserção de dados na tabela Piloto
INSERT INTO Piloto (titulos, pole_position, vitorias, pontos, n_corridas, idPiloto, numero)
VALUES (7, 59, 100, 250, 200, 6, 44);
INSERT INTO Piloto (titulos, pole_position, vitorias, pontos, n_corridas, idPiloto, numero)
VALUES (4, 22, 80, 262, 180, 7, 33);
INSERT INTO Piloto (titulos, pole_position, vitorias, pontos, n_corridas, idPiloto, numero)
VALUES (0, 5, 5, 90, 30, 8, 16);
INSERT INTO Piloto (titulos, pole_position, vitorias, pontos, n_corridas, idPiloto, numero)
VALUES (0, 3, 3, 50, 20, 9, 4);
INSERT INTO Piloto (titulos, pole_position, vitorias, pontos, n_corridas, idPiloto, numero)
VALUES (0, 2, 2, 150, 15, 10, 31);

-- Inserção de dados na tabela Piloto_Fa
INSERT INTO Piloto_Fa (idPiloto, idFa) 
VALUES (1, 1);
INSERT INTO Piloto_Fa (idPiloto, idFa) 
VALUES (2, 2);
INSERT INTO Piloto_Fa (idPiloto, idFa) 
VALUES (3, 3);
INSERT INTO Piloto_Fa (idPiloto, idFa) 
VALUES (4, 4);
INSERT INTO Piloto_Fa (idPiloto, idFa) 
VALUES (5, 5);

