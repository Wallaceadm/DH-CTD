CREATE TABLE `usuraio` (
`id` INT AUTO_INCREMENT,
`nome` VARCHAR(50) NOT NULL,
`sobrenome` VARCHAR(50),
`email` VARCHAR(100) NOT NULL UNIQUE,
`data_nascimento` DATE
);