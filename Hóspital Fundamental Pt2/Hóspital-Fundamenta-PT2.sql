CREATE TABLE `Consulta` (
  `id_consulta` int PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int,
  `id_medico` int,
  `id_convenio` int,
  `id_internacao` int,
  `data_consulta` date,
  `hora_consulta` time,
  `valor_consulta` float
);

CREATE TABLE `Medico` (
  `id_medicos` int PRIMARY KEY AUTO_INCREMENT,
  `nome_medico` varchar(255),
  `especialidade` varchar(255)
);

CREATE TABLE `Convenio` (
  `id_convenio` int PRIMARY KEY AUTO_INCREMENT,
  `numero_carteira` int
);

CREATE TABLE `Paciente` (
  `id_paciente` int PRIMARY KEY AUTO_INCREMENT,
  `id_convenio` int,
  `cpf` varchar(255),
  `rg` varchar(255),
  `nome` varchar(255),
  `data_nascimento` date,
  `endereco` varchar(255),
  `email` varchar(255)
);

CREATE TABLE `Internação` (
  `id_internação` int PRIMARY KEY AUTO_INCREMENT,
  `id_enfermeiro` int,
  `id_quarto` int,
  `data_prev_alta` date,
  `data_alta` date,
  `procedimento` varchar(255)
);

CREATE TABLE `Enfermeiro` (
  `id_enfermeiro` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255),
  `cpf` varchar(255),
  `crea` varchar(255)
);

CREATE TABLE `Quarto` (
  `id_quarto` int PRIMARY KEY AUTO_INCREMENT,
  `id_tipo_quarto` int,
  `numero` numeric
);

CREATE TABLE `Tipo_Quarto` (
  `id_tipo_quanto` int PRIMARY KEY AUTO_INCREMENT,
  `descricao` varchar(255),
  `valor_diaria` float
);

ALTER TABLE `Medico` ADD FOREIGN KEY (`id_medicos`) REFERENCES `Consulta` (`id_medico`);

ALTER TABLE `Convenio` ADD FOREIGN KEY (`id_convenio`) REFERENCES `Consulta` (`id_convenio`);

ALTER TABLE `Convenio` ADD FOREIGN KEY (`id_convenio`) REFERENCES `Paciente` (`id_convenio`);

ALTER TABLE `Paciente` ADD FOREIGN KEY (`id_paciente`) REFERENCES `Consulta` (`id_paciente`);

ALTER TABLE `Enfermeiro` ADD FOREIGN KEY (`id_enfermeiro`) REFERENCES `Internação` (`id_enfermeiro`);

ALTER TABLE `Internação` ADD FOREIGN KEY (`id_internação`) REFERENCES `Consulta` (`id_internacao`);

ALTER TABLE `Tipo_Quarto` ADD FOREIGN KEY (`id_tipo_quanto`) REFERENCES `Quarto` (`id_tipo_quarto`);

ALTER TABLE `Quarto` ADD FOREIGN KEY (`id_quarto`) REFERENCES `Internação` (`id_quarto`);
