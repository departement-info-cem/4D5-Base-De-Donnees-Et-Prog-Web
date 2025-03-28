USE Master;
GO

CREATE DATABASE [SeriesTV];
GO

USE [SeriesTV];
GO

--▀▀▀▀▀▀▀▀▀
-- Schémas 
--▄▄▄▄▄▄▄▄▄

CREATE SCHEMA Series;
GO

CREATE SCHEMA Acteurs;
GO

--▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
--  Tables et PK
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄

CREATE TABLE Series.Serie(
	SerieID int IDENTITY(1,1),
	Nom nvarchar(100) NOT NULL,
	AnneeDebut int NOT NULL,
	AnneeFin int NULL,
	CONSTRAINT PK_Serie_SerieID PRIMARY KEY (SerieID)
);

CREATE TABLE Acteurs.Acteur(
	ActeurID int IDENTITY(1,1),
	Prenom nvarchar(50) NOT NULL,
	Nom nvarchar(50) NOT NULL,
	DateNaissance Date NOT NULL,
	DateDeces Date NULL,
	CONSTRAINT PK_Acteur_ActeurID PRIMARY KEY (ActeurID)
);

CREATE TABLE Series.ActeurSerie(
	ActeurSerieID int IDENTITY(1,1),
	ActeurID int NOT NULL,
	SerieID int NOT NULL,
	CONSTRAINT PK_ActeurSerie_ActeurSerieID PRIMARY KEY (ActeurSerieID)
);

CREATE TABLE Series.Saison(
	SaisonID int IDENTITY(1,1),
	Num int NOT NULL,
	NbEpisodes int NULL,
	SerieID int NOT NULL,
	CONSTRAINT PK_Saison_SaisonID PRIMARY KEY (SaisonID)
);

CREATE TABLE Series.AuditActeurSerie(
	AuditActeurSerieID int IDENTITY(1,1),
	Action char(6) NOT NULL,
	DateAction datetime NOT NULL,
	ActeurID int NOT NULL,
	SerieID int NOT NULL,
	CONSTRAINT PK_AuditActeurSerie_AuditActeurSerieID PRIMARY KEY (AuditActeurSerieID)
);
GO

--▀▀▀▀▀▀▀▀▀
--   FK
--▄▄▄▄▄▄▄▄▄

ALTER TABLE Series.Saison ADD CONSTRAINT FK_Saison_SerieID
FOREIGN KEY (SerieID) REFERENCES Series.Serie(SerieID)
ON DELETE CASCADE

GO

ALTER TABLE Series.ActeurSerie ADD CONSTRAINT FK_ActeurSerie_SerieID
FOREIGN KEY (SerieID) REFERENCES Series.Serie(SerieID)
ON DELETE CASCADE

GO

ALTER TABLE Series.ActeurSerie ADD CONSTRAINT FK_ActeurSerie_ActeurID
FOREIGN KEY (ActeurID) REFERENCES Acteurs.Acteur(ActeurID)
ON DELETE CASCADE

GO

ALTER TABLE Series.AuditActeurSerie ADD CONSTRAINT FK_AuditActeurSerie_SerieID
FOREIGN KEY (SerieID) REFERENCES Series.Serie(SerieID)
ON DELETE CASCADE

GO

ALTER TABLE Series.AuditActeurSerie ADD CONSTRAINT FK_AuditActeurSerie_ActeurID
FOREIGN KEY (ActeurID) REFERENCES Acteurs.Acteur(ActeurID)
ON DELETE CASCADE

GO

--▀▀▀▀▀▀▀▀▀▀▀▀
-- DF, CK, UC 
--▄▄▄▄▄▄▄▄▄▄▄▄

ALTER TABLE Series.Serie ADD CONSTRAINT CK_Serie_Annees
CHECK (AnneeDebut >= 1900 AND (AnneeFin IS NULL OR (AnneeDebut <= AnneeFin AND AnneeFin >= 1900)));
GO

ALTER TABLE Series.Saison ADD CONSTRAINT CK_Saison_NbEpisodes
CHECK (NbEpisodes >= 0);
GO

ALTER TABLE Series.Saison ADD CONSTRAINT CK_Saison_Num
CHECK (Num >= 0);
GO

ALTER TABLE Series.Saison ADD CONSTRAINT UC_Saison_Num
UNIQUE (Num, SerieID);
GO

ALTER TABLE Series.ActeurSerie ADD CONSTRAINT UC_ActeurSerie_ActeurEtSerie
UNIQUE (ActeurID, SerieID);
GO

ALTER TABLE Acteurs.Acteur ADD CONSTRAINT CK_Acteur_Dates
CHECK (YEAR(DateNaissance) >= 1800 AND (DateDeces IS NULL OR (DateNaissance <= DateDeces AND YEAR(DateDeces) >= 1800)));
GO

--▀▀▀▀▀▀▀▀▀
--  Views
--▄▄▄▄▄▄▄▄▄

CREATE VIEW Series.VW_DetailsSerie AS

WITH
Q1 AS (
	SELECT S.SerieID, COUNT(A.ActeurID) AS NbActeurs FROM Series.Serie S 
	INNER JOIN Series.ActeurSerie A 
	ON S.SerieID = A.SerieID
	GROUP BY S.SerieID
	)
SELECT S.SerieID, S.Nom, S.AnneeDebut, S.AnneeFin,
Q1.NbActeurs,
SUM(SA.NbEpisodes) AS NbEpisodesTotal, 
COUNT(SA.SaisonID) AS NbSaisons
FROM Series.Serie AS S
INNER JOIN Series.Saison AS SA 
ON S.SerieID = SA.SerieID
INNER JOIN Q1
ON Q1.SerieID = S.SerieID
GROUP BY S.SerieID, S.Nom, S.AnneeDebut, S.AnneeFin, Q1.NbActeurs

GO

--▀▀▀▀▀▀▀▀▀▀▀▀▀
--  Procedures
--▄▄▄▄▄▄▄▄▄▄▄▄▄

CREATE PROCEDURE Series.USP_ChercherSeriesParActeur
	@Prenom nvarchar(50),
	@Nom nvarchar(50)
AS
	SELECT V.SerieID, V.Nom, V.AnneeDebut, V.AnneeFin, V.NbActeurs, V.NbEpisodesTotal, V.NbSaisons 
	FROM VW_DetailsSerie V
	INNER JOIN Series.ActeurSerie SA ON V.SerieID = SA.SerieID
	INNER JOIN Acteurs.Acteur AA ON SA.ActeurID = AA.ActeurID
	WHERE AA.Prenom = @Prenom AND AA.Nom = @Nom;
GO

CREATE PROCEDURE Acteurs.USP_ProcedureSansRetour
AS
	INSERT INTO Acteurs.Acteur (Prenom, Nom, DateNaissance, DateDeces)
	VALUES
	('Sarah', 'Paulson', '1974-12-17', NULL)
GO

--▀▀▀▀▀▀▀▀▀▀▀▀
--  Triggers
--▄▄▄▄▄▄▄▄▄▄▄▄

CREATE TRIGGER Series.trg_idActeurSerie
ON Series.ActeurSerie
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS (SELECT * FROM inserted) -- INSERT
	BEGIN
		INSERT INTO Series.AuditActeurSerie (Action, DateAction, ActeurID, SerieID)
		SELECT 'INSERT', GETDATE(), ActeurID, SerieID FROM inserted;
	END
	ELSE -- DELETE
	BEGIN
		INSERT INTO Series.AuditActeurSerie (Action, DateAction, ActeurID, SerieID)
		SELECT 'DELETE', GETDATE(), ActeurID, SerieID FROM deleted;
	END
END
GO

--▀▀▀▀▀▀▀▀▀▀▀▀▀▀
--  Insertions
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄

INSERT INTO Series.Serie (Nom, AnneeDebut, AnneeFin)
VALUES
('House Of The Dragon', 2022, NULL), -- 1
('The Crown', 2016, NULL), -- 2
('White Lotus', 2021, NULL), -- 3
('The Witcher', 2019, NULL), -- 4
('The Tudors', 2007, 2010); -- 5

INSERT INTO Series.Saison (Num, NbEpisodes, SerieID)
VALUES
(1, 10, 1),
(1, 10, 2),
(2, 10, 2),
(3, 10, 2),
(4, 10, 2),
(5, 10, 2),
(1, 6, 3),
(2, 7, 3),
(1, 8, 4),
(2, 8, 4),
(1, 10, 5),
(2, 10, 5),
(3, 8, 5),
(4, 10, 5);

INSERT INTO Acteurs.Acteur (Prenom, Nom, DateNaissance, DateDeces)
VALUES
('Emma', 'D''Arcy', '1992-06-27', NULL), -- 1
('Matt', 'Smith', '1982-10-28', NULL), -- 2
('Olivia', 'Cooke', '1993-12-27', NULL), -- 3
('Claire', 'Foy', '1984-04-16', NULL), -- 4
('Imelda', 'Staunton', '1956-01-09', NULL), -- 5
('Jennifer', 'Coolidge', '1961-08-28', NULL), -- 6
('Aubrey', 'Plaza', '1984-06-26', NULL), -- 7
('Alexandra', 'Daddario', '1986-03-16', NULL), -- 8
('Henry', 'Cavill', '1983-05-05', NULL), -- 9
('Liam', 'Hemsworth', '1990-01-13', NULL), -- 10
('Natalie', 'Dormer', '1982-02-11', NULL), -- 11
('Jonathan', 'Rhys-Meyers', '1977-07-27', NULL); -- 12

INSERT INTO Series.ActeurSerie (ActeurID, SerieID)
VALUES
(1, 1),
(2, 1),
(3, 1),
(2, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(9, 5),
(11, 5),
(12, 5);





