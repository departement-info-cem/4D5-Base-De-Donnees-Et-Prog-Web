USE master
GO

CREATE DATABASE [4D5_R10_Labo] 
GO
USE [4D5_R10_Labo]
GO
CREATE SCHEMA Agences;
GO
CREATE SCHEMA Clients;
GO
CREATE SCHEMA Biens;
GO
CREATE SCHEMA Proprietaires
GO
CREATE TABLE Agences_Adresse(
	AdresseID int IDENTITY(1,1) NOT NULL,
	NoCivique int NOT NULL,
	Rue nvarchar(50) NOT NULL,
	Ville nvarchar(50) NOT NULL,
	Province nchar(2) NOT NULL,
	Pays nvarchar(20) NOT NULL,
	CodePostal nchar(6) NOT NULL,
	CONSTRAINT PK_Adresse_AdresseID PRIMARY KEY (AdresseID)
)

CREATE TABLE Agences.Agence(
	AgenceID int IDENTITY(1,1) NOT NULL,
	Nom nvarchar(50) NOT NULL,
	Gerant nvarchar(50) NOT NULL,
	Telephone nvarchar(20) NOT NULL,
	AdresseID int,
 CONSTRAINT PK_Agence_AgenceID PRIMARY KEY (AgenceID)
)
GO
CREATE TABLE Agences.Agent(
	AgentID int IDENTITY(1,1) NOT NULL,
	Nom nvarchar(50) NOT NULL,
	Prenom nvarchar(50) NOT NULL,
	TelMaison nvarchar(20) NULL,
	TelCell nvarchar(20) NULL,
	Courriel nvarchar(120) NOT NULL,
	EstActif bit NULL,
	AgenceID int NOT NULL,
 CONSTRAINT PK_Agent_AgentID PRIMARY KEY (AgentID)
)

GO
CREATE TABLE Biens.Bien(
	BienID int IDENTITY(1,1) NOT NULL,
	AnneeConstruction int NULL,
	DateInscription datetime NULL,
	PrixDemande money NOT NULL,
	Statut nchar(10) NOT NULL,
	PrixVendu money NULL,
	DateVente datetime NULL,
	AdresseID int NOT NULL,
	AgentIDInscripteur int NOT NULL,
	AgentIDVendeur int NULL,
 CONSTRAINT PK_Bien_BienID PRIMARY KEY (BienID)
)

GO

CREATE TABLE Biens.HistoriqueBienPrix(
	HistoriqueBienPrixID int IDENTITY(1,1) NOT NULL,
	BienID int NOT NULL,
	DatePrixDemande datetime NULL,
	PrixDemande money NOT NULL,
 CONSTRAINT PK_BienHistoriquePrix_BienIDHistoriquePrix PRIMARY KEY (HistoriqueBienPrixID)
)
GO

CREATE TABLE Biens.ArchivesBienVendu(
	ArchivesBienVenduID int IDENTITY(1,1) NOT NULL,
	BienID int NOT NULL,
	AgentIDInscripteur int NOT NULL,
	AnneeConstruction int NULL,
	DateInscription datetime NULL,
	PrixDemande money NOT NULL,
	Statut nchar(10) NOT NULL,
	PrixVendu money NULL,
	DateVente datetime NULL,
	AdresseID int NULL,
	AgentIDVendeur int NULL,
	DateMAJ datetime NOT NULL,
    CONSTRAINT PK_BienVendu PRIMARY KEY (ArchivesBienVenduID)
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Proprietaires.Proprietaire(
	ProprietaireID int IDENTITY(1,1) NOT NULL,
	Nom nvarchar(50) NOT NULL,
	Prenom nvarchar(50) NOT NULL,
	TelMaison nvarchar(20) NULL,
	TelCell nvarchar(100) NOT NULL,
    CONSTRAINT PK_Proprietaire_ProprietaireID PRIMARY KEY (ProprietaireID)
 )
GO

CREATE TABLE Proprietaires.ProprietaireBien(
	ProprietaireID int NOT NULL,
	BienID int NOT NULL,
 CONSTRAINT PK_PropriétaireBien PRIMARY KEY (ProprietaireID,BienID)
)
GO

GO
CREATE TABLE Biens.Visite(
	VisiteID int IDENTITY(1,1) NOT NULL,
	DateVisite datetime NULL,
	BienID int NULL,
	AgentIDVisiteur int NULL,
	CommentaireAgent varchar(252) NULL,
	ReactionClient varchar(255) NULL,
	CONSTRAINT PK_Visite_VisiteID PRIMARY KEY (VisiteID)
)
GO


GO
ALTER TABLE Agences.Agent ADD  DEFAULT ((1)) FOR EstActif
GO
ALTER TABLE Biens.Visite ADD  DEFAULT (getdate()) FOR DateVisite
GO
ALTER TABLE Biens.Visite ADD  DEFAULT (NULL) FOR ReactionClient
GO
ALTER TABLE Agences.Agent  WITH CHECK ADD  CONSTRAINT FK_Agent_Agence FOREIGN KEY(AgenceID)
REFERENCES Agences.Agence (AgenceID)
ON UPDATE CASCADE
GO
ALTER TABLE Agences.Agent CHECK CONSTRAINT FK_Agent_Agence
GO
ALTER TABLE Biens.Bien  WITH CHECK ADD  CONSTRAINT FK_Bien_AgentInscripteur FOREIGN KEY(AgentIDInscripteur)
REFERENCES Agences.Agent (AgentID)
GO
ALTER TABLE Biens.Bien CHECK CONSTRAINT FK_Bien_AgentInscripteur
GO
ALTER TABLE Biens.Bien  WITH CHECK ADD  CONSTRAINT FK_Bien_Agentvendeur FOREIGN KEY(AgentIDVendeur)
REFERENCES Agences.Agent (AgentID)
GO
ALTER TABLE Biens.Bien CHECK CONSTRAINT FK_Bien_Agentvendeur
GO

ALTER TABLE Proprietaires.ProprietaireBien  WITH CHECK ADD  CONSTRAINT FK_PropriétaireBien_Bien FOREIGN KEY(BienID)
REFERENCES Biens.Bien (BienID)
ON DELETE CASCADE
GO
ALTER TABLE Proprietaires.ProprietaireBien CHECK CONSTRAINT FK_PropriétaireBien_Bien
GO
ALTER TABLE Proprietaires.ProprietaireBien  WITH CHECK ADD  CONSTRAINT FK_PropriétaireBien_Propriétaire FOREIGN KEY(ProprietaireID)
REFERENCES Proprietaires.Proprietaire (ProprietaireID)
ON DELETE CASCADE
GO
ALTER TABLE Proprietaires.ProprietaireBien CHECK CONSTRAINT FK_PropriétaireBien_Propriétaire
GO
ALTER TABLE Biens.Visite  WITH CHECK ADD  CONSTRAINT FK_AgentID FOREIGN KEY(AgentIDVisiteur)
REFERENCES Agences.Agent (AgentID)
GO
ALTER TABLE Biens.Visite CHECK CONSTRAINT FK_AgentID
GO
ALTER TABLE Biens.Visite  WITH CHECK ADD  CONSTRAINT FK_BienID FOREIGN KEY(BienID)
REFERENCES Biens.Bien (BienID)
ON DELETE CASCADE
GO
ALTER TABLE Biens.Visite CHECK CONSTRAINT FK_BienID
GO
ALTER TABLE Biens.Bien  WITH CHECK ADD  CONSTRAINT CK_Bien CHECK  ((PrixDemande>(0)))
GO
ALTER TABLE Biens.Bien CHECK CONSTRAINT CK_Bien
GO



