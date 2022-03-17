CREATE DATABASE IF NOT EXISTS SAUDEDH;		
USE SAUDEDH;

CREATE TABLE `pacientes` (
    `idPacientes` INT NOT NULL AUTO_INCREMENT,
    `idPacienteSaude` INT NOT NULL,
    `pacienteNome` VARCHAR(50),
    `pacienteSobreNome` VARCHAR(100),
    PRIMARY KEY (`idPacientes`)
);

CREATE TABLE `especialidades` (
	`idEspecialidade` INT AUTO_INCREMENT,
    `especialidade_nome` VARCHAR(100),
    PRIMARY KEY (`idEspecialidade`)
);

CREATE TABLE `medicos` (
    `idMedicos` INT AUTO_INCREMENT,
    `medico_nome` VARCHAR(50),
    `medico_sobrenome` VARCHAR(100),
    PRIMARY KEY (`idMedicos`),
    `medicoEspecialiade` INT NOT NULL,
     CONSTRAINT `fk_medicoEspecialidade` FOREIGN KEY (`medicoEspecialiade`) REFERENCES `especialidades`(`idEspecialidade`)
    );
    
CREATE TABLE `consultas` (
    `idconsulta` INT AUTO_INCREMENT,
    `data_consulta` DATE,
    `hora_consulta` TIME,
    PRIMARY KEY (`idconsulta`),
    `paciente` INT NOT NULL,
	`medico` INT NOT NULL,
     CONSTRAINT `fk_pacientes_idPacientes` FOREIGN KEY (`paciente`) REFERENCES `pacientes`(`idPacientes`),
     CONSTRAINT `fk_medicos_idMedicos` FOREIGN KEY (`medico`) REFERENCES `medicos`(`idMedicos`)
    );