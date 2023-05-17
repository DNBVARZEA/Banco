CREATE TABLE `Consulta` (
  `id_consulta` int PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int,
  `id_medico` int,
  `id_convenio` int,
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

ALTER TABLE `Medico` ADD FOREIGN KEY (`id_medicos`) REFERENCES `Consulta` (`id_medico`);

ALTER TABLE `Convenio` ADD FOREIGN KEY (`id_convenio`) REFERENCES `Consulta` (`id_convenio`);

ALTER TABLE `Convenio` ADD FOREIGN KEY (`id_convenio`) REFERENCES `Paciente` (`id_convenio`);

ALTER TABLE `Paciente` ADD FOREIGN KEY (`id_paciente`) REFERENCES `Consulta` (`id_paciente`);
