DROP DATABASE IF EXISTS knowledge_websitedb;
CREATE DATABASE knowledge_websitedb;
USE knowledge_websitedb;

CREATE TABLE users (id INT PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(32),
    age DATE,
    avatar VARCHAR(500),
    bio VARCHAR(500),
    password VARCHAR (1000),
    reg_date DATETIME,
    email VARCHAR(300
);

CREATE TABLE articles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    discipline VARCHAR(100),
    titre VARCHAR(100),
    contenu mediumtext,
    auteur VARCHAR(32),
    creation_date DATE
);

CREATE TABLE commentaires(
    id INT PRIMARY KEY AUTO_INCREMENT,
    auteur VARCHAR(32),
    commentaire VARCHAR(1000),
    postdate DATE,
    idarticle INT,
    FOREIGN KEY (idarticle) REFERENCES articles (id)
);