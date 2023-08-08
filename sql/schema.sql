CREATE DATABASE IF NOT EXISTS `devbook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE usuarios(
  id int AUTO_INCREMENT primary key,
  nome varchar(50) NOT NULL,
  nick varchar(50) NOT NULL UNIQUE,
  email varchar(100) NOT NULL UNIQUE,
  senha varchar(32) NOT NULL,
  criadoEm timestamp default current_timestamp()
  ) ENGINE=InnoDB;
  
  