
USE [4D5_R10_Labo]
GO

INSERT INTO Agences_Adresse (NoCivique, Rue, Ville, Province, Pays, CodePostal )
VALUES 
 (123 , N'rue de la BoustifailleRue', N'Longueuil',N'QC', N'Canada', N'J6P1Y5'),
 (8764,N'rue du Perche', N'St-Jean-sur-Richelieu',N'QC', N'Canada', N'J6P1Y5'),
 (73, N'Antonine-Maillet', N'GProvince nreenfield Park', N'QC', N'Canada', N'J6P1Y5'),		
 (1212, N'Blainville', N'St-BrPays nvarcuno', N'QC', N'Canada', N'J3V2M4'),					
 (1217, N'Bélanger', N'St-BrunCodePostalo', N'QC', N'Canada', N'J3V2M3'),					
 (2312, N'DeBienville', N'Ste-Julie', N'QC', N'Canada', N'J4M2G4'),				
 (12,	N'Galt', N'St-Basile', N'QC', N'Canada', N'J2K3M3'),						
 (34, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J3V3J3'),					
 (1234, N'DeBoucherville', N'St-Bruno', N'QC', N'Canada', N'J3V5M2'),				
 (1056, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y3'),			
 (927, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y2'),		
 (660, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y1'),				
 (380, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y0'),		
 (1819, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P1A5'),				
 (1305, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P1B5'),				
 (2073, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1C5'),			
 (1283, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1D5'),	
 (115, N'DeBoucherville', N'St-Bruno', N'QC', N'Canada', N'J6P1E2'),				
 (2279, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1E4'),	
 (1202, N'DeBoucherville', N'Greenfield Park', N'QC', N'Canada', N'J6P1E5'),		
 (209, N'Bélanger', N'St-Bruno', N'QC', N'Canada', N'J6P2Y5'),					
 (2007, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P3Y5'),	
 (1784, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P4Y5'),				
 (1557, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y5'),	
 (271, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6P2Y5'),					
 (2192, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6P1B5'),					
 (704, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6B1Y5'),					
 ( 199, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y3'),			
 ( 730, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y2'),	
 ( 863, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y1'),			
 ( 2262, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y0'),	
 ( 928, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P1A5'),				
 ( 1424, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P1B5'),				
 ( 1478, N'Bélanger', N'Greenfield Park', N'QC', N'Canada', N'J6P1C5'),			
 ( 1995, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1D5'),	
 ( 809, N'DeBoucherville', N'St-Bruno', N'QC', N'Canada', N'J6P1E2'),				
 ( 897, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1E4'),	
 ( 1261, N'DeBoucherville', N'Greenfield Park', N'QC', N'Canada', N'J6P1E5'),		
 ( 95, N'Bélanger', N'St-Bruno', N'QC', N'Canada', N'J6P2Y5'),					
 ( 77, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P3Y5'),		
 ( 2179, N'Galt', N'Greenfield Park', N'QC', N'Canada', N'J6P4Y5'),				
 ( 1637, N'Antonine-Maillet', N'Greenfield Park', N'QC', N'Canada', N'J6P1Y5'),	
 ( 556, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6P2Y5'),					
 ( 73, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6P1B5'),					
 ( 76, N'Evergreen', N'St-Bruno', N'QC', N'Canada', N'J6B1Y5')				
GO

INSERT INTO Agences.Agence ( Nom, Gerant, Telephone, AdresseID) VALUES (N'Agence de la Seigneurie', N'Roger Moquin', N'514-555-9860',1)
INSERT INTO Agences.Agence ( Nom, Gerant, Telephone, AdresseID) VALUES (N'Agence de la Vallée', N'Bob Gratton', N'450-555-1244', 2)

GO

INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Beaupré', N'Antoine',  NULL, N'514-555-8440', N'antoine.beaupré@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Desrochers', N'Charles',  N'450-555-9979', N'514-555-1243', N'charles.desrochers@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Tremblay', N'Lucie', N'450-123-1234',  N'514-555-2345', N'lucie.tremblay@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Tremblay', N'Normand', N'450-123-9234', N'514-555-9345', N'normand.tremblay@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Alarie', N'Francis', N'450-234-2345', N'514-555-1234', N'francis.alarie@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (2, N'Charland', N'Sylvain', N'450-345-3456', N'514-555-3456', N'sylvain.charland@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (2, N'Roberge', N'Marie', N'450-456-4567',  N'514-555-4567', N'marie.roberge@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (2, N'Fournier', N'Laurie', N'450-567-5678', N'514-555-5678', N'laurie.fournier@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (2, N'Michaud', N'Patrick', N'450-678-7890',N'514-555-7890', N'patrick.michaue@Ideal.com', 1)
INSERT INTO Agences.Agent ( AgenceID, Nom, Prenom, TelMaison,   TelCell,Courriel,EstActif) VALUES (1, N'Gosselin', N'Josée', N'450-789-8901', N'514-555-8901', N'josee.gosselin@Ideal.com', 1)
GO

INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (1, 2,   1963, CAST(0xFE350B00 AS Date), 242000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (2, 5,   1977, CAST(0x2B380B00 AS Date), 420000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (3, 1,   	1957, CAST(0x2B380B00 AS Date), 540000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (4, 1,   	1986, CAST(0xAE370B00 AS Date), 420000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (5, 1,   	1976, CAST(0x8C360B00 AS Date), 360000.0000, N'Vendu     ', 325000.0000, CAST(0x09380B00 AS Date), 1)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (6, 2,   	1974, CAST(0x6D370B00 AS Date), 460000.0000, N'Vendu     ', 480000.0000, CAST(0xF0370B00 AS Date), 2)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (7, 2,   1966, CAST(0x0C370B00 AS Date), 420000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (8, 2,   	1963, CAST(0x6B370B00 AS Date), 472000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (9, 2,   1957, CAST(0x6B370B00 AS Date), 432000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (10, 2,  1953, CAST(0xDF350B00 AS Date), 382000.0000, N'Vendu     ', 325000.0000, CAST(0xFE350B00 AS Date), 2)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (11, 2,  1983, CAST(0x04380B00 AS Date), 442000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (12, 2,  	1969, CAST(0xFE350B00 AS Date), 432000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (13, 2,  	1987, CAST(0x73370B00 AS Date), 372000.0000, N'Vendu     ', 325000.0000, CAST(0x04380B00 AS Date), 2)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (14, 2,  	1943, CAST(0x7E370B00 AS Date), 442000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (15, 3,  	1963, CAST(0x90340B00 AS Date), 542000.0000, N'Vendu     ', 480000.0000, CAST(0xFE350B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (16, 3,  1973, CAST(0xFE350B00 AS Date), 282000.0000, N'Vendu     ', 325000.0000, CAST(0x6B370B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (17, 3,  	1993, CAST(0x04380B00 AS Date), 542000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (18, 3,  1960, CAST(0x6B370B00 AS Date), 522000.0000, N'Vendu     ', 542000.0000, CAST(0x04380B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (19, 3,  	1983, CAST(0xFE350B00 AS Date), 342000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (20, 3,  	2003, CAST(0xF1360B00 AS Date), 642000.0000, N'Vendu     ', 525000.0000, CAST(0x6B370B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (21, 3,  	1993, CAST(0xFE350B00 AS Date), 442000.0000, N'Vendu     ', 400000.0000, CAST(0x6B370B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (22, 3,  	1953, CAST(0x04380B00 AS Date), 542000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (23, 3,  1963, CAST(0x23380B00 AS Date), 362000.0000, N'Vendu     ', 325000.0000, CAST(0x3F380B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (24, 3,  1963, CAST(0x6B370B00 AS Date), 632000.0000, N'Vendu     ', 632000.0000, CAST(0x01380B00 AS Date), 3)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (25, 3,  1963, CAST(0x01380B00 AS Date), 242000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (27, 10, 	1963, CAST(0x6B370B00 AS Date), 472000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (28, 10, 	1957, CAST(0x6B370B00 AS Date), 432000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (29, 10, 	1953, CAST(0x6B370B00 AS Date), 382000.0000, N'Vendu     ', 325000.0000, CAST(0xE5370B00 AS Date), 10)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (30, 9,  	1983, CAST(0x04380B00 AS Date), 442000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (31, 9,  	1969, CAST(0xFE350B00 AS Date), 432000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (32, 8,  	1987, CAST(0x73370B00 AS Date), 372000.0000, N'Vendu     ', 325000.0000, CAST(0x04380B00 AS Date), 8)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (33, 8,  	1943, CAST(0x7E370B00 AS Date), 442000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (34, 1,  	1963, CAST(0x90340B00 AS Date), 542000.0000, N'Vendu     ', 480000.0000, CAST(0xFE350B00 AS Date), 5)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (35, 5,  1973, CAST(0xFE350B00 AS Date), 282000.0000, N'Vendu     ', 325000.0000, CAST(0x6B370B00 AS Date), 5)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (36, 1,  	1993, CAST(0x04380B00 AS Date), 542000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (37, 5,  1960, CAST(0x6B370B00 AS Date), 522000.0000, N'Vendu     ', 542000.0000, CAST(0x04380B00 AS Date), 5)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (38, 6,  	1983, CAST(0xFE350B00 AS Date), 342000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (39, 6,  2003, CAST(0xF1360B00 AS Date), 642000.0000, N'Vendu     ', 525000.0000, CAST(0x6B370B00 AS Date), 6)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (40, 6,  	1993, CAST(0xFE350B00 AS Date), 442000.0000, N'Vendu     ', 400000.0000, CAST(0x6B370B00 AS Date), 6)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (41, 6,  	1953, CAST(0x04380B00 AS Date), 542000.0000, N'Affiché   ', NULL, NULL, NULL)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (42, 7,  1963, CAST(0x23380B00 AS Date), 362000.0000, N'Vendu     ', 325000.0000, CAST(0x3F380B00 AS Date), 7)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (43, 7,  	1963, CAST(0x6B370B00 AS Date), 632000.0000, N'Vendu     ', 632000.0000, CAST(0x01380B00 AS Date), 7)
INSERT INTO Biens.Bien (AdresseID, AgentIDInscripteur, AnneeConstruction, DateInscription, PrixDemande, Statut, PrixVendu, DateVente, AgentIDVendeur) VALUES (44, 7,  	1963, CAST(0x01380B00 AS Date), 242000.0000, N'Affiché   ', NULL, NULL, NULL)


GO



INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x00009E5E00000000 AS DateTime), 2, 2, N'Très propre', N'wow')
INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x00009FEB00000000 AS DateTime), 2, 1, N'Il y a des fourmis', NULL)
INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x0000A17600000000 AS DateTime), 3, 1, N'ok', NULL)
INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x0000913400000000 AS DateTime), 3, 1, N'Toiture endommagé', N'bof')
INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x0000997E00000000 AS DateTime), 2, 1, N'Plancher sale', N'Je n''aime pas la couleur des briques de la façade.')
INSERT INTO Biens.Visite ( DateVisite, BienID, AgentIDVisiteur, CommentaireAgent, ReactionClient) VALUES ( CAST(0x0000960C00000000 AS DateTime), 2, 1, N'grafiti', NULL)

UPDATE Biens.Bien
SET AgentIDVendeur = AgentIDInscripteur

GO
-- 2024 est +9
-- Changer à chaque année

UPDATE Biens.Bien
  SET DateInscription = DATEADD(YEAR, 10, DateInscription), PrixVendu = PrixVendu + 500000
GO
UPDATE Biens.Bien
  SET DateVente = DATEADD(YEAR, 10, DateVente)
  WHERE DateVente IS NOT NULL
GO
UPDATE Biens.Visite
  SET DateVisite = DATEADD(YEAR, 10, DateVisite)