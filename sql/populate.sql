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


