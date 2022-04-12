CREATE TABLE pessoa (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoa(nome,nascimento) VALUES ('Nathally', '1990/05/22');
INSERT INTO pessoa(nome,nascimento) VALUES ('Pedro', '1995/07/17');
INSERT INTO pessoa(nome,nascimento) VALUES ('Marcela', '2000/04/05');

DELETE FROM pessoa WHERE id='4'

INSERT INTO pessoa(nome,nascimento) VALUES ('Marcela', '2000/04/05');


ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento

SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nome DESC;

SELECT COUNT(genero), genero FROM pessoa GROUP BY genero

INSERT INTO 
pessoa(nome,nascimento,genero) 
VALUES 
('Bruno', '1992/07/07','M'),
('Maria', '1987/05/27','F'),
('Carlos', '1967/02/12','M')




#EM UM BANDO DE TESTE POR COMANDLINE

#precisa ter o lampp instalado e utilizar o comando abaixo no terminal linux:

/opt/lampp/bin/mysql -u root


CREATE TABLE usuarios (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(30));

show tables;    

DROP TABLE usuarios;

CREATE DATABASE apagar;
show databases;
DROP DATABASE apagar;
show databases;