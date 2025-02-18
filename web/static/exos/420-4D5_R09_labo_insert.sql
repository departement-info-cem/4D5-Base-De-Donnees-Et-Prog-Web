

USE [4D5_R09_Labo];
GO

INSERT INTO Utilisateurs.Utilisateur (Prenom, Nom, Courriel, NoTel)
VALUES
('Simone','De belleville','simoneArtiste@gmail.com','5148881234'), -- 1
('Stefano','Rodriguez','fanoboy@hotmail.com','5141234567'), -- 2
('Brenda','Vachon','brendadada@gmail.com','4387654321'), -- 3
('Paul','Robidoux','robidouleur@hotmail.com','4384206969'), -- 4
('Yoan', 'Berger','yoan.berger@hotmail.com','5144325632'), -- 5
('Omar', 'Ayad', 'oaoa@gmail.com', '4388781241'); -- 6
GO

INSERT INTO Utilisateurs.Adresse (NoCivique, NoApt, Rue, Ville, Region, Pays, CodePostal, UtilisateurID)
VALUES
(56, NULL, 'De Provence', 'Saint-Hyacinthe', 'QC', 'Canada', 'J1J1J2', 1), -- 1
(17542, 13, 'Lepage', 'Saint-Sulpice', 'QC', 'Canada', 'J9B3T9', 2), -- 2
(142, NULL, 'Du Galion', 'La Tuque', 'QC', 'Canada', 'J0S3X7', 3), -- 3
(877, 2, 'Mère Laflamme', 'Victoriaville', 'QC', 'Canada', 'J2P3B9', 3), -- 4
(1632, NULL, 'Patenaude', 'Joliette', 'QC', 'Canada', 'J5Z5J3', 4), -- 5
(163321, 391, 'Nadepaute', 'Montréal', 'QC', 'Canada', 'J8A3B4', 4), -- 6
(4237, NULL, 'Roxham', 'Roxham', 'QC', 'Canada', 'J3G3A1', 5), -- 7
(12, NULL, 'Gabonne', 'Lorraine', 'QC', 'Canada', 'J7G5F4', 6); -- 8
GO

INSERT INTO Commandes.Commande (DatePassee, DateLivraison, UtilisateurID, AdresseID, EstTraitee)
VALUES
('2024-01-02 06:15:14', '2024-01-04 06:15:14',1, 1,1), -- 1
('2024-01-03 08:23:59', '2024-01-06 08:23:59',2, 2,1), -- 2
('2024-01-04 17:01:21', '2024-01-07 17:01:21',3, 4,1), -- 3
('2024-01-06 23:54:24', '2024-01-12 23:54:24',4, 5,1), -- 4
('2024-01-07 02:47:28', '2024-01-16 02:47:28',1, 1,1), -- 5
('2024-01-12 18:31:41', '2024-01-18 18:31:41',2, 2,1), -- 6
('2024-01-16 15:29:09', '2024-01-22 15:29:09',3, 3,1), -- 7
('2024-01-18 15:37:15', '2024-01-24 15:37:15',5, 7,1), -- 8
('2024-01-22 21:20:19', '2024-01-26 21:20:19',6, 8,1), -- 9
('2024-02-01 13:08:11', NULL,6, 8,0), -- 10
('2024-02-07 11:11:11', NULL ,6, 8, 0), -- 11
('2024-02-08 07:01:52', NULL,1, 1, 0); -- 12
GO
DECLARE @nbJour int
SELECT @nbJour = DATEDIFF(Day, '20240210', GETDATE() )
UPDATE Commandes.Commande
SET DatePassee = DATEADD(Day, @nbJour, DatePassee), DateLivraison =  DATEADD(Day, @nbJour, DateLivraison)
GO
INSERT INTO Articles.Article (Nom, Description, PrixRegulier, QteStock)
VALUES
('Porte-bananes', 'Support simple d''utilisation qui peut supporter de 2 à 5 bananes. Attention ! Le support ne permet pas de supporter une seule banane, car le crochet nécessite au moins une banane de chaque côté.', 9.99, 8), -- 1
('Rhinocéros', 'Animal sympathique et docile. Parfait pour les randonnées et les promenades au parc. Éviter les enfants en bas âge.', 13739.99, 412), -- 2
('Casse-tête 1000 pcx flamants roses', 'Casse-tête de 1000 pièces avec image de flamants roses dans un étang.', 14.67, 5), -- 3
('Clé USB 32 GO USB USB 3.0 USB', 'CLÉ USB 32 GO de type USB 3.0. USB !', 7.19, 48), -- 4
('Sac à main Birkin Hermès', 'Turquoise.', 24399.99, 2), -- 5
('Blueberry Z10', 'Aidez-nous à vider nos stocks s''il vous plait. On attend depuis 2014.', 749.99, 31), -- 6
('Mariah Carey album Merry Christmas', 'Tout ce que vous voulez pour Noël, c''est cet album.', 11.79, 1209), -- 7
('Tide Pods Super Wash Plus', 'NE PAS MANGER. Nettoyage au lave-vaisselle cristal propre.', 20.49, 92), -- 8
('Spirit Island boardgame', 'Jeu de coopération gestion de ressources asymétrique.', 109.99, 3), -- 9
('Rick Astley album Whenever You Need Somebody', 'Never gonna give you up, never gonna let you down.', 7.99, 31), -- 10
('Endraw Teta Master Business Classroom DVD', 'Pour dépasser la masse et atteindre votre potentiel d''affaires maximal.', 1078, 17), -- 11
('PS5 game Cyberpunk 2077', 'Presque aucun bug. Presque aucun contenu promis. Jeu révolutionnaire.', 79.99, 131), -- 12
('iPad Super MacBook Pro Apple', 'Ordinateur qui peut entrer dans une enveloppe', 2999.99, 42), -- 13
('Ensemble de nouilles pour piscine en styromousse', 'Jouet pour la piscine. Piscine non fournie.', 4.99, 412), -- 14
('Pédalo Z412 Modèle Enweyepédale', 'Pédalo pour 4 personnes avec 2 stations à pédales pour les sorties en famille sur le lac.', 1499.99, 7), -- 15
('T-Shirt blanc Balenciaga', 'T-Shirt blanc', 549.29, 37); -- 16
GO

INSERT INTO Commandes.ArticleCommande (Qte, PrixVente, ArticleID, CommandeID)
VALUES
( 1     ,     9.99              ,                     1    ,      1), -- 1
( 1     ,     14.67             ,                     3    ,      1), -- 2
( 2     ,     10739.99          ,                     2    ,      5), -- 3
( 3     ,     7.19              ,                     4    ,      5), -- 4
( 1     ,     21299.99          ,                     5    ,      5), -- 5
( 1     ,     449.99            ,                     6    ,      2), -- 6
( 1     ,     11.79             ,                     7    ,      3), -- 7
( 1     ,     20.49             ,                     8    ,      4), -- 8
( 1     ,     109.99            ,                     9    ,      6), -- 9 
( 2     ,     20.49             ,                     8    ,      6), -- 10
( 2     ,     20.49             ,                     8    ,      7), -- 11
( 1     ,     7.99              ,                     10   ,      7), -- 12
( 1     ,     2499.99           ,                     13   ,      8), -- 13
( 87    ,     2499.99           ,                     13   ,      8), -- 14
( 24    ,     9.99              ,                     1    ,      8), -- 15
( 7     ,     7.19              ,                     4    ,      8), -- 16
( 3     ,     549.29            ,                     16   ,      9), -- 17
( 13    ,     7.19              ,                     4    ,      10), -- 18
( 6     ,     9.99              ,                     1    ,      10), -- 19
( 2     ,     9.99              ,                     1    ,      11), -- 20
( 5     ,     9.99              ,                     1    ,      12); -- 21
GO

--UPDATE Commandes.ArticleCommande
--SET PrixVente = (SELECT PrixRegulier FROM Articles.Article A WHERE A.ArticleID = Commandes.ArticleCommande.ArticleID)

--SELECT * FROM Commandes.ArticleCommande