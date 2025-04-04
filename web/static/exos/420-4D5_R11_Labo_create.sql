USE master
GO

CREATE DATABASE [4D5_R11_ThesEtTisanes]
 GO
USE [4D5_R11_ThesEtTisanes]
GO

CREATE SCHEMA Effets
GO
CREATE SCHEMA Fournisseurs
GO
CREATE SCHEMA Ingredients
GO
CREATE SCHEMA Recettes
GO
CREATE SCHEMA Clients
GO


CREATE TABLE Fournisseurs.Contact(
	ContactID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NULL,
	Prenom varchar(50) NULL,
	TelCell varchar(20) NULL,
	Courriel varchar(50) NULL,
	FournisseurID int NULL,
 CONSTRAINT PK_Contact_ContactID PRIMARY KEY (ContactID )
)
GO

CREATE TABLE Fournisseurs.Fournisseur(
	FournisseurID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
	SiteWeb varchar(50) NULL,
	Telephone varchar(20) NULL,
	DelaiLivraison varchar(20) NULL,
	EntentePaiement varchar(30) NULL,
    CONSTRAINT PK_Fournisseur_FournisseurID PRIMARY KEY (FournisseurID)
)
GO

CREATE TABLE Fournisseurs.FournisseurIngredient(
	FournisseurIngredientID int IDENTITY(1,1) NOT NULL,
	FournisseurID int NOT NULL,
	IngredientID int NOT NULL,
	PrixFournisseur decimal(6, 2) NULL,
	FormatIngredient varchar(30) NULL,
	EstDisponible bit NULL,
    CONSTRAINT PK_FournisseurIngredient PRIMARY KEY (FournisseurIngredientID)
 )
GO

CREATE TABLE Ingredients.Ingredient(
	IngredientID int IDENTITY(1,1) NOT NULL,
	NomCommun varchar(50) NOT NULL,
	NomLatin varchar(50) NOT NULL,
	IndicationBienfaits varchar(255) NULL,
	ContreIndications varchar(255) NULL,
	QtyEnInventaire int NULL,
	QtyMinDeRecommande int NULL,
 CONSTRAINT PK_Ingredient_IngredientID PRIMARY KEY (IngredientID)
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Recettes.IngredientRecette(
	IngredientRecetteID int IDENTITY(1,1) NOT NULL,
	RecetteID int NOT NULL,
	IngredientID int NOT NULL,
	Quantite varchar(50) NOT NULL,
 CONSTRAINT PK_IngredientRecetteID PRIMARY KEY (IngredientRecetteID)
 )

GO

CREATE TABLE Recettes.Recette(
	RecetteID int IDENTITY(1,1) NOT NULL,
	Nom nvarchar(100) NOT NULL,
	NomMoinsVendeur nvarchar(100) NULL,
	TypeRecetteID int NULL,
	Instruction nvarchar(max) NULL,
	SpeachDeVente nvarchar(max) NULL,
 CONSTRAINT PK_Recette_RecetteID PRIMARY KEY (RecetteID)
)

CREATE TABLE Recettes.TypeRecette(
	TypeRecetteID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
 CONSTRAINT PK_TypeRecette PRIMARY KEY (TypeRecetteID)
)
GO


ALTER TABLE Fournisseurs.FournisseurIngredient ADD  DEFAULT ((1)) FOR EstDisponible
GO

ALTER TABLE Fournisseurs.Contact  WITH CHECK ADD  CONSTRAINT FK_Contact_Fournisseur FOREIGN KEY(FournisseurID)
REFERENCES Fournisseurs.Fournisseur (FournisseurID)
GO
ALTER TABLE Fournisseurs.Contact CHECK CONSTRAINT FK_Contact_Fournisseur
GO
ALTER TABLE Fournisseurs.FournisseurIngredient  WITH CHECK ADD  CONSTRAINT FK_FournisseurIngredient_Fournisseur FOREIGN KEY(FournisseurID)
REFERENCES Fournisseurs.Fournisseur (FournisseurID)
GO
ALTER TABLE Fournisseurs.FournisseurIngredient CHECK CONSTRAINT FK_FournisseurIngredient_Fournisseur
GO
ALTER TABLE Fournisseurs.FournisseurIngredient  WITH CHECK ADD  CONSTRAINT FK_FournisseurIngredient_Ingredient FOREIGN KEY(IngredientID)
REFERENCES Ingredients.Ingredient (IngredientID)
GO
ALTER TABLE Fournisseurs.FournisseurIngredient CHECK CONSTRAINT FK_FournisseurIngredient_Ingredient
GO
ALTER TABLE Recettes.IngredientRecette  WITH CHECK ADD  CONSTRAINT FK_IngredientRecette_Ingredient FOREIGN KEY(IngredientID)
REFERENCES Ingredients.Ingredient (IngredientID)
GO
ALTER TABLE Recettes.IngredientRecette CHECK CONSTRAINT FK_IngredientRecette_Ingredient
GO
ALTER TABLE Recettes.IngredientRecette  WITH CHECK ADD  CONSTRAINT FK_IngredientRecette_Recette FOREIGN KEY(RecetteID)
REFERENCES Recettes.Recette (RecetteID)
GO
ALTER TABLE Recettes.IngredientRecette CHECK CONSTRAINT FK_IngredientRecette_Recette
GO
ALTER TABLE Recettes.Recette  WITH CHECK ADD  CONSTRAINT FK_Recette_TypeRecette FOREIGN KEY(TypeRecetteID)
REFERENCES Recettes.TypeRecette (TypeRecetteID)
GO
ALTER TABLE Recettes.Recette CHECK CONSTRAINT FK_Recette_TypeRecette
GO

