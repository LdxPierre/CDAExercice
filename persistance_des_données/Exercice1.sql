--Dictionnaire de donnée
--https://docs.google.com/spreadsheets/d/1lF1LhA9JDJdOwTzeGjt5_VIMzCDYtMerMqHUQMHJ8wQ/edit?usp=sharing

CREATE DATABASE Exercice1;

USE Exercice1;

CREATE TABLE Personne (
    `per_num` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `per_nom` VARCHAR(20),
    `per_prenom` VARCHAR(20),
    `per_adresse` VARCHAR(50),
    `per_ville` VARCHAR(20)
);

CREATE TABLE Groupe (
    `gro_num` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `gro_libelle` VARCHAR(20)
);

CREATE TABLE Appartient (
    `per_num` INT(11),
    `gro_num` INT(11),
    PRIMARY KEY (`per_num`, `gro_num`),
    FOREIGN KEY (`per_num`) REFERENCES Personne(`per_num`),
    FOREIGN KEY (`gro_num`) REFERENCES Groupe(`gro_num`)
);