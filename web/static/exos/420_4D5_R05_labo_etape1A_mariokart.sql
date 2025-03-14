USE [master]
GO
/****** Object:  Database [BD5_Mario_Kart]    Script Date: 2023-09-06 10:24:23 ******/
CREATE DATABASE [BD5_Mario_Kart]
 
GO
USE [BD5_Mario_Kart]
GO
/****** Object:  Schema [Courses]    Script Date: 2023-09-06 10:24:24 ******/
CREATE SCHEMA [Courses]
GO
/****** Object:  Schema [Joueurs]    Script Date: 2023-09-06 10:24:24 ******/
CREATE SCHEMA [Joueurs]
GO
/****** Object:  Table [Courses].[Course]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Courses].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](25) NOT NULL,
	[DateDebut] [date] NULL,
 CONSTRAINT [PK_Course_CourseID] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Course_Nom] UNIQUE NONCLUSTERED 
(
	[Nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Courses].[Kart]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Courses].[Kart](
	[KartID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](20) NOT NULL,
	[Vitesse] [numeric](3, 2) NOT NULL,
	[Acceleration] [numeric](3, 2) NOT NULL,
	[Poids] [numeric](3, 2) NOT NULL,
	[TenueDeRoute] [numeric](3, 2) NOT NULL,
 CONSTRAINT [PK_Kart_KartID] PRIMARY KEY CLUSTERED 
(
	[KartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Kart_Nom] UNIQUE NONCLUSTERED 
(
	[Nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Courses].[Participation]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Courses].[Participation](
	[ParticipationID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NOT NULL,
	[Chrono] [int] NOT NULL,
	[DatePartie] [datetime] NOT NULL,
	[CourseID] [int] NOT NULL,
	[ChoixID] [int] NULL,
 CONSTRAINT [PK_ParticipationID] PRIMARY KEY CLUSTERED 
(
	[ParticipationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Courses].[Personnage]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Courses].[Personnage](
	[PersonnageID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](15) NOT NULL,
	[Poids] [varchar](10) NOT NULL,
	[EstDeverouille] [bit] NULL,
 CONSTRAINT [PK_Personnage_PersonnageID] PRIMARY KEY CLUSTERED 
(
	[PersonnageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Personnage_Nom] UNIQUE NONCLUSTERED 
(
	[Nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Joueurs].[Choix]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Joueurs].[Choix](
	[ChoixID] [int] IDENTITY(1,1) NOT NULL,
	[JoueurID] [int] NULL,
	[PersonnageID] [int] NULL,
	[KartID] [int] NULL,
 CONSTRAINT [PK_Choix_ChoixID] PRIMARY KEY CLUSTERED 
(
	[ChoixID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Joueurs].[Joueur]    Script Date: 2023-09-06 10:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Joueurs].[Joueur](
	[JoueurID] [int] IDENTITY(1,1) NOT NULL,
	[Pseudo] [varchar](25) NULL,
 CONSTRAINT [PK_Joueur_JoueurID] PRIMARY KEY CLUSTERED 
(
	[JoueurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Joueur_Pseudo] UNIQUE NONCLUSTERED 
(
	[Pseudo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Courses].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_ChoixID] FOREIGN KEY([ChoixID])
REFERENCES [Joueurs].[Choix] ([ChoixID])
GO
ALTER TABLE [Courses].[Participation] CHECK CONSTRAINT [FK_Participation_ChoixID]
GO
ALTER TABLE [Courses].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_CourseID] FOREIGN KEY([CourseID])
REFERENCES [Courses].[Course] ([CourseID])
GO
ALTER TABLE [Courses].[Participation] CHECK CONSTRAINT [FK_Participation_CourseID]
GO
ALTER TABLE [Courses].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_JoueurID] FOREIGN KEY([ChoixID])
REFERENCES [Joueurs].[Choix] ([ChoixID])
GO
ALTER TABLE [Courses].[Participation] CHECK CONSTRAINT [FK_Participation_JoueurID]
GO
ALTER TABLE [Joueurs].[Choix]  WITH CHECK ADD  CONSTRAINT [FK_Choix_JoueurID] FOREIGN KEY([JoueurID])
REFERENCES [Joueurs].[Joueur] ([JoueurID])
GO
ALTER TABLE [Joueurs].[Choix] CHECK CONSTRAINT [FK_Choix_JoueurID]
GO
ALTER TABLE [Joueurs].[Choix]  WITH CHECK ADD  CONSTRAINT [FK_Choix_KartID] FOREIGN KEY([KartID])
REFERENCES [Courses].[Kart] ([KartID])
GO
ALTER TABLE [Joueurs].[Choix] CHECK CONSTRAINT [FK_Choix_KartID]
GO
ALTER TABLE [Joueurs].[Choix]  WITH CHECK ADD  CONSTRAINT [FK_Choix_PersonnageID] FOREIGN KEY([PersonnageID])
REFERENCES [Courses].[Personnage] ([PersonnageID])
GO
ALTER TABLE [Joueurs].[Choix] CHECK CONSTRAINT [FK_Choix_PersonnageID]
GO
ALTER TABLE [Courses].[Kart]  WITH CHECK ADD  CONSTRAINT [CHK_Kart_Stats] CHECK  (([Vitesse]>=(0) AND [Vitesse]<=(6) AND ([Acceleration]>=(0) AND [Acceleration]<=(6)) AND ([Poids]>=(0) AND [Poids]<=(6)) AND ([TenueDeRoute]>=(0) AND [TenueDeRoute]<=(6))))
GO
ALTER TABLE [Courses].[Kart] CHECK CONSTRAINT [CHK_Kart_Stats]
GO
ALTER TABLE [Courses].[Participation]  WITH CHECK ADD  CONSTRAINT [CHK_Participation_Chrono] CHECK  (([Chrono]>(0)))
GO
ALTER TABLE [Courses].[Participation] CHECK CONSTRAINT [CHK_Participation_Chrono]
GO
ALTER TABLE [Courses].[Participation]  WITH CHECK ADD  CONSTRAINT [CHK_Participation_Position] CHECK  (([Position]>=(1) AND [Position]<=(12)))
GO
ALTER TABLE [Courses].[Participation] CHECK CONSTRAINT [CHK_Participation_Position]
GO
ALTER TABLE [Courses].[Personnage]  WITH CHECK ADD  CONSTRAINT [CHK_Personnage_Poids] CHECK  (([Poids]='lourd' OR [Poids]='moyen' OR [Poids]='léger'))
GO
ALTER TABLE [Courses].[Personnage] CHECK CONSTRAINT [CHK_Personnage_Poids]
GO
USE [master]
GO
ALTER DATABASE [BD5_Mario_Kart] SET  READ_WRITE 
GO
