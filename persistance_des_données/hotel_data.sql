USE Ex2_hotel;

INSERT INTO Station(`num_station`, `nom_station`) VALUES (12345, 'station1'); 
INSERT INTO Station(`num_station`, `nom_station`) VALUES (54321, 'station2');
INSERT INTO Station(`num_station`, `nom_station`) VALUES (67890, 'station3');
INSERT INTO Station(`num_station`, `nom_station`) VALUES (09876, 'station4'); 

INSERT INTO Hotel(`num_hotel`, `nom_hotel`, `addresse_hotel`, `categorie_hotel`, `capacite_hotel`, `num_station`)
VALUES (12345, 'hotel1', 'address1', 'categorie1', 10, 12345);
INSERT INTO Hotel(`num_hotel`, `nom_hotel`, `addresse_hotel`, `categorie_hotel`, `capacite_hotel`, `num_station`)
VALUES (54321, 'hotel2', 'address2', 'categorie2', 20, 54321);
INSERT INTO Hotel(`num_hotel`, `nom_hotel`, `addresse_hotel`, `categorie_hotel`, `capacite_hotel`, `num_station`)
VALUES (67890, 'hotel3', 'address3', 'categorie3', 30, 67890);
INSERT INTO Hotel(`num_hotel`, `nom_hotel`, `addresse_hotel`, `categorie_hotel`, `capacite_hotel`, `num_station`)
VALUES (09876, 'hotel4', 'address4', 'categorie4', 40, 09876);

INSERT INTO Chambre(`num_chambre`, `num_hotel`, `capacite_chambre`, `type_chambre`, `exposition`, `degre_confort`)
VALUES (12345, 12345, 1, 1, 'Nord', 1);

INSERT INTO Chambre(`num_chambre`, `num_hotel`, `capacite_chambre`, `type_chambre`, `exposition`, `degre_confort`)
VALUES (54321, 54321, 2, 2, 'Est', 2);

INSERT INTO Chambre(`num_chambre`, `num_hotel`, `capacite_chambre`, `type_chambre`, `exposition`, `degre_confort`)
VALUES (67890, 67890, 3, 3, 'Sud', 3);

INSERT INTO Chambre(`num_chambre`, `num_hotel`, `capacite_chambre`, `type_chambre`, `exposition`, `degre_confort`)
VALUES (09876, 09876, 4, 4, 'Ouest', 4);

INSERT INTO Client(`nom_client`, `prenom_client`, `addresse_client`)
VALUES ('DUPOND', 'Pierre', '11 rue de quelque pa');

INSERT INTO Client(`nom_client`, `prenom_client`, `addresse_client`)
VALUES ('DUPOND', 'Paul', '12 rue de quelque pa');

INSERT INTO Client(`nom_client`, `prenom_client`, `addresse_client`)
VALUES ('DUPOND', 'Jacques', '13 rue de quelque pa');

INSERT INTO Client(`nom_client`, `prenom_client`, `addresse_client`)
VALUES ('DUPOND', 'Michel', '14 rue de quelque pa');

INSERT INTO Reservation(`num_chambre`, `num_client`, `date_debut`, `date_fin`, `date_reservation`, `montant_arrhes`, `prix_total`)
VALUES (12345, 1, '2023-01-02','2023-01-03', '2023-01-01', 1, 10);

INSERT INTO Reservation(`num_chambre`, `num_client`, `date_debut`, `date_fin`, `date_reservation`, `montant_arrhes`, `prix_total`)
VALUES (54321, 2, '2023-01-02','2023-01-03', '2023-01-01', 1, 10);

INSERT INTO Reservation(`num_chambre`, `num_client`, `date_debut`, `date_fin`, `date_reservation`, `montant_arrhes`, `prix_total`)
VALUES (67890, 3, '2023-01-02','2023-01-03', '2023-01-01', 1, 10);

INSERT INTO Reservation(`num_chambre`, `num_client`, `date_debut`, `date_fin`, `date_reservation`, `montant_arrhes`, `prix_total`)
VALUES (09876, 4, '2023-01-02','2023-01-03', '2023-01-01', 1, 10);