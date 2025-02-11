CREATE DATABASE [4D5_TestDatabase]
GO
USE [4D5_TestDatabase]
GO
CREATE TABLE Film
(
	FilmID int IDENTITY(1,1) NOT NULL,
	Titre nvarchar(100) NOT NULL,
	Langue nvarchar(25) NOT NULL,
	Categorie nvarchar(25) NOT NULL,
	CodeCensure nvarchar(10) NOT NULL,
	Maison nvarchar(50) NOT NULL,
	Collection nvarchar(50) NULL,
	CodeCouleur nvarchar(50) NOT NULL,
	NbCopies int NOT NULL,
	CONSTRAINT PK_Film_FilmID PRIMARY KEY (FilmID)
)
