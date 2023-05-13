CREATE TABLE `medicos` (
  `id_medico` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `cp` varchar(255),
  `rg` varchar(255),
  `telefone` varchar(255),
  `email` varchar(255),
  `tipo` varchar(255)
);

CREATE TABLE `especialidades` (
  `id_especialidade` int(11) PRIMARY KEY AUTO_INCREMENT,
  `especialidade` varchar(255)
);

CREATE TABLE `medico_especialidades` (
  `id_medico_especialidades` int(11) PRIMARY KEY AUTO_INCREMENT,
  `id_medico` int(11),
  `id_especialidade` int(11)
);

CREATE TABLE `pacientes` (
  `id_paciente` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `dt_nascimento` date,
  `endereco` varchar(255),
  `cpf` varchar(255),
  `rg` varchar(255),
  `telefone` varchar(255),
  `email` varchar(255)
);

CREATE TABLE `convenios` (
  `id_convenio` int(11) PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int(11),
  `nome_convenio` varchar(255),
  `cnpj` varchar(255),
  `tempo_carencia` varchar(255)
);

CREATE TABLE `paciente_convenios` (
  `id_paciente_convenio` int PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int(11),
  `id_convenio` int(11)
);

CREATE TABLE `consultas` (
  `id_consulta` int(11) PRIMARY KEY AUTO_INCREMENT,
  `id_medico` int(11),
  `id_paciente` int(11),
  `id_convenio` int(11),
  `data` date,
  `hora` time,
  `n_carteira` int(11),
  `especialidade` varchar(255),
  `valor` float
);

CREATE TABLE `receitas` (
  `id_receita` int(11) PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int(11),
  `id_medico` int(11),
  `id_consulta` int(11),
  `data_emissao` date,
  `medicamento` varchar(255)
);

CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) PRIMARY KEY AUTO_INCREMENT,
  `medicamento` varchar(255),
  `quantidade` int(11),
  `instrucao` varchar(255)
);

CREATE TABLE `receita_medicamento` (
  `id_receita_medicamento` int PRIMARY KEY AUTO_INCREMENT,
  `id_receita` int(11),
  `id_medicamento` int(11)
);

ALTER TABLE `medico_especialidades` ADD FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

ALTER TABLE `medico_especialidades` ADD FOREIGN KEY (`id_especialidade`) REFERENCES `especialidades` (`id_especialidade`);

ALTER TABLE `paciente_convenios` ADD FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

ALTER TABLE `paciente_convenios` ADD FOREIGN KEY (`id_convenio`) REFERENCES `convenios` (`id_convenio`);

ALTER TABLE `consultas` ADD FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

ALTER TABLE `receitas` ADD FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consulta`);

ALTER TABLE `receita_medicamento` ADD FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`);

ALTER TABLE `receita_medicamento` ADD FOREIGN KEY (`id_receita`) REFERENCES `receitas` (`id_receita`);

ALTER TABLE `receitas` ADD FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

ALTER TABLE `consultas` ADD FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);
