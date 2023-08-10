CREATE DATABASE IF NOT EXISTS `devbook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `devbook`;

DROP TABLE IF EXISTS `publicacoes`;
DROP TABLE IF EXISTS `seguidores`;
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


CREATE TABLE publicacoes(
  id int AUTO_INCREMENT primary key,
  titulo varchar(50) NOT NULL,
  conteudo varchar(300)  NOT NULL,
  autor_id int NOT NULL,
  FOREIGN KEY (autor_id)
  REFERENCES usuarios(id)
  ON DELETE CASCADE,

  curtidas int default 0,
  criadaEm timestamp default current_timestamp()
) ENGINE=InnoDB;

delete from usuarios;
delete from seguidores;
delete from publicacoes;

INSERT INTO usuarios (nome, nick, email, senha) 
VALUES 
('Usuário 1', 'usuario_1', 'usuario1@gmail.com', 'ogQxt96qXLaa3YO73QpMSsY6MjmU3RiSeuKOfoo4LMSfL2gGGUk7S6y2LRJVblI+z5JAk1SFpP2TMYOfXJ+1Eg=='),
('Usuário 2', 'usuario_2', 'usuario2@gmail.com', 'ogQxt96qXLaa3YO73QpMSsY6MjmU3RiSeuKOfoo4LMSfL2gGGUk7S6y2LRJVblI+z5JAk1SFpP2TMYOfXJ+1Eg=='),
('Usuário 3', 'usuario_3', 'usuario3@gmail.com', 'ogQxt96qXLaa3YO73QpMSsY6MjmU3RiSeuKOfoo4LMSfL2gGGUk7S6y2LRJVblI+z5JAk1SFpP2TMYOfXJ+1Eg==');

INSERT INTO seguidores (usuario_id, seguidor_id)
VALUES
(1,2),
(3,1),
(1,3);

insert into publicacoes(titulo, conteudo, autor_id)
VALUES
('publicacao do usuario 1', 'Essa é a publicacao do usuario 1', 1),
('publicacao do usuario 2', 'Essa é a publicacao do usuario 2', 2),
('publicacao do usuario 3', 'Essa é a publicacao do usuario 3', 3);
