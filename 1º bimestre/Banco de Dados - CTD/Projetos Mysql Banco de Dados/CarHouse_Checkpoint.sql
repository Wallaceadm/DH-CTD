CREATE DATABASE IF NOT EXISTS carhouse
DEFAULT CHARSET = 'utf8mb4'
DEFAULT COLLATE = 'utf8mb4_general_ci';

-- Empresa CAR HOUSE tem o intuito de ofertar a venda e aluguel de carros para os potenciais clientes.
-- O processo de aluguel envolve a aquisição de veículos que são de posse das Empresa_Parceira, responsável pelo e venda desses veículos.
-- Os veículos possuem diversas marcas que são produzidos pelos fabricantes espalhadas por varias Cidades do País.
-- Os clientes através de um contato contrato ou adquirir os veículos disponíveis na Empresa.
-- As correções foram efetivadas de acordo com as orientações do primeiro Checkpoint.
-- Uma estrutura simples para sintetizar os primeiros a aprendizado em Banco de dados.
-- Alguns comentários estão inclusos no script para identificar os processos realizados.

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura 

USE carhouse;

CREATE TABLE IF NOT EXISTS fabricante_veiculos
(
idFabricante_Veiculos INT UNSIGNED AUTO_INCREMENT,
sNome_fabricante_veiculos VARCHAR(100),
sCidade_fabricacao VARCHAR(100),
sEstado_Fabricacao VARCHAR(50),
CONSTRAINT PK_idFabricante_Veiculos PRIMARY KEY(idFabricante_Veiculos)
);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE marca_veiculo, CRUD: INSERT TO, UPDATE.

CREATE TABLE IF NOT EXISTS marca_veiculo
(
idMarcaVeiculo INT UNSIGNED AUTO_INCREMENT,
sNome_Marca_Veiculo VARCHAR(50),
idFabricante_Veiculos INT UNSIGNED,
CONSTRAINT PK_idMarcaVeiculo PRIMARY KEY(idMarcaVeiculo),
CONSTRAINT FK_idFabricante_Veiculos_fabricante_veiculos FOREIGN KEY(idFabricante_Veiculos) REFERENCES fabricante_veiculos(idFabricante_Veiculos)

);
INSERT INTO marca_veiculo(sNome_Marca_Veiculo)
VALUES ('CHEVROLET'),
	   ('TESLA'),
	   ('AUDI'),
       ('CHERRY'),
       ('TOYOTA'),
       ('HYUNDAI');

UPDATE marca_veiculo 
SET sNome_Marca_Veiculo = 'FORD'
WHERE idMarcaVeiculo = 6;

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE modelo_veiculo.
-- FK: idMarcaVeiculo.
CREATE TABLE IF NOT EXISTS modelo_veiculo
(
idModeloVeiculo INT UNSIGNED AUTO_INCREMENT,
sNome_ModeloVeiculo VARCHAR(50),
idMarcaVeiculo  INT UNSIGNED,
CONSTRAINT PK_idModeloVeiculo PRIMARY KEY(idModeloVeiculo),
CONSTRAINT FK_idMarcaVeiculo_marca_veiculo FOREIGN KEY(idMarcaVeiculo) REFERENCES marca_veiculo(idMarcaVeiculo)
);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE veiculos.
-- FK: idModeloVeiculo.

CREATE TABLE IF NOT EXISTS veiculos
(
idveiculos INT UNSIGNED AUTO_INCREMENT ,
sNome_Veiculo VARCHAR(50),
nPlaca_Veiculo INT UNSIGNED,
idModeloVeiculo INT UNSIGNED,
CONSTRAINT PK_idveiculos PRIMARY KEY(idveiculos),
CONSTRAINT FK_idModeloVeiculo_modelo_veiculo FOREIGN KEY(idModeloVeiculo) REFERENCES modelo_veiculo(idModeloVeiculo)
);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE empresa_parceira, CRUD: INSERT TO.
-- FKs: idveiculos.

CREATE TABLE IF NOT EXISTS empresa_parceira
(
idEmpresa_Parceira INT UNSIGNED AUTO_INCREMENT ,
sRazao_Social VARCHAR(50),
nCNPJ INT UNSIGNED,
sNome_Proprietario VARCHAR(100), 
sEndereco VARCHAR(100),
sTelefone INT UNSIGNED,
idveiculos INT UNSIGNED,
CONSTRAINT PK_idEmpresa_Parceira PRIMARY KEY(idEmpresa_Parceira),
CONSTRAINT FK_idveiculos_veiculos FOREIGN KEY(idveiculos) REFERENCES veiculos(idveiculos)
);
 
INSERT INTO empresa_parceira (sNome_Proprietario)
VALUES ('Horizen');

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE cliente, CRUD: ALTER TABLE, INSERTO TO, UPDATE.

CREATE TABLE IF NOT EXISTS cliente
(
idcliente INT UNSIGNED AUTO_INCREMENT,
sNome VARCHAR(50),
sSobreNome VARCHAR(100),
nCNH INT UNSIGNED,
sEndereco VARCHAR(100),
CONSTRAINT PK_cliente PRIMARY KEY(idcliente)

);
ALTER TABLE cliente ADD dtNascimento DATE;
ALTER TABLE cliente ADD sCPF VARCHAR(11);
ALTER TABLE cliente ADD sRG VARCHAR(11);
ALTER TABLE cliente ADD sEmail VARCHAR(100);
INSERT INTO cliente (sNome, sSobreNome)
VALUES ('Sarah','Rocha'),
	   ('Pietra',' Laís Rafaela'),
	   ('Vicente','Rocha'),
        ('Sebastião','Ribeiro'),
       ('Cláudio','Ribeiro'),
      ('Caroline','Natália');
      
      UPDATE cliente
      SET sNome = 'Jorge Enzo'
      WHERE idcliente = 2;
     UPDATE cliente
      SET sSobreNome = 'Peixoto'
      WHERE idcliente = 2;
      
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- Estrutura: TABLE contrato
-- FKs: idEmpresa_Parceira,idcliente.


CREATE TABLE IF NOT EXISTS contrato
(
idcontrato INT UNSIGNED AUTO_INCREMENT,
dtInicio DATE,
dtFim DATE,
idEmpresa_Parceira INT UNSIGNED,
idcliente INT UNSIGNED,
CONSTRAINT PK_idcontrato PRIMARY KEY(idcontrato),
CONSTRAINT FK_idEmpresa_Parceira_empresa_parceira FOREIGN KEY(idEmpresa_Parceira) REFERENCES empresa_parceira(idEmpresa_Parceira),
CONSTRAINT FK_idcliente_cliente FOREIGN KEY(idcliente) REFERENCES cliente(idcliente)
);

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------#
-- CRUD: SELECT, DELETE

SELECT sNome, sSobreNome
FROM cliente;

DELETE FROM marca_veiculo
WHERE idMarcaVeiculo =4 ;

SELECT idMarcaVeiculo AS id ,sNome_Marca_Veiculo AS marca
FROM marca_veiculo;

SELECT sNome AS nome, sSobreNome AS sobrenome
FROM cliente;