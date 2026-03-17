	desc equipes;
INSERT INTO equipes (nome, codigo) 
VALUES ("audi","a"),
("ferrari","b"),
("red bull","c"),
("mercedes","d"),
("mclares","e");
desc participantes;

desc pistas;

INSERT INTO pistas (nome, id_equipe) 
VALUES("suzuka",1),
("interlagos",2),
("lindblad",3),
("zandvorten",4),
("america",5);


INSERT INTO participantes (nome) 
VALUES("joao"),
("marcos"),
("max"),
("eduarda"),
("isabella"),
("gabriel"),
("joao.v"),
("enzo"),
("lucas");

desc equipes_participantes;

INSERT INTO equipes_participantes (id_participante, id_equipe) 
VALUES("1",1),
(4,1),
(5,1),
(6,1),
(2,2),
(3,3),
(7,4),
(8,5);

SELECT * FROM participantes;

SELECT * FROM equipes;
