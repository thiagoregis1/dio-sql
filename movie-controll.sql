CREATE DATABASE movies-controll;           #criado através da interface do phpmyadmin, pois o command line nao aceitava o '-'

CREATE TABLE movies(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    total_ep INT,
    atual_ep INT,
    last_view DATE DEFAULT CURRENT_TIMESTAMP()
);


INSERT INTO movies (id, type, name, total_ep, atual_ep, last_view) 
VALUES  (1, 0, 'Friends', 10, 1, current_timestamp()),
		(2, 1, 'Avengers', NULL, NULL, current_timestamp());

UPDATE movies SET last_view = '2022-04-09' WHERE movies.id = 1; 

INSERT INTO movies (id, type, name, total_ep, atual_ep, last_view) 
VALUES  (3, 0, 'Todo mundo odeia o Chris', 20, 1, '2022/04/03'),
		(4, 1, '1917', NULL, NULL, current_timestamp()),
        (5, 1, '300', NULL, NULL, current_timestamp());



#RETIRANDO O ID PARA VERIFICAR O AUTO_INCREMENT
SELECT * FROM movies WHERE movies.id=4;

DELETE FROM movies WHERE movies.id=4;

INSERT INTO movies (type, name, total_ep, atual_ep, last_view) 
VALUES  (1, '1917', NULL, NULL, current_timestamp());
