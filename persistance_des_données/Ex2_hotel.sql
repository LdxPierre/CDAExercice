--Dictionnaire de donnée 
--https://docs.google.com/spreadsheets/d/1KIe0SmUdKyG_A5EMgErD6wIejWXiyCxdZnySdCV_ZCs/edit?usp=sharing

DROP DATABASE IF Exists Ex2_hotel;

CREATE DATABASE Ex2_hotel;

USE Ex2_hotel;

CREATE TABLE Station (
    `num_station` VARCHAR(5) NOT NULL,
    `nom_station` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`num_station`)
);

CREATE TABLE Hotel(
    `num_hotel` VARCHAR(5) NOT NULL,
    `nom_hotel` VARCHAR(10) NOT NULL,
    `addresse_hotel` VARCHAR(20) NOT NULL,
    `capacite_hotel` INT(11) NOT NULL,
    `categorie_hotel` VARCHAR(10) NOT NULL,
    `num_station` VARCHAR(5) NOT NULL,
    PRIMARY KEY (`num_hotel`),
    FOREIGN KEY (`num_station`) REFERENCES Station (`num_station`)
);

CREATE TABLE Chambre(
    `num_chambre` VARCHAR(5) NOT NULL,
    `num_hotel` VARCHAR(5) NOT NULL,
    `capacite_chambre` VARCHAR(2) NOT NULL,
    `type_chambre` VARCHAR(10),
    `exposition` VARCHAR(5),
    `degre_confort` VARCHAR(2),
    PRIMARY KEY (`num_chambre`),
    FOREIGN KEY (`num_hotel`) REFERENCES Hotel (`num_hotel`)
);

CREATE TABLE Client (
    `num_client` INT(11) NOT NULL AUTO_INCREMENT,
    `nom_client` VARCHAR(20),
    `prenom_client` VARCHAR(20),
    `addresse_client` VARCHAR(20),
    PRIMARY KEY (`num_client`)
);

CREATE TABLE Reservation(
    `num_chambre` VARCHAR(5) NOT NULL,
    `num_client` INT(11) NOT NULL,
    `date_debut` DATE NOT NULL,
    `date_fin` DATE NOT NULL,
    `date_reservation` DATE NOT NULL,
    `montant_arrhes` INT(11) NOT NULL,
    `prix_total` DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (`num_chambre`, `num_client`),
    FOREIGN KEY (`num_chambre`) REFERENCES Chambre (`num_chambre`),
    FOREIGN KEY (`num_client`) REFERENCES Client (`num_client`)
);