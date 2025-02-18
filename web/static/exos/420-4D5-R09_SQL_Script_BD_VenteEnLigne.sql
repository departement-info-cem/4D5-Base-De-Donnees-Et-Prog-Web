
-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █          Création de la BD          █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

USE master
GO
CREATE DATABASE BD_VenteEnLigne;
GO
USE BD_VenteEnLigne
GO





-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █          Création d'au moins deux schémas         █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

CREATE SCHEMA Utilisateurs;
GO
CREATE SCHEMA Produits;
GO
CREATE SCHEMA Commandes;
GO







-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █ Création des tables + contraintes de clé primaire █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

CREATE TABLE Utilisateurs.Client(
-- À COMPLÉTER
	ClientID INT IDENTITY(1,1),
	Nom NVARCHAR(20) NOT NULL,
	Prenom NVARCHAR(20) NOT NULL,
	NbreDeCommande int NOT NULL,
	NoTel NVARCHAR(10) NOT NULL,
	CONSTRAINT PK_Client_ClientID PRIMARY KEY (ClientID)
);
GO

--CREATE TABLE Utilisateurs.CompteUtilisateur(
---- À COMPLÉTER
--	CompteUtilisateurID INT IDENTITY(1,1),
--	NomUtilisateur NVARCHAR(20) NOT NULL,
--	MotDePasse NVARCHAR(20) NOT NULL,
--	ClientID INT NOT NULL,
--	CONSTRAINT PK_CompteUtilisateur_CompteUtilisateurID PRIMARY KEY (CompteUtilisateurID)
--);
--GO

--CREATE TABLE Utilisateurs.Paiement(
---- À COMPLÉTER
--	PaiementID INT IDENTITY(1,1),
--	TypeCarte NVARCHAR(20) NOT NULL,
--	NoCarte INT NOT NULL,
--	DateExp NVARCHAR(5) NOT NULL,
--	CVV NVARCHAR(4) NOT NULL,
--	ClientID INT NOT NULL,
--	CONSTRAINT PK_Paiement_PaiementID PRIMARY KEY (PaiementID)
--);
--GO

CREATE TABLE Utilisateurs.Adresse(
-- À COMPLÉTER
	AdresseID INT IDENTITY(1,1),
	NoPorte int NOT NULL,
	NoApt int,
	Rue NVARCHAR(30) NOT NULL,
	Ville NVARCHAR(20) NOT NULL,
	Province NVARCHAR(25) NOT NULL,
	CodePostal NVARCHAR(7) NOT NULL,
	ClientID INT NOT NULL,
	CONSTRAINT PK_Adresse_AdresseID PRIMARY KEY (AdresseID)
);
GO

CREATE TABLE Commandes.Commande(
-- À COMPLÉTER
	CommandeID INT IDENTITY(1,1),
	EstLivree BIT NOT NULL,
	DatePaiement DATETIME,
	DateCommande DATETIME NOT NULL,
	DateLivraison DATE,
	PrixAvantTx DECIMAL(10,2) NOT NULL,
	PrixApresTx DECIMAL(10,2) NOT NULL,
	NbreArticles INT NOT NULL,
	NoReperagePostale NVARCHAR(25),
	ClientID INT NOT NULL,
	AdresseID INT NOT NULL,
	CONSTRAINT PK_Commande_CommandeID PRIMARY KEY (CommandeID)
);
GO

CREATE TABLE Commandes.ProduitCommande(
-- À COMPLÉTER
	ProduitCommandeID INT IDENTITY(1,1),
	PrixPromotion DECIMAL(10,2),
	PrixProduit DECIMAL(10,2) NOT NULL,
	Quantite INT NOT NULL,
	ProduitID INT NOT NULL,
	CommandeID INT NOT NULL,
	CONSTRAINT PK_ProduitCommande_ProduitCommandeID PRIMARY KEY (ProduitCommandeID)	
);
GO

CREATE TABLE Produits.Produit(
-- À COMPLÉTER
	ProduitID INT IDENTITY(1,1),
	NomProduit NVARCHAR(100) NOT NULL,
	PrixRegulier DECIMAL(10,2) NOT NULL,
	Taxes DECIMAL(10,2) NOT NULL,
	ImageURL NVARCHAR(255),
	Description NTEXT,
	QteStock INT NOT NULL,
	HistQteVendu INT NOT NULL,
	NomFabricant NVARCHAR(30) NOT NULL,
	NbreEtoiles DECIMAL(2,1) NOT NULL,
	CategorieID INT NOT NULL,
	CONSTRAINT PK_Produit_ProduitID PRIMARY KEY (ProduitID)
);
GO

CREATE TABLE Produits.Categorie(
-- À COMPLÉTER
	CategorieID INT IDENTITY(1,1),
	NomCategorie NVARCHAR(30) NOT NULL,
	Description NVARCHAR(255),
	ImageURL NVARCHAR(255),
	CONSTRAINT PK_Categorie_CategorieID PRIMARY KEY (CategorieID)
);
GO







-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █ Création des contraintes de clé étrangère █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

ALTER TABLE Utilisateurs.Adresse ADD CONSTRAINT FK_Adresse_ClientID
FOREIGN KEY (ClientID) REFERENCES Utilisateurs.Client(ClientID)
ON DELETE CASCADE
--ON UPDATE CASCADE
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT FK_Commande_ClientID
FOREIGN KEY (ClientID) REFERENCES Utilisateurs.Client(ClientID)
ON DELETE CASCADE
--ON UPDATE CASCADE
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT FK_Commande_AdresseID
FOREIGN KEY (AdresseID) REFERENCES Utilisateurs.Adresse(AdresseID)
ON DELETE NO ACTION
--ON UPDATE CASCADE
GO

ALTER TABLE Commandes.ProduitCommande ADD CONSTRAINT FK_ProduitCommande_ProduitID
FOREIGN KEY (ProduitID) REFERENCES Produits.Produit(ProduitID)
ON DELETE CASCADE
--ON UPDATE CASCADE
GO

ALTER TABLE Commandes.ProduitCommande ADD CONSTRAINT FK_ProduitCommande_CommandeID
FOREIGN KEY (CommandeID) REFERENCES Commandes.Commande(CommandeID)
ON DELETE CASCADE
--ON UPDATE CASCADE
GO

ALTER TABLE Produits.Produit ADD CONSTRAINT FK_Produit_CategorieID
FOREIGN KEY (CategorieID) REFERENCES Produits.Categorie(CategorieID)
ON DELETE CASCADE
--ON UPDATE CASCADE
GO



-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █      Création des contraintes UC,DF,CK     █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

ALTER TABLE Produits.Produit ADD CONSTRAINT UC_Produit_NomProduit UNIQUE (NomProduit)
GO

ALTER TABLE Produits.Categorie ADD CONSTRAINT UC_Categorie_NomCategorie UNIQUE (NomCategorie)
GO

ALTER TABLE Commandes.Commande
ADD CONSTRAINT DF_Commande_DateCommande DEFAULT GetDate() FOR DateCommande
GO

ALTER TABLE Utilisateurs.Client ADD CONSTRAINT CK_Client_NbreDeCommande CHECK
(	NbreDeCommande > 0
)
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT CK_Commande_NbreArticles CHECK
(	NbreArticles > 0
)
GO

ALTER TABLE Commandes.ProduitCommande ADD CONSTRAINT CK_ProduitCommande_Quantite CHECK
(	Quantite > 0
)
GO

ALTER TABLE Produits.Produit ADD CONSTRAINT CK_Produit_QteStock CHECK
(	QteStock >=0
)
GO

ALTER TABLE Produits.Produit ADD CONSTRAINT CK_Produit_HistQteVendu CHECK
(	HistQteVendu >= 0
)
GO




-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █     Insertion de données dans les tables     █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█


INSERT INTO Utilisateurs.Client (Nom, Prenom, NbreDeCommande, NoTel)
VALUES
('Mario','Mario',25,5145555555),
('Mario','Luigi',23,5146666666),
('Princess','Peach',99,5147777777),
('Dragon','Yoshi',1,5148888888),
('Duke','Daisy',15,5149999999),
('Mushroom','Toad',8,4501111111),
('Troopa','Koopa',55,4502222222),
('Wario','Wario',2,4503333333),
('Waluigi','Waluigi',9,4504444444),
('Who','Rosalina',37,4385144380),
('Koopa', 'Bowser',42,5145284632);
GO

INSERT INTO Utilisateurs.Adresse (NoPorte, NoApt, Rue, Ville, Province, CodePostal, ClientID)
VALUES
(123,NULL,'Ontario est','Montréal','Québec','H2X1G9',1),
(333,NULL,'Ontario ouetest','Montréal','Québec','123456',1),
(1234,NULL,'boulevard Taschereau','Greenfield Park','Québec','123456',1),
(125,NULL,'Ontario est','Montréal','Québec','H2X1G9',2),
(127,NULL,'Ontario est','Montréal','Québec','H2X1G9',3),
(129,2,'Ontario est','Montréal','Québec','H2X1G9',4),
(131,NULL,'Ontario est','Montréal','Québec','H2X1G9',5),
(133,102,'du Luxembourg','Brossard','Québec','J4Y3G2',6),
(133,205,'du Luxembourg','Brossard','Québec','J4Y3G2',7),
(137,NULL,'du Luxembourg','Brossard','Québec','J4Y3G2',8),
(139,NULL,'du Luxembourg','Brossard','Québec','J4Y3G2',9),
(141,12,'du Luxembourg','Brossard','Québec','J4Y3G2',10),
(141,14,'du Luxembourg','Brossard','Québec','J4Y3G2',11);
GO

INSERT INTO Commandes.Commande (EstLivree, DatePaiement, DateCommande, DateLivraison, PrixAvantTx, PrixApresTx, NbreArticles, NoReperagePostale, ClientID, AdresseID)
VALUES
(1,DATEADD(day, -8,GETDATE()),DATEADD(day, -9,GETDATE()),GETDATE(),599.99+729.99+789.99,(599.99+729.99+789.99)*1.14975,3,'11111222223333344444AAAAA',1,1),
(0,null,DATEADD(day, -9,GETDATE()),null,26.95+24.95,(26.95+24.95)*1.14975,2,null,2,2),
(0,DATEADD(day, 2,GETDATE()),GETDATE(),null,599.99+729.99+399.99+369.99,(599.99+729.99+399.99+369.99)*1.14975,4,null,3,3),
(0,GETDATE(),GETDATE(),null,349.99,349.99*1.14975,1,null,4,4),
(0,DATEADD(day, 1,GETDATE()),GETDATE(),null,2*599.99+2*729.99+2*789.99,(2*599.99+2*729.99+2*789.99)*1.14975,6,null,5,5),
(0,null,GETDATE(),null,3*26.95+3*24.95,(3*26.95+3*24.95)*1.14975,6,null,6,6),
(1,DATEADD(day, -10,GETDATE()),DATEADD(day, -10,GETDATE()),DATEADD(day, -9,GETDATE()),599.99+729.99+5*399.99+2*369.99,(599.99+729.99+5*399.99+2*369.99)*1.14975,9,'11111222223333344444BBBBB',7,7),
(0,DATEADD(day, 3,GETDATE()),GETDATE(),null,10*349.99,(10*349.99)*1.14975,10,null,8,8),
(1,DATEADD(day, -6,GETDATE()),DATEADD(day, -6,GETDATE()),DATEADD(day, -5,GETDATE()),599.99,599.99*1.14975,1,'11111222223333344444CCCCC',9,9),
(0,null,GETDATE(),null,6*749.99,(6*749.99)*1.14975,8,null,10,10),
(0,GETDATE(),GETDATE(),null,2*749.99,(2*749.99)*1.14975,2,null,11,11);
GO


INSERT INTO Produits.Categorie(NomCategorie, Description, ImageURL)
VALUES
('Console', 'Console de jeux vidéos', 'https://merchandising-assets.bestbuy.ca/bltc8653f66842bff7f/bltc0ac77928ff2ed21/5e98e44cce105c4022606258/vg-evergreen-sbc-consoles.jpg?width=250&quality=80&auto=webp'),
('Processeur','Le coeur des ordinateurs','https://www.gadgetmandu.com/wp-content/uploads/2020/05/intel_amd-1024x536.jpg'),
('Livre','Les livres à lire','https://images.radio-canada.ca/q_auto,w_960/v1/ici-premiere/16x9/pluson-livre-generique.JPG'),
('Nourriture', 'La nourriture pour manger', 'https://product-images.metro.ca/images/h18/ha9/8872795308062.jpg'),
('Médicament', 'Les médicaments pour guérir les maladies','https://assets.beauty.shoppersdrugmart.ca/bb-prod-marketing-image/site-creative/2020/P11/WK44/shop/department-tiles/departmenttile_health.png'),
('Jouet', 'Les jouets pour les enfants et adultes','https://www.toysrus.ca/dw/image/v2/BDFX_PRD/on/demandware.static/-/Sites-toys-master-catalog/default/dwf8dd7c64/images/24B97958_1.jpg'),
('Vélo','Indispensable pour se déplacer à Montréal','https://media-www.canadiantire.ca/product/playing/cycling/bicycles/0711920/disney-frozen-kids-bike-12--c1337d33-d0f1-4a32-9e93-aabff7c3395f.png'),
('Soulier', 'Protéger vos pieds à l''extérieur de votre domicile', 'https://fglprdcdn.azureedge.net/images/530402-002-1-XLarge.jpg'),
('Cellulaire', 'Tous les marques iPhone et Android', 'https://multimedia.bbycastatic.ca/multimedia/products/500x500/164/16482/16482564.jpg'),
('Carte cadeau','Le meilleur cadeau quand on ne sait pas quoi acheter','https://m.media-amazon.com/images/I/51nozIwC8uL.jpg');
GO

INSERT INTO Produits.Produit(NomProduit, PrixRegulier, Taxes, ImageURL, Description, QteStock, HistQteVendu, NomFabricant, NbreEtoiles, CategorieID)
VALUES
('Xbox Series X',599.99,599.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/149/14964/14964951.jpg', 'Procurez-vous une puissante machine de jeu : la console Xbox Series X. Elle combine un disque SSD de 1 To avec une puissance de traitement graphique de 12 téraflops pour des jeux incroyablement rapides et des temps de chargement réduits. Profitez d''une expérience incroyable avec des jeux en 4K à 120 images/s, un son spatial 3D évolué et plus encore. Elle prend aussi en charge des milliers de titres provenant de 4 générations de consoles Xbox.', 120, 356, 'Microsoft', 4.94, 1),
('Xbox Series S',379.99,379.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/149/14964/14964950.jpg', 'Rapide et performante, la console Xbox Series S vous permet de jouer à vos jeux à votre façon. Cette puissante console entièrement numérique est dotée d''un disque SSD de 512 Go pour une expérience de jeu rapide et des temps de chargement réduits. Profitez d''une expérience incroyable avec des jeux en 1440p à 120 images/s et un son spatial 3D évolué. Elle prend aussi en charge des milliers de titres provenant de 4 générations de consoles Xbox.', 88, 204, 'Microsoft', 4.82, 1),
('Playstation 5 (base)',729.99,729.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/165/16552/16552733.jpg', ' Il comprend la console PS5 dotée de technologies avancées pour donner vie à chaque jeu, et une manette DualSense avec gâchettes adaptatives et prise en charge de la rétroaction haptique.', 130, 369, 'Sony', 4.24, 1),
('Playstation 5 (numérique)',599.99,599.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/165/16552/16552734.jpg', 'Console entièrement numérique qui n''utilise pas de disque dur; il suffit de vous connecter à votre compte PlayStation pour acheter et télécharger des jeux', 99, 123, 'Sony', 3.71, 1),
('Nintendo Switch (OLED)',449.99,449.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/155/15598/15598575.jpg', 'Des heures de divertissement sont à venir avec la console Nintendo Switch (modèle OLED). Dotée d''un écran OLED de 7 po avec une apparence éclatante, cette console est équipée d''un grand support réglable pour des angles de visionnement plus confortables, d''une station d''accueil avec fil pour le mode télé, d''une mémoire interne de 64 Go et d''un système audio amélioré en mode portatif ou sur table grâce à ses haut-parleurs.', 199, 430, 'Nintendo', 4.93, 1),
('Nintendo Switch',399.99,399.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/165/16529/16529707.jpg', 'Jouez à la maison et sur la route avec la polyvalente console Nintendo Switch. Connectez-la à votre téléviseur pour l''utiliser comme un système de jeu traditionnel à la maison, ou retirez-la de la station d''accueil pour profiter d''une expérience de jeu sur console haut de gamme où que vous soyez. Les manettes Joy-Con incluses sont spécialement conçues pour les sessions de jeu en mode solo ou multijoueur local.', 258, 1204, 'Nintendo', 4.88, 1),
('Nintendo Switch Lite',259.99,259.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/154/15441/15441452.jpg', 'Nintendo Switch Lite est un système de Nintendo Switch optimisé pour les jeux personnels et portatifs. Son clavier de commande intégré et sa forme élégante et monocoque facilitent les jeux en déplacement. De plus, elle est compatible avec des jeux comme Super Smash Bros. Ultimate, Super Mario Odyssey, The Legend of Zelda: Breath of the Wild, et plus encore, pour que vous puissiez jouer à vos jeux favoris n''importe quand et n''importe où.', 142, 804, 'Nintendo', 4.76, 1),
('Ryzen 9 7950X',949.99,949.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/164/16489/16489531.jpg', 'Améliorez votre expérience informatique quotidienne avec le processeur à 16 coeurs Ryzen 9 7950X AM5 de 4,5 GHz d''AMD. Grâce à son architecture Zen 4, ce puissant appareil de jeu est doté de 16 coeurs, de 32 fils et de vitesses d''horloges de 5,7 GHz au plus, pour offrir une performance inégalée qui est idéale pour les joueurs et les créateurs de contenu. Les processeurs Ryzen d''AMD sont dotés de technologies de pointe pour vous aider et vous garder plongé dans vos jeux.', 49, 18, 'AMD', 4.64, 2),
('Core i9-13900K',819.99,819.99*0.14975,'https://multimedia.bbycastatic.ca/multimedia/products/500x500/165/16551/16551381.jpg', 'Doté de technologies de pointe, le processeur Core i9-13900K d''Intel offre la puissance dont vous avez besoin pour jouer, créer du contenu et bien plus encore. Il est compatible avec PCIe 5.0 et 4.0, DDR5 et DDR4, et les cartes mères à jeu de puces des séries 700 et 600 d''Intel, pour le combiner facilement avec une vaste gamme de systèmes et de composants.', 78, 28, 'Intel', 4.89, 2),
('Le Caméléon : mémoires d''un agent du FBI infiltré par MARC RUSKIN',29.95,29.95*0.14975,'https://images.archambault.ca/images/PG/3856/3856653-gf.jpg', 'L''auteur relate son travail d''agent infiltré du FBI. Il explique comment il a endossé une dizaine d''identités différentes au cours de sa carrière. Il a notamment travaillé sur des opérations ciblant la fraude fiscale, les escroqueries de Wall Street, le trafic de stupéfiants ou encore la Cosa Nostra. Ayant parfois plusieurs affaires en même temps, il changeait d''identité au fil des jours.', 127, 50, 'HUGO & CIE', 4.82, 3),
('Cultiver le désir et vivre aux éclats par FRÉDÉRIC LENOIR',27.95,27.95*0.14975,'https://images.archambault.ca/images/PG/3864/3864884-gf.jpg', 'De la philosophie aux neurosciences, en passant par la psychologie, la sociologie et l’économie, Frédéric Lenoir revisite toutes les formes de désir, tant matérielles et sexuelles que spirituelles. Il propose un livre lucide et vibrant, au coeur de nos problématiques les plus actuelles. Un ouvrage accessible à toutes et à tous, qui aide non seulement à vivre, mais à vivre aux éclats.', 111, 48, 'FLAMMARION QUEBEC', 4.77, 3);
GO

INSERT INTO Commandes.ProduitCommande (PrixPromotion, PrixProduit, Quantite, ProduitID, CommandeID)
VALUES
(null,599.99,1,1,1),
(null,729.99,1,3,1),
(789.99,819.99,1,9,1),
(26.95,29.95,1,10,2),
(24.95,27.95,1,11,2),
(null,599.99,1,1,3),
(null,729.99,1,3,3),
(399.99,449.99,1,5,3),
(369.99,399.99,1,6,3),
(349.99,379.99,1,2,4),
(null,599.99,2,1,5),
(null,729.99,2,3,5),
(789.99,819.99,2,9,5),
(26.95,29.95,3,10,6),
(24.95,27.95,3,11,6),
(null,599.99,1,1,7),
(null,729.99,1,3,7),
(399.99,449.99,5,5,7),
(369.99,399.99,2,6,7),
(349.99,379.99,10,2,8),
(null,599.99,1,4,9),
(749.99,949.99,6,8,10),
(749.99,949.99,2,8,11);
GO



