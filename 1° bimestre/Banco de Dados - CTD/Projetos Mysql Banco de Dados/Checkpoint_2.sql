DROP DATABASE IF EXISTS `Checkpoint_2`;
CREATE DATABASE IF NOT EXISTS `Checkpoint_2`
DEFAULT CHARSET = 'utf8mb4'
DEFAULT COLLATE = 'utf8mb4_general_ci';

USE `Checkpoint_2`;

CREATE TABLE IF NOT EXISTS `Endereco`
(
`nEnderecoID` INT NOT NULL AUTO_INCREMENT,
`strLogradouro` VARCHAR (100) NOT NULL,
`nNumero` MEDIUMINT UNSIGNED,
`strBairro` VARCHAR(100),
`strCidade` VARCHAR(100) NOT NULL,
`strCep` CHAR(9) NOT NULL,
`strEstado` CHAR(2) NOT NULL,

CONSTRAINT `FK_nEnderecoID` PRIMARY KEY (`nEnderecoID`)
);

CREATE TABLE IF NOT EXISTS `Empresa`
(
`nEmpresaID` INT NOT NULL AUTO_INCREMENT,
`nEnderecoID` INT NOT NULL,
`strNome` VARCHAR(100) NOT NULL,
`strCnpj` CHAR(18) NOT NULL,
`strInscricao_estadual` CHAR(15) NOT NULL,
`dtData_abertura` DATE,
`strSac` CHAR(12),

CONSTRAINT `FK_nEmpresaID` PRIMARY KEY (`nEmpresaID`),
CONSTRAINT `FK_nEnderecoID` FOREIGN KEY (`nEnderecoID`) REFERENCES `Endereco` (`nEnderecoID`)
);

CREATE TABLE IF NOT EXISTS `Funcionario`
(
`nFuncionarioID` INT NOT NULL AUTO_INCREMENT,
`nEmpresaID`INT NOT NULL,
`strNome` VARCHAR(50) NOT NULL,
`strSobrenome` VARCHAR(100) NOT NULL,
`strCPF` CHAR(11) NOT NULL,
`dtData_nascimento` DATE,
`dtData_admissao` DATE,
`dtData_demissao` DATE,
`strTelefone` CHAR(11),

CONSTRAINT `FK_nFuncionarioID` PRIMARY KEY (`nFuncionarioID`),
CONSTRAINT `FK_nEmpresaID` FOREIGN KEY (`nEmpresaID`) REFERENCES `Empresa` (`nEmpresaID`)
);

CREATE TABLE IF NOT EXISTS `Usuario`
(
`nUsuarioID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`strNome` VARCHAR(50) NOT NULL,
`strSobrenome` VARCHAR(100) NOT NULL,
`strCPF` CHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS `Tipo_servico`
(
`nTipo_servicoID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`strTipo_servico_solicitado` VARCHAR(100) NOT NULL,
`strDescricao` VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS `Servico_prestado`
(
`nServico_prestadoID` INT NOT NULL AUTO_INCREMENT,
`nUsuarioID` INT NOT NULL,
`nTipo_servicoID` INT NOT NULL,
`nFuncionarioID` INT NOT NULL,
`strRegistro_inicial` VARCHAR(250) NOT NULL,
`strLocalizacao` VARCHAR(200) NOT NULL,
`dtDeslocamento` DATETIME NOT NULL,
`strPrestacao_servico` VARCHAR(250) NOT NULL,
`strRegistro_final` VARCHAR(250) NOT NULL,

CONSTRAINT `FK_nServico_prestadoID` PRIMARY KEY (`nServico_prestadoID`),
CONSTRAINT `2FK_nUsuarioID` FOREIGN KEY (`nUsuarioID`) REFERENCES `Usuario` (`nUsuarioID`),
CONSTRAINT `FK_nTipo_servicoID` FOREIGN KEY (`nTipo_servicoID`) REFERENCES `Tipo_servico` (`nTipo_servicoID`),
CONSTRAINT `2FK_nFuncionarioID` FOREIGN KEY (`nFuncionarioID`) REFERENCES `Funcionario` (`nFuncionarioID`)
);

-- INSERT / UPDATE / DELETE / SELECT -------------------------------------------------------------------------------------------------------------
# ENDERECO
# INSERINDO OS ENDEREÇOS DAS EMPRESAS
INSERT INTO `Endereco` (`strLogradouro`, `nNumero`, `strBairro`, `strCidade`, `strCep`, `strEstado`)
VALUES ('Rodovia 310KM','1000','Afastado','Cedral','15895-123','SP');
INSERT INTO `Endereco` (`strLogradouro`, `nNumero`, `strBairro`, `strCidade`, `strCep`, `strEstado`)
VALUES ('Av Coronel Potato Fries','10','Distrito Industrial','São José das Batatas','15025-123','MG');
INSERT INTO `Endereco` (`strLogradouro`, `nNumero`, `strBairro`, `strCidade`, `strCep`, `strEstado`)
VALUES ('C','5','L','O','000000000','AO');

# ATUALIZANDO OS ENDEREÇOS DAS EMPRESAS
UPDATE `Endereco` SET `strLogradouro` = 'Rodovia 333KM+600'
WHERE `nEnderecoID` = '1';
UPDATE `Endereco` SET `strBairro` = 'Distrito Potato'
WHERE `nEnderecoID` = '2';

# DELETANDO OS ENDEREÇOS DAS EMPRESAS
DELETE FROM `Endereco` WHERE `nEnderecoID` = 3;

-- -----------------------------------------------------------------------------------------------------------------------------------------------
# EMPRESA
# INSERINDO AS EMPRESAS
INSERT INTO `Empresa` (`nEnderecoID`, `strNome`, `strCnpj`, `strInscricao_estadual`, `dtData_abertura`, `strSac`)
VALUES ('1','M&A Resgates Ltda','23.132.595/0001-34','438.889.764.528','1996-03-04','0800-111-222');
INSERT INTO `Empresa` (`nEnderecoID`, `strNome`, `strCnpj`, `strInscricao_estadual`, `dtData_abertura`, `strSac`)
VALUES ('2','D&S Resgates Ltda','26.176.408/0001-22','240.912.364.472','1991-09-01','0800-999-888');

# ATUALIZANDO DADOS DAS EMPRESAS
UPDATE `Empresa` SET `strSac` = '0800-157-359'
WHERE `nEnderecoID` = '1';
UPDATE `Empresa` SET `strNome` = 'Daniel & Sangelo Resgates Ltda S.A', `strSac` = '0800-347-201'
WHERE `nEnderecoID` = '2';

-- -----------------------------------------------------------------------------------------------------------------------------------------------
# FUNCIONARIO
# INSERINDO CADASTRO DOS FUNCIONARIOS
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Carlos', 'de Andrade', '12145478700', '1990-03-02', '2021-01-01', DEFAULT, '17991526493');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Roberto', 'da Silva', '23256589801', '1985-07-09', '2021-01-01', '2021-09-15', '18991787565');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Matheus', 'de Almeida', '45456578790', '1996-03-04', '2021-06-01', DEFAULT, '19991030494');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Jonata', 'dos Santos', '78789856531', '1999-11-14', '2020-06-01', DEFAULT, '34996753951');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Daniel', 'Fries', '56589823200', '1991-09-01', '2020-06-01', DEFAULT, '35996852456');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('2', 'Tatiane', 'Gardin', '15189684640', '2000-01-01', '2020-06-01', '2021-09-15', '34996121751');
INSERT INTO `Funcionario` (`nEmpresaID`, `strNome`, `strSobrenome`, `strCPF`, `dtData_nascimento`, `dtData_admissao`, `dtData_demissao`, `strTelefone`)
VALUES ('1', 'Aline', 'Zanini', '73729248405', '2001-12-12', '2021-06-01', DEFAULT, '35996741963');

-- -----------------------------------------------------------------------------------------------------------------------------------------------
#USUARIO
# INSERINDO CADASTRO DOS USUARIOS
INSERT INTO `Usuario` (`nUsuarioID`, `strNome`, `strSobrenome`, `strCPF`)
VALUES ('1', 'Alberto', 'Andrade', '12175486933');
INSERT INTO `Usuario` (`nUsuarioID`, `strNome`, `strSobrenome`, `strCPF`)
VALUES ('2', 'Beto', 'Buozzi', '25468526597');
INSERT INTO `Usuario` (`nUsuarioID`, `strNome`, `strSobrenome`, `strCPF`)
VALUES ('3', 'Mathew', 'Doideira Bixo', '43416952500');
INSERT INTO `Usuario` (`nUsuarioID`, `strNome`, `strSobrenome`, `strCPF`)
VALUES ('4', 'Arthur', 'Pendragon', '03012615487');
INSERT INTO `Usuario` (`nUsuarioID`, `strNome`, `strSobrenome`, `strCPF`)
VALUES ('5', 'Batatinha', 'Quando nasce', '00000000001');

# ATUALIZANDO DADOS DO USUARIO
UPDATE `Usuario` SET `strSobrenome` = 'Pendragon'
WHERE `nUsuarioID` = '3';

# DELETANDO USUARIOS
DELETE FROM `Usuario` WHERE `nUsuarioID` = 5;

-- -----------------------------------------------------------------------------------------------------------------------------------------------
# TIPO_SERVICO
# INSERINDO OS TIPOS DE SERVIÇOS SOLICITADOS
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('1', 'Atendimento', 'Usuario A solicitou atendimento X pois aconteceu Y');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('2', 'Resgate', 'Usuario B solicitou resgate X pois aconteceu Y');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('3', 'Informação', 'BATATA');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('4', 'Atendimento com Resgate', 'Usuario D solicitou atendimento X com resgate Y');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('5', 'Atendimento com Informação', 'Usuario E solicitou atendimento X e informação Y');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('6', 'Resgate com Informação', 'Usuario F solicitou resgate X e informação Y');
INSERT INTO `Tipo_servico` (`nTipo_servicoID`, `strTipo_servico_solicitado`, `strDescricao`)
VALUES ('7', 'Serviço Extra', 'Pedidos diversos dos usuarios');


# ATUALIZANDO OS CAMPOS DOS TIPOS DE SERVIÇOS
UPDATE `Tipo_servico` SET `strDescricao` = 'Usuario C ligou e pediu informações X pois aconteceu Y'
WHERE `nTipo_servicoID` = '3';

# DELETANDO TIPOS DE SERVIÇOS DESCONTINUADOS
DELETE FROM `Tipo_servico` WHERE `nTipo_servicoID` = 7;

-- -----------------------------------------------------------------------------------------------------------------------------------------------
# SERVICO_PRESTADO
# INSERINDO SERVIÇOS PRESTADOS AOS USUARIOS
INSERT INTO `Servico_prestado` 
(
`strRegistro_inicial`,
`strLocalizacao`, 
`dtDeslocamento`, 
`strPrestacao_servico`, 
`strRegistro_final`, 
`nUsuarioID`, 
`nTipo_servicoID`, 
`nFuncionarioID`
)
VALUES 
(
'Usuario solicitou atendimento prioritario pois aconteceu uma colisão traseira e etc etc',
'usuario esta na rodovia X KM 400+800',
'2021-09-12 09:30:45', 
'Serviços 1 e 2 (4) Prestados com sucesso', 
'Finalizado as 12-09-2021 usuario foi socorrido e levado ao HB e os destroços foram removidos da rodovia',
'1',
'4',
'3'
);

INSERT INTO `Servico_prestado` 
(
`strRegistro_inicial`,
`strLocalizacao`, 
`dtDeslocamento`, 
`strPrestacao_servico`, 
`strRegistro_final`, 
`nUsuarioID`, 
`nTipo_servicoID`, 
`nFuncionarioID`
)
VALUES
(
'Usuario ligou e pediu as informaçoes sobre etc etc',
'usuario esta na rodovia Z KM 200+500',
'2021-09-12 15:50:45', 
'Serviço 3 Prestado com sucesso', 
'Finalizado as 12-09-2021 usuario esta satisfeito com o atendimento',
'4',
'3',
'1'
);

INSERT INTO `Servico_prestado` 
(
`strRegistro_inicial`,
`strLocalizacao`, 
`dtDeslocamento`, 
`strPrestacao_servico`, 
`strRegistro_final`, 
`nUsuarioID`, 
`nTipo_servicoID`, 
`nFuncionarioID`
)
VALUES
(
'Usuario pediu atendimento pois perdeu sua espada escalibur na rodovia',
'usuario esta na rodovia AC KM 001+001',
'2021-09-17 22:10:45', 
'Serviço 1 prestado com sucesso', 
'Finalizado as 17-09-2021 usuario encontrou sua espada e agora pode governar a inglaterra',
'3',
'1',
'5'
);
-- -----------------------------------------------------------------------------------------------------------------------------------------------
# SELECT'S 
# Primeiro SELECT
SELECT 
	usuario.strNome AS Nome,
    usuario.strSobrenome AS Sobrenome,
    tipo_servico.strTipo_servico_solicitado AS 'Serviço Solicitado',
    servico_prestado.strRegistro_inicial AS Solicitação,
    servico_prestado.dtDeslocamento AS Horario,
    servico_prestado.strRegistro_final AS Nota
    FROM usuario
    INNER JOIN tipo_servico
    ON usuario.nUsuarioID = tipo_servico.nTipo_servicoID
    INNER JOIN servico_prestado
    ON tipo_servico.nTipo_servicoID = servico_prestado.nServico_prestadoID;
    
# Segundo SELECT 
SELECT	
    funcionario.strNome AS 'Nome Funcionario',
    tipo_servico.strTipo_servico_solicitado AS 'Descrição Servico',
    CONCAT(usuario.strNome, ' ',usuario.strSobrenome) AS 'Nome Usuario',
    servico_prestado.strRegistro_inicial AS 'Inicio Servico',
    servico_prestado.strRegistro_final AS 'Resolução Servico'
FROM funcionario
LEFT JOIN tipo_servico
ON funcionario.nFuncionarioID = tipo_servico.nTipo_servicoID
INNER JOIN usuario
ON tipo_servico.nTipo_servicoID = usuario.nUsuarioID
INNER JOIN servico_prestado
ON tipo_servico.nTipo_servicoID = servico_prestado.nServico_prestadoID
WHERE servico_prestado.nServico_prestadoID = 1;

# Segunda opção do segundo SELECT 
SELECT	
	funcionario.nFuncionarioID AS 'Cod Funcionario',
    funcionario.strNome AS 'Nome Funcionario',
    tipo_servico.nTipo_servicoID AS 'Cod Servico Solicitado',
	servico_prestado.strPrestacao_servico AS 'Cod Servico Realizado',
    tipo_servico.strTipo_servico_solicitado AS 'Descrição Servico',
	usuario.nUsuarioID AS 'Cod Usuario',
    CONCAT(usuario.strNome, ' ',usuario.strSobrenome) AS 'Nome Usuario',
    servico_prestado.strRegistro_inicial AS 'Inicio Servico',
    servico_prestado.strRegistro_final AS 'Resolução Servico'
FROM funcionario
inner JOIN servico_prestado
ON funcionario.nFuncionarioID = servico_prestado.nFuncionarioID
left JOIN usuario
ON usuario.nUsuarioID = servico_prestado.nUsuarioID
left JOIN tipo_servico
ON tipo_servico.nTipo_servicoID = servico_prestado.nTipo_servicoID
ORDER BY funcionario.nFuncionarioID DESC;

# Terceiro SELECT 
SELECT 
	empresa.nEmpresaID AS 'ID Empresa',
	empresa.strNome AS 'Nome Empresa',
    endereco.strLogradouro AS 'Rua',
    endereco.nNumero AS 'Nº',
    endereco.strBairro AS 'Bairro',
    endereco.strCidade AS 'Cidade'
FROM empresa
RIGHT JOIN endereco
ON empresa.nEmpresaID = endereco.nEnderecoID
WHERE empresa.nEmpresaID = 2;
    
# CONSIDERAÇÕES FINAIS
# Entidades foram alteradas para que o modelo de negocio REALMENTE funciona-se mudandos alguns atributos e/ou gerando novos.

# A ideia desse DER é uma empresa que realiza atendimentos/resgate/informações para usuarios que estão na rodovia e teve algum problema, 
# acidente ou simplismente precisa de uma informação e para isso ele conta com funcionario(s) de uma das empresas desse ramo que realizar essas solicitações.
# Antes do funcionario ir até o local para atendimento ele tem informações reduzidas e após o atendimento ele completa o relatorio com os dados restantes
# deixando assim um relatorio completo do atendimento.
# Na parte das tabelas, nem todos os campos foram colocados como NOT NULL por dois fatores (nem todos sao prioridades / para criar uma diferença) em um
# modelo de negocios real, seria pensado com cautela oque teria ou nao valor nulo.

# Esse modelo de negocio está numa forma SIMPLIFICADISSIMA sendo possivel abranjer muitos outros detalhes/entidades/etc.
# Teria como fazer mais SELECTS/INSERTS/DELETES/UPDATES, porem possui poucas entidades/atributos/registros nesse modelo de negocio nao abrangendo pesquisas interessantes.