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
