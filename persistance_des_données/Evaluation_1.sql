DROP DATABASE IF EXISTS evaluation1;

CREATE DATABASE evaluation1;

USE evaluation1;

CREATE TABLE client(
    cli_num INT NOT NULL,
    cli_nom VARCHAR(50) NOT NULL,
    cli_adresse VARCHAR(50),
    cli_tel VARCHAR(30),
    KEY (cli_nom),
    PRIMARY KEY (cli_num)
);

CREATE TABLE produit(
    pro_num INT NOT NULL,
    pro_libele VARCHAR(50) NOT NULL,
    pro_description VARCHAR(50),
    PRIMARY KEY (pro_num)
);

CREATE TABLE commande(
    com_num INT NOT NULL,
    cli_num INT NOT NULL,
    com_date DATETIME NOT NULL,
    com_obs VARCHAR(50),
    PRIMARY KEY (com_num),
    FOREIGN KEY (cli_num) REFERENCES client(cli_num)
);

CREATE TABLE est_compose(
    com_num INT NOT NULL,
    pro_num INT NOT NULL,
    est_qte INT NOT NULL,
    PRIMARY KEY (com_num, pro_num),
    FOREIGN KEY (com_num) REFERENCES commande(com_num),
    FOREIGN KEY (pro_num) REFERENCES produit(pro_num)
);