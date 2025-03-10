USE master
GO

CREATE DATABASE [4D5_R08_BDCommerciale]
 
GO
USE [4D5_R08_BDCommerciale]
GO
CREATE SCHEMA Clients
GO
CREATE SCHEMA Articles
GO
CREATE SCHEMA Commandes
GO
CREATE SCHEMA Employes
GO
CREATE TABLE Articles.Article(
	ArticleID int IDENTITY(1,1) NOT NULL,
	NumArticle nvarchar(4) NOT NULL,
	Description nvarchar(80) NOT NULL,
	StockDispo int NULL,
	CategorieID int NOT NULL,
	MagasinID int NOT NULL,
	PrixRegulier money NOT NULL,
    CONSTRAINT PK_Article_ArticleID PRIMARY KEY 
    (
	    ArticleID ASC
    )
)
GO


CREATE TABLE Articles.HistChangementDePrix(
	HistChangementDePrixID int IDENTITY(1,1) NOT NULL,
	ArticleID int NOT NULL,
	DateModification datetime NOT NULL,
	PrixRegulierAvant money NULL,
	PrixRegulierApres money NULL,
	
     CONSTRAINT PK_HistChangementDePrix_HistChangementDePrixID PRIMARY KEY 
    (
	    HistChangementDePrixID ASC
    )
)
GO

CREATE TABLE Articles.HistStockDispo(
	HistStockDispoID int IDENTITY(1,1) NOT NULL,
	ArticleID int NOT NULL,
	DateModification datetime NOT NULL,
	StockDispoAvant int NULL,
	StockDispoApres int NULL,
	
     CONSTRAINT PK_HistStockDispo_HistStockDispoID PRIMARY KEY 
(
	HistStockDispoID ASC
)
)
GO


CREATE TABLE Articles.Categorie(
	CategorieID int IDENTITY(1,1) NOT NULL,
	Categorie nvarchar(50) NOT NULL,
     CONSTRAINT PK_Catégorie PRIMARY KEY 
(
	CategorieID ASC
)
)
GO


CREATE TABLE Clients.Client(
	ClientID int IDENTITY(1,1) NOT NULL,
	NumClient nvarchar(4) NOT NULL,
	Nom nvarchar(80) NOT NULL,
	Prenom nvarchar(80) NOT NULL,
	NoCivique nvarchar(6) NULL,
	NoApp nvarchar(4) NULL,
	Rue nvarchar(100) NULL,
	Ville nvarchar(50) NULL,
	Province nvarchar(50) NULL,
	CodePostal nvarchar(20) NULL,
	Solde money NULL,
	LimiteCredit money NULL,
	RepresentantID int NULL,
     CONSTRAINT PK_Client_ClientID PRIMARY KEY 
(
	ClientID ASC
)
)
GO

CREATE TABLE Clients.ClientSansCommande(
	ClientSansCommandeID int IDENTITY(1,1) NOT NULL,
	ClientID int NOT NULL,
	NumClient nvarchar(4) NOT NULL,
	Nom nvarchar(80) NOT NULL,
	Prenom nvarchar(80) NOT NULL,
	NoCivique nvarchar(6) NULL,
	NoApp nvarchar(4) NULL,
	Rue nvarchar(100) NULL,
	Ville nvarchar(50) NULL,
	Province nvarchar(50) NULL,
	CodePostal nvarchar(20) NULL,
	Solde money NULL,
	LimiteCredit money NULL,
	RepresentantID int NULL,
	DateSuppressionListeClient datetime,
     CONSTRAINT PK_ClientSansCommande_ClientSansCommandeID PRIMARY KEY 
(
	ClientSansCommandeID ASC
)
)
GO

CREATE TABLE Commandes.Commande(
	CommandeID int IDENTITY(1,1) NOT NULL,
	NumCommande nvarchar(10) NOT NULL,
	DateCommande datetime NULL,
	ClientID int NULL,
     CONSTRAINT PK_Commande_CommandeID PRIMARY KEY 
(
	CommandeID ASC
)
)
GO

CREATE TABLE Commandes.DetailsCommande(
	DetailsCommandeID int IDENTITY(1,1) NOT NULL,
	QuantiteCommande decimal(6, 0) NOT NULL,
	PrixVendu money NOT NULL,
	CommandeID int NOT NULL,
	ArticleID int NOT NULL,
     CONSTRAINT PK_Ligne_Commande_DetailsCommandeID PRIMARY KEY 
(
	DetailsCommandeID ASC
)
)
GO

CREATE TABLE Employes.Representant(
	RepresentantID int IDENTITY(1,1) NOT NULL,
	NumRepresentant nvarchar(4) NULL,
	Nom nvarchar(80) NULL,
	Prenom nvarchar(80) NULL,
	NoCivique nvarchar(6) NULL,
	NoApp nvarchar(4) NULL,
	Rue nvarchar(100) NULL,
	Ville nvarchar(50) NULL,
	Province nvarchar(50) NULL,
	CodePostal nvarchar(20) NULL,
	VentesRealisees money NULL,
	TauxCommission decimal(5, 2) NULL,
     CONSTRAINT PK_Representant PRIMARY KEY 
(
	RepresentantID ASC
)
)
GO


INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'AX12', N'Fer à repasser', 104, 2, 3, 24.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'AZ52', N'Cible         ', 20, 3, 2, 12.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'BA74', N'Basket        ', 40, 3, 1, 29.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'BH22', N'Grille-pain   ', 95, 2, 3, 24.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'BT04', N'Four à gaz    ', 11, 1, 2, 149.9900)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'BZ66', N'Lave-vaisselle', 52, 1, 3, 399.9900)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'CA14', N'Tourtière     ', 78, 2, 3, 39.9900)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'CB03', N'Vélo          ', 44, 3, 1, 299.9900)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES (N'CX11', N'Mixer         ', 112, 2, 3, 22.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES ( N'CZ81', N'Musculator    ', 68, 3, 2, 349.9500)
INSERT Articles.Article ( NumArticle, Description, StockDispo, CategorieID, MagasinID, PrixRegulier) VALUES ( N'EA01', N'Râteau', 12, 4, 3, 34.9900)

GO


INSERT Articles.Categorie ( Categorie) VALUES ( N'Électroménager')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Appareils de Cuisine')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Sport')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Saisonnier Été')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Saisonnier Hiver')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Entretien Auto')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Entretien Intérieur Maison')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Entretien Extérieur Maison')
INSERT Articles.Categorie ( Categorie) VALUES ( N'Déjeuners et brunchs')

GO


INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'124', N'Moulineau', N'Paul', N'368', NULL, N'rue du Campanile', N'Québec', N'Qc', N'G1X 4G6', 818.7500, 1000.0000, 1)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'256', N'Allard', N'Martine', N'996', NULL, N'St-Michel', N'Montréal-Nord', N'Qc', N'H1H 5G7', 21.5000, 1500.0000, 2)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'311', N'Boucher', N'Camille', N'540', NULL, N'Bd des Galeries', N'Québec', N'Qc', N'G2K 1N4', 825.7500, 1000.0000, 3)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'315', N'Beaulieu', N'Alicia', N'220', NULL, N'Bd Le Corbusier', N'Laval', N'Qc', N'H7S 2C9', 770.7500, 750.0000, 1)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'405', N'Bédard', N'Bertrand', N'573', NULL, N'Ferncroft', N'Hampstead', N'Qc', N'H3X 1C4', 402.7500, 1500.0000, 2)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'412', N'Caver', N'Christine', N'120', NULL, N'Av. de Germain-des-Prés', N'Québec', N'Qc', N'G1V 3M7', 1817.5000, 2000.0000, 3)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'522', N'Chavant', N'Denise', N'444', NULL, N'Bd R. Lévesque Ouest', N'Montréal', N'Qc', N'H2Z 1Z6', 98.7500, 1500.0000, 2)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'567', N'Clovis', N'Eugène', N'91', NULL, N'rue Champlain', N'Dieppe', N'N.-B.', N'E1A 1N4', 402.4000, 750.0000, 2)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES (N'587', N'Côté', N'Jacques', N'30', NULL, N'Barkoff', N'Cap-de-la-Madeleine ', N'Qc', N'G8T 2A3', 114.6000, 1000.0000, 2)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES ( N'622', N'Ernest', N'Andrée', N'27', NULL, N'Av. des Pionniers', N'Balmoral', N'N.-B.', N'E4S 3J5', 1045.7500, 1000.0000, 3)
INSERT Clients.Client ( NumClient, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, Solde, LimiteCredit, RepresentantID) VALUES ( N'745', N'Boucher', N'Pierre', N'540', NULL, N'Bd des Galeries', N'Québec', N'Qc', N'G2K 1N4', 825.7500, 1000.0000, 3)

GO


INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12489', CAST(N'2022-09-02T00:00:00.000' AS DateTime), 5)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12500', CAST(N'2022-09-28T00:00:00.000' AS DateTime), 1)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12504', CAST(N'2022-12-01T00:00:00.000' AS DateTime), 5)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12510', CAST(N'2023-01-31T13:41:31.337' AS DateTime), 11)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12520', CAST(N'2023-02-01T05:57:46.803' AS DateTime), 11)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12590', CAST(N'2023-03-31T13:41:31.337' AS DateTime), 11)
INSERT Commandes.Commande ( NumCommande, DateCommande, ClientID) VALUES ( N'12580', CAST(N'2023-04-01T05:57:46.803' AS DateTime), 11)

GO


INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(11 AS Decimal(6, 0)), 21.9500, 3, 1)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(1 AS Decimal(6, 0)), 149.9900, 3, 5)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(1 AS Decimal(6, 0)), 399.9900, 3, 6)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(4 AS Decimal(6, 0)), 279.9900, 3, 8)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(2 AS Decimal(6, 0)), 22.9500, 3, 1)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(2 AS Decimal(6, 0)), 12.9500, 4, 2)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(4 AS Decimal(6, 0)), 24.9500, 4, 3)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(1 AS Decimal(6, 0)), 149.9900, 5, 5)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES (CAST(2 AS Decimal(6, 0)), 325.9900, 5, 10)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(11 AS Decimal(6, 0)), 21.9500, 6, 1)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(1 AS Decimal(6, 0)), 149.9900, 6, 5)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(1 AS Decimal(6, 0)), 399.9900, 6, 6)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(4 AS Decimal(6, 0)), 279.9900, 6, 8)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(2 AS Decimal(6, 0)), 22.9500, 7, 1)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(2 AS Decimal(6, 0)), 12.9500, 7, 2)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(4 AS Decimal(6, 0)), 24.9500, 7, 3)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(1 AS Decimal(6, 0)), 149.9900, 7, 5)
INSERT Commandes.DetailsCommande (QuantiteCommande, PrixVendu, CommandeID, ArticleID) VALUES ( CAST(2 AS Decimal(6, 0)), 325.9900, 7, 10)

GO


INSERT Employes.Representant ( NumRepresentant, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, VentesRealisees, TauxCommission) VALUES ( 've23',  N'Déchêne', N'Ginette', N'659', NULL, N'3E Avenue', N'Québec', N'Qc', NULL, 2150.0000, CAST(0.05 AS Decimal(5, 2)))
INSERT Employes.Representant ( NumRepresentant, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, VentesRealisees, TauxCommission) VALUES ( 'fr43', N'Denault', N'Carole', N'117', NULL, N'Sherbrooke Ouest', N'Montréal', N'Qc', N'H3A 1H6', 4912.5000, CAST(0.07 AS Decimal(5, 2)))
INSERT Employes.Representant ( NumRepresentant, Nom, Prenom, NoCivique, NoApp, Rue, Ville, Province, CodePostal, VentesRealisees, TauxCommission) VALUES ( 'ex34', N'Durant', N'Marie', N'333', NULL, N'rue du Carrefour', N'Laval', N'Qc', N'H7T 3C2', 2150.0000, CAST(0.05 AS Decimal(5, 2)))
SET IDENTITY_INSERT Employes.Representant OFF
GO
ALTER TABLE Clients.Client  WITH CHECK ADD  CONSTRAINT FK_Client_Representant FOREIGN KEY(RepresentantID)
REFERENCES Employes.Representant (RepresentantID)
GO
ALTER TABLE Clients.Client CHECK CONSTRAINT FK_Client_Representant
GO
ALTER TABLE Commandes.Commande  WITH CHECK ADD  CONSTRAINT FK_Commande_Client FOREIGN KEY(ClientID)
REFERENCES Clients.Client (ClientID)
GO
ALTER TABLE Commandes.Commande CHECK CONSTRAINT FK_Commande_Client
GO
ALTER TABLE Commandes.DetailsCommande  WITH CHECK ADD  CONSTRAINT FK_DetailsCommande_Article FOREIGN KEY(ArticleID)
REFERENCES Articles.Article (ArticleID)
GO
ALTER TABLE Commandes.DetailsCommande CHECK CONSTRAINT FK_DetailsCommande_Article
GO
ALTER TABLE Commandes.DetailsCommande  WITH CHECK ADD  CONSTRAINT FK_DetailsCommande_Commande FOREIGN KEY(CommandeID)
REFERENCES Commandes.Commande (CommandeID)
GO
ALTER TABLE Commandes.DetailsCommande CHECK CONSTRAINT FK_DetailsCommande_Commande
GO
ALTER TABLE Articles.Article WITH CHECK ADD  CONSTRAINT FK_Article_CategorieID FOREIGN KEY(CategorieID)
REFERENCES Articles.Categorie (CategorieID)
GO
ALTER TABLE Articles.Article CHECK CONSTRAINT FK_Article_CategorieID
GO
--  Ajoutez 1 à chaque nouvelle année que vous exécutez ce script, pour avoir des données plus 'récentes'
UPDATE Commandes.Commande SET DateCommande = DATEADD(year, 1, DateCommande)
