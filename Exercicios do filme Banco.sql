DROP DATABASE IF EXISTS `SQL_Viagem`;
CREATE DATABASE SQL_Viagem;

USE SQL_Viagem;

CREATE TABLE `usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
  `email` VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
  `data_nascimento` DATE NOT NULL COMMENT 'Data de nascimento do usuário',
  `endereco` VARCHAR(160) NOT NULL COMMENT 'Endereço do Cliente',
  PRIMARY KEY (`idusuarios`)
);

-- Inserts --
INSERT INTO `usuarios` VALUES 
(1, 'João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
(2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
(3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

CREATE TABLE `destinos` (
  `iddestinos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`iddestinos`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE
);

-- Inserts --
INSERT INTO `destinos` VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

CREATE TABLE `reservas` (
  `idreservas` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `id_destino` INT NOT NULL,
  `data` DATE NOT NULL,
  `stats` VARCHAR(255) NOT NULL DEFAULT 'pendente',
  FOREIGN KEY (id_usuario) REFERENCES `usuarios`(idusuarios),
  FOREIGN KEY (id_destino) REFERENCES `destinos`(iddestinos),
  PRIMARY KEY (`idreservas`)
);

-- Inserts --
INSERT INTO `reservas` VALUES 
( 1, 1, 2, '2023-07-10', 'confirmada'),
( 2, 2, 1, '2023-08-05', 'pendente'),
( 3, 3, 3, '2023-09-20', 'cancelada');

-- Tabela "reservas"
ALTER TABLE `reservas`
MODIFY COLUMN `idreservas` INT AUTO_INCREMENT,
ADD PRIMARY KEY (`idreservas`);
