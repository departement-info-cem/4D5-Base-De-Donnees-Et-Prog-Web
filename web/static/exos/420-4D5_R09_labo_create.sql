
-- BD

CREATE DATABASE [4D5_R09_Labo];
GO

-- Schémas

USE [4D5_R09_Labo];
GO

CREATE SCHEMA Utilisateurs;
GO

CREATE SCHEMA Articles;
GO

CREATE SCHEMA Commandes;
GO

-- Tables et clés primaires

CREATE TABLE Utilisateurs.Utilisateur(
	UtilisateurID INT IDENTITY(1,1),
	Prenom NVARCHAR(50) NOT NULL,
	Nom NVARCHAR(50) NOT NULL,
	Courriel NVARCHAR(254) NOT NULL,
	NoTel CHAR(10) NOT NULL,
	CONSTRAINT PK_Utilisateur_UtilisateurID PRIMARY KEY (UtilisateurID)
);

CREATE TABLE Utilisateurs.Adresse(
	AdresseID INT IDENTITY(1,1),
	NoCivique INT NOT NULL,
	NoAPT SMALLINT,
	Rue NVARCHAR(50),
	Ville NVARCHAR(50),
	Region CHAR(2),
	Pays NVARCHAR(50),
	CodePostal NVARCHAR(16),
	UtilisateurID INT NOT NULL,
	CONSTRAINT PK_Adresse_ID PRIMARY KEY (AdresseID)
);

CREATE TABLE Commandes.Commande(
	CommandeID INT IDENTITY(1,1),
	DatePassee DATETIME NOT NULL,
	DateLivraison DATETIME NULL,
	EstTraitee bit NOT NULL,
	UtilisateurID INT NOT NULL,
	AdresseID INT NOT NULL,
	CONSTRAINT PK_Commande_CommandeID PRIMARY KEY (CommandeID)
);

CREATE TABLE Commandes.ArticleCommande(
	ArticleCommandeID INT IDENTITY(1,1),
	Qte INT NOT NULL,
	PrixVente NUMERIC(12,2) NOT NULL,
	ArticleID INT NOT NULL,
	CommandeID INT NOT NULL,
	CONSTRAINT PK_ArticleCommande_ArticleCommandeID PRIMARY KEY (ArticleCommandeID)
);

CREATE TABLE Articles.Article(
	ArticleID INT IDENTITY(1,1),
	Nom NVARCHAR(50) NOT NULL,
	Description NVARCHAR(500) NOT NULL,
	PrixRegulier NUMERIC(12,2) NOT NULL,
	QteStock INT NOT NULL,
	CONSTRAINT PK_Article_ArticleID PRIMARY KEY (ArticleID)
);
GO

-- Clés étrangères

ALTER TABLE Utilisateurs.Adresse ADD CONSTRAINT FK_Adresse_ID
FOREIGN KEY (UtilisateurID) REFERENCES Utilisateurs.Utilisateur(UtilisateurID)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT FK_Commande_UtilisateurID
FOREIGN KEY (UtilisateurID) REFERENCES Utilisateurs.Utilisateur(UtilisateurID)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT FK_Commande_AdresseID
FOREIGN KEY (AdresseID) REFERENCES Utilisateurs.Adresse(AdresseID);
GO

ALTER TABLE Commandes.ArticleCommande ADD CONSTRAINT FK_ArticleCommande_ArticleID
FOREIGN KEY (ArticleID) REFERENCES Articles.Article(ArticleID)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO

ALTER TABLE Commandes.ArticleCommande ADD CONSTRAINT FK_ArticleCommande_CommandeID
FOREIGN KEY (CommandeID) REFERENCES Commandes.Commande(CommandeID)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO

-- Autres contraintes

ALTER TABLE Utilisateurs.Utilisateur ADD CONSTRAINT CK_Utilisateur_NoTel
CHECK (NoTel NOT LIKE '%[^0-9]%');
GO

ALTER TABLE Utilisateurs.Utilisateur ADD CONSTRAINT CK_Utilisateur_Courriel
CHECK (Courriel LIKE '_%@_%._%');
GO

ALTER TABLE Utilisateurs.Adresse ADD CONSTRAINT CK_Adresse_NoPortePositif
CHECK (NoApt > 0 AND NoCivique > 0);
GO

ALTER TABLE Commandes.ArticleCommande ADD CONSTRAINT CK_ArticleCommande_Qte
CHECK (Qte > 0);
GO

ALTER TABLE Articles.Article ADD CONSTRAINT CK_Article_PrixQtePositifs
CHECK (PrixRegulier > 0 AND QteStock > 0);
GO

ALTER TABLE Commandes.Commande ADD CONSTRAINT DF_Commande_EstTraite 
DEFAULT 0 FOR EstTraitee;
GO