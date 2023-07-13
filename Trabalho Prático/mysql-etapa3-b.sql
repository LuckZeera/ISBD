USE F1;

-- Criar tabela adicional
CREATE TABLE TabelaExemplo (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
-- Adicionar nova coluna 
ALTER TABLE TabelaExemplo
ADD COLUMN sobrenome VARCHAR(40) NOT NULL; 

-- Alterar uma coluna
ALTER TABLE TabelaExemplo
MODIFY COLUMN nome VARCHAR(100) NOT NULL;

-- Renomear uma coluna
ALTER TABLE TabelaExemplo
RENAME COLUMN sobrenome TO novo_sobrenome;	

-- Remover tabela
DROP TABLE TabelaExemplo;
