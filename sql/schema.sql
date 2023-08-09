CREATE DATABASE IF NOT EXISTS `devbook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `devbook`;

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE usuarios(
  id int AUTO_INCREMENT primary key,
  nome varchar(50) NOT NULL,
  nick varchar(50) NOT NULL UNIQUE,
  email varchar(100) NOT NULL UNIQUE,
  senha varchar(150) NOT NULL,
  criadoEm timestamp default current_timestamp()
  ) ENGINE=InnoDB;
  
CREATE TABLE seguidores(
  usuario_id int NOT NULL,
  FOREIGN KEY (usuario_id) 
  REFERENCES usuarios(id)
  ON DELETE CASCADE,

  seguidor_id int NOT NULL,
  FOREIGN KEY (seguidor_id) 
  REFERENCES usuarios(id)
  ON DELETE CASCADE,
  PRIMARY KEY (usuario_id, seguidor_id)
) ENGINE=InnoDB;
  