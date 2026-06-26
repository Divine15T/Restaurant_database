-- voir tous les clients
SELECT * FROM Client;

-- voir tous les plats 
SELECT * FROM Plat;

-- voir tous les fournisseurs
SELECT * FROM Fournisseur;

-- voir toutes les ressources 
SELECT * FROM Ressource;

--voir toutes Ressource;
SELECT * FROM Ressource; 

--voir tous les types_Ressource;
SELECT * FROM Type_Ressource; 

-- Voir les ressources avec leur type 
SELECT 
    r.nom_ressource,
    t.libelle AS type,
    r.quantite,
    r.prix_achat
FROM Ressource r
JOIN Type_Ressource t ON r.type_ressource_id = t.id;

*/=== update ===*/

-- Changer le numéro de téléphone d'un client
UPDATE Client 
SET tel = '066641756' 
WHERE nom = 'Taty' AND prenom = 'Divine';

-- Changer le nom d'un client
UPDATE Client 
SET nom = 'Tat1' 
WHERE id = 1;

-- Augmenter le prix d'un plat
UPDATE Plat 
SET prix = 1800 
WHERE nom_du_plat = 'Attieke';

-- Modifier la quantité disponible
UPDATE Plat 
SET quantite = 10 
WHERE id = 1;

-- Rendre un plat indisponible
UPDATE Plat 
SET disponible = FALSE 
WHERE nom_du_plat = 'Attieke';

-- Augmenter le stock
UPDATE Ressource 
SET quantite = quantite + 20 
WHERE nom_ressource = 'banane_plantain';

-- Diminuer le stock
UPDATE Ressource 
SET quantite = quantite - 5 
WHERE id = 1;

-- Changer le prix d'achat
UPDATE Ressource 
SET prix_achat = 16000 
WHERE nom_ressource = 'banane_plantain';

-- Changer l'adresse du fournisseur
UPDATE Fournisseur 
SET adresse = 'Siafoumou' 
WHERE nom = 'Loubaki';

-- Changer le numéro de téléphone
UPDATE Fournisseur 
SET tel = '055595550' 
WHERE email = 'LoubakiAmedee@gmail.com';

-- Changer le libellé
UPDATE Type_Ressource 
SET libelle = 'Banane Plantain' 
WHERE id = 1;

-- Changer la description
UPDATE Type_Ressource 
SET description = 'Banane plantain frais' 
WHERE libelle = 'banane';

/*===== Delete =====*/

-- Supprimer une ressource
DELETE FROM Ressource WHERE id = 1;

-- Supprimer une ressource par son nom
DELETE FROM Ressource WHERE nom_ressource = 'banane_plantain';