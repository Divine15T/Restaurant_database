INSERT INTO Type_Ressource (libelle, description) VALUES 
('banane', 'plantain'),
('Poulet', 'poulet doux'),
('Attieke', 'igname');

--- Ajouter un client

INSERT INTO Client (nom, prenom, tel)
VALUES ('Taty', 'Divine', '066273591');

--- Ajouter un plat

INSERT INTO Plat (nom_du_plat, description, prix, quantite, disponible)
VALUES ('Attieke', 'Poulet, bananes', 1500, 2, TRUE);

-- Ajouter un fournisseur

INSERT INTO Fournisseur (nom, prenom, adresse, tel, email)
VALUES ('Loubaki', 'Amedee', 'Thister', '054897565', 'LoubakiAmedee@gmail.com');


-- Ajouter une ressource

INSERT INTO Ressource (type_ressource_id, quantite, nom_ressource, prix_achat)
VALUES (1, 50, 'banane_plantain', 15000);
