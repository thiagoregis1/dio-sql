CREATE TABLE videos(
    id_video INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fk_author VARCHAR(30), 
    title VARCHAR(30),
    likes INT,
    dislikes INT
);

INSERT INTO videos(fk_author, title,likes,dislikes)
VALUES ('Maria','MySQL',10,2),
       ('João','HTML',30,1),
       ('Maria','CSS',18,3),
       ('Pedro','JavaCcript',15,8),
       ('Maria','Python',50,0); 


CREATE TABLE author(
        id_author INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(30),
        born DATE);

INSERT INTO author(name, born)
VALUES ('Maria', '1992/04/19'),
       ('Pedro', '2000/10/12'),
       ('João','1998/03/19'),
       ('Flávia', '2008/12/05');
      

UPDATE videos SET author=1 WHERE id_video=1;
UPDATE videos SET author=1 WHERE id_video=2;
UPDATE videos SET author=1 WHERE id_video=3;
UPDATE videos SET author=2 WHERE id_video=4;
UPDATE videos SET author=3 WHERE id_video=5;

#CRIAR RELACAO (ESTRUTURA DA TABELA > VISAO DE RELACAO > CASCADA 

SELECT * FROM videos JOIN author ON videos.fk_author = author.id_author;

SELECT videos.title, author.name FROM videos JOIN author ON videos.fk_author = author.id_author;

CREATE TABLE seo(
        id_seo INT PRIMARY KEY AUTO_INCREMENT,
        category VARCHAR(30));

INSERT INTO videos(fk_author, title,likes,dislikes)
VALUES (2,'PHP',20,8);



INSERT INTO seo(category)
VALUES ('Frontend'),
       ('Backend');


UPDATE videos SET fk_seo=1 WHERE id_video=2;
UPDATE videos SET fk_seo=1 WHERE id_video=3;
UPDATE videos SET fk_seo=1 WHERE id_video=4;

UPDATE videos SET fk_seo=2 WHERE id_video=1;
UPDATE videos SET fk_seo=2 WHERE id_video=5;
UPDATE videos SET fk_seo=2 WHERE id_video=6;


SELECT * FROM videos JOIN seo ON videos.fk_seo = seo.id_seo;
SELECT videos.title, seo.category FROM videos JOIN seo ON videos.fk_seo = seo.id_seo;


SELECT videos.title, author.name , seo.category FROM videos
JOIN seo ON videos.fk_seo = seo.id_seo
JOIN author ON videos.fk_author = author.id_author;


CREATE TABLE playlist(
        id_playlist INT PRIMARY KEY AUTO_INCREMENT,
        name_pl VARCHAR(30));

INSERT INTO playlist(name_pl)
VALUES ('HTML + CSS'),
       ('HTML + PHP + JS'),
       ('Python + PHP');


#RELACIONAMENTO DE MUITOS PARA MUITOS

CREATE TABLE videos_playlist(
        id_vp INT PRIMARY KEY AUTO_INCREMENT,
        fk_video INT,
        fk_playlist INT);

INSERT INTO videos_playlist(fk_video, fk_playlist)
VALUES (2,1),
       (3,1);


SELECT * FROM playlist;

SELECT * FROM playlist 
JOIN videos_playlist ON playlist.id_playlist = videos_playlist.fk_playlist
JOIN videos ON videos.id_video = videos_playlist.fk_video;

SELECT playlist.name_pl, videos.title FROM playlist 
JOIN videos_playlist ON playlist.id_playlist = videos_playlist.fk_playlist
JOIN videos ON videos.id_video = videos_playlist.fk_video;

SELECT playlist.name_pl, videos.title, author.name FROM playlist 
JOIN videos_playlist ON playlist.id_playlist = videos_playlist.fk_playlist
JOIN videos ON videos.id_video = videos_playlist.fk_video
JOIN author ON videos.fk_author = author.id_author;

UPDATE playlist SET fk_author=4 WHERE id_playlist=1;
UPDATE playlist SET fk_author=1 WHERE id_playlist=2;
UPDATE playlist SET fk_author=3 WHERE id_playlist=3;

SELECT author.name, playlist.name_pl FROM playlist JOIN author ON playlist.fk_author = author.id_author;