-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
--      VOTRE NOM, VOTRE PRÉNOM
--
--      R08 Les vues, les fonctions et les procédures stockées
--
--		Notions: 
-- 
--      Une vue:
--				GO
--				CREATE VIEW dbo.vw_NomDeLaVue
--				AS
--				-- requête ici	   
--				GO
--		
--      Une fonction:
--				GO
--				CREATE FUNCTION dbo.udf_NomDeLaFonction
--				(@param1 type, [@param2 type]...)
--				RETURNS typeDeRetour
--				AS
--              BEGIN
--	                DECLARE @Resultat typeDeRetour;
--                  SELECT @Resultat = .......
--                  RETURN @Resultat;
--              END
--              GO
--
--
--     Les vues sont utilisées comme une table
--     Les fonctions sont utilisées comme un champ, dans des SELECT, WHERE, HAVING, UPDATE SET =....
--
--      Une procédure Stockée:
--				GO
--				CREATE PROCEDURE dbo.usp_NomDeLaProcedure
--				(@param1 type, [@param2 type]...)
--				AS
--              BEGIN
--	                ...
--              END
--              GO
--

--     Les procédures sont exécutées avec EXECUTE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


--  Q0)  Utilisation de la base de données [4D5_R08_BDCommerciale]
	

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
--  Q1)
-- Faites une vue générale qui servira à rechercher des Commandes par Nom du Client ou Nom du Représentant sans se préocupper de l'id de ces derniers.
-- Mais mettez quand même les id des tables utilisées, au cas où on en aurait besoin plus tard.




--VOTRE RÉPONSE:
-- Partie 1 : Création de la vue générale










-- Partie 2: Utilisation de la vue pour obtenir le résultat attendu pour le représentant dont le nom de famille est Durant
-- Utilisez la vue

	-- Résultat attendu:

--Nom Client              Prenom Client         DateCommande
------------------------- --------------------- -----------------------
--Boucher                 Pierre                2024-01-31 13:41:31.337
--Boucher                 Pierre                2024-02-01 05:57:46.803
--Boucher                 Pierre                2024-03-31 13:41:31.337
--Boucher                 Pierre                2024-04-01 05:57:46.803

--(4 lignes affectées)
--VOTRE RÉPONSE:




-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------- 


	-- Q2 A) Création d'une fonction pour compter le NOMBRE d'articles DIFFÉRENTS vendus pour une catégorie id donnée
	-- VOTRE RÉPONSE:










	-- Q2 B) Faites une requête pour voir le NOMBRE d'articles DIFFÉRENTS vendus pour la catégorie 1 en utilisant la fonction que vous venez de créer.
	-- Résultat attendu:

			--Nbre  d'articles différents vendus pour la categorie 1, Électroménagers
			-------------------------------------------------------------------------
			--2

			--(1 ligne affectée)
	
	--  VOTRE RÉPONSE: 








	--Q2 C) Utilisez la fonction pour voir le nb d'articles différents vendus pour chacune des categories

			--Resultat attendu:
			--CategorieID Categorie                                          Nbre  d'articles différents vendus pour la categorie 
			------------- -------------------------------------------------- -----------------------------------------------------
			--1           Électroménager                                     2
			--2           Appareils de Cuisine                               1
			--3           Sport                                              4
			--4           Saisonnier Été                                     0
			--5           Saisonnier Hiver                                   0
			--6           Entretien Auto                                     0
			--7           Entretien Intérieur Maison                         0
			--8           Entretien Extérieur Maison                         0
			--9           Déjeuners et brunchs                               0

			--(9 lignes affectées)


	-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
-- Q3 A) Création d'une fonction pour obtenir le total de la quantité d'articles commandés pour une catégorie donnée

	--  VOTRE RÉPONSE: 

	














	-- Q3 B) Faites une requête pour voir le total de la quantité des articles commandés  pour la catégorie 1 en utilisant la fonction que vous venez de créer.
	-- Résultat attendu:

				--Total d'articles commandés pour la categorie 1, Électroménagers
				-------------------------------------------------------------------
				--6

				--(1 ligne affectée)
	
	--  VOTRE RÉPONSE: 

	









	-- Q3 C) Faites une requête pour voir ces infos pour chacune des categories
			--Résultat attendu:
			--CategorieID Categorie                                          total d'articles commandés pour la categorie 
			------------- -------------------------------------------------- ---------------------------------------------
			--1           Électroménager                                     6
			--2           Appareils de Cuisine                               26
			--3           Sport                                              24
			--4           Saisonnier Été                                     0
			--5           Saisonnier Hiver                                   0
			--6           Entretien Auto                                     0
			--7           Entretien Intérieur Maison                         0
			--8           Entretien Extérieur Maison                         0
			--9           Déjeuners et brunchs                               0

			--(9 lignes affectées)
	-- VOTRE RÉPONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
	-- Q4 A) Faites une fonction pour calculer le total (type de retour : money) d'une commande, pour une commande id donnée en paramètre
	--  VOTRE RÉPONSE: 













	-- Q4 B) Faites un ALTER TABLE pour ajouter le champ TotalCommande, de type money, NULL dans la table Commande
	--  VOTRE RÉPONSE: 

	








	-- Q4 C) Utilisez la fonction que vous venez de faire pour afficher la valeur totale des commandes pour la commande ID 3
	
	-- Résultat attendu:

			--Total de la commande no 3
			---------------------------
			--1957,29

			--(1 ligne affectée)

	-- VOTRE RÉPONSE:

	








	--Q4 D) Utilisez la fonction que vous venez de faire pour initialiser la valeur totale  pour chaque achat
	-- VOTRE RÉPONSE

	









	--Q4 E) Vérifiez le contenu de la table Commandes.Commande

	-- Résultat attendu:


			--CommandeID  NumCommande DateCommande            ClientID    TotalCommande
			------------- ----------- ----------------------- ----------- ---------------------
			--1           12489       2023-09-02				 5           0,00
			--2           12500       2023-09-28				 1           0,00
			--3           12504       2023-12-01				 5           1957,29
			--4           12510       2024-01-31				 11          125,70
			--5           12520       2024-02-01				 11          801,97
			--6           12590       2024-03-31				 11          1911,39
			--7           12580       2024-04-01				 11          973,57

			--(7 lignes affectées)

	-- VOTRE RÉPONSE

	







  --Q5 A) Faites une fonction qui va retourner le nom et le prénom d'un client pour le clientID passé en paramètre












	
  -- Q5 B) Utilisez la fonction que vous venez de faire pour retourner les noms et prénoms des clients

			-- Résultat attendu:
			--  Client
			------------------------------------------------------------------------------------------------------
			--Allard, Martine
			--Beaulieu, Alicia
			--Bédard, Bertrand
			--Boucher, Camille
			--Boucher, Pierre
			--Caver, Christine
			--Chavant, Denise
			--Clovis, Eugène
			--Côté, Jacques
			--Ernest, Andrée
			--Moulineau, Paul

			--(11 lignes affectées)

-- VOTRE RÉPONSE:

  








   -- Q6 A)  On va vouloir se faire une fonction pour calculer l'âge de chacun de nos représentants

  --Bon il manque un champ DateNaissance dans cette table. Et des données. 

  -- Comme il n'y a que 3 représentants, nous allons insérer 3 dates de naissance, dont la dernière, pour le représentantID 3, devra être la vôtre.
  --  Moi, je vais insérer les dates suivantes mais vous n'aurez pas les 3 mêmes évidemment  12 janvier 1991, 12 janvier 1992 et 28 sept 1960
  
  
 








    --  Création de la fonction en utilisant DATEDIFF avec DAY
	-- NOTE: Vous pouvez mettre cette fonction dans le schéma dbo car c'est une fonction générique qui pourrait être utilisée
	--       pour calculer l'âge des clients, des employés, etc...
	
  
--VOTRE RÉPONSE:









   -- Q6 B)  Utilisez la fonction pour voir les représentants avec leur âge
	    	--Resultat Attendu:
			--  RepresentantID DateNaissance           Age
			---------------- ----------------------- -----------
			--1              1992-01-12              33
			--2              1991-01-12              34
			--3              1960-09-28              64

			--(3 lignes affectées)







-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

--
-- Q7) Faites une procédure qui n'aura pas de paramètre mais qui changera les données dans 2 tables


--     Partie 1:  Commencez par faire une requête pour voir les ID des clients qui n'ont fait aucune commande 

-- Résultat attendu pour cette requête:
			--ClientID
			-------------
			--2
			--3
			--4
			--6
			--7
			--8
			--9
			--10

			--(8 lignes affectées)


--VOTRE RÉPONSE:







--     Partie 2:  Faites une procédure qui insérera dans la table Clients.ClientSansCommande les données des clients qui n'ont fait aucune commande
--                Ensuite, votre procédure supprimera de la table Client ces clients qui n'ont fait aucune commande

--VOTRE RÉPONSE:










--     Partie 3:  
			-- 1. Exécutez la ou les requêtes nécessaires pour voir les enregistrements de la table Client et de la table ClientSansCommande qui seraient affectés par la procédure
			-- 2. Exécutez la procédure
			-- 3. Exécutez à nouveau la ou les requêtes nécessaires pour voir les enregistrements de la table Client et de la table ClientSansCommande qui ont été affectés par la procédure

			--Résultat attendu:

			--ClientID    NumClient Nom           Prenom     NoCivique NoApp Rue                        Ville                 Province   CodePostal           Solde                 LimiteCredit          RepresentantID
			------------- --------- ------------- ---------- --------- ----- -------------------------- --------------------- ---------- -------------------- --------------------- --------------------- --------------
			--2           256       Allard        Martine    996       NULL  St-Michel                  Montréal-Nord         Qc         H1H 5G7              21,50                 1500,00               2
			--3           311       Boucher       Camille    540       NULL  Bd des Galeries            Québec                Qc         G2K 1N4              825,75                1000,00               3
			--4           315       Beaulieu      Alicia     220       NULL  Bd Le Corbusier            Laval                 Qc         H7S 2C9              770,75                750,00                1
			--6           412       Caver         Christine  120       NULL  Av. de Germain-des-Prés    Québec                Qc         G1V 3M7              1817,50               2000,00               3
			--7           522       Chavant       Denise     444       NULL  Bd R. Lévesque Ouest       Montréal              Qc         H2Z 1Z6              98,75                 1500,00               2
			--8           567       Clovis        Eugène     91        NULL  rue Champlain              Dieppe                N.-B.      E1A 1N4              402,40                750,00                2
			--9           587       Côté          Jacques    30        NULL  Barkoff                    Cap-de-la-Madeleine   Qc         G8T 2A3              114,60                1000,00               2
			--10          622       Ernest        Andrée     27        NULL  Av. des Pionniers          Balmoral              N.-B.      E4S 3J5              1045,75               1000,00               3

			--(8 lignes affectées)

			--ClientSansCommandeID ClientID    NumClient Nom       Prenom    NoCivique NoApp    Rue   Ville  Province  CodePostal   Solde   LimiteCredit  RepresentantID DateSuppressionListeClient
			------------------------------- ----------- --------- --------- --------- --------- ----- -----  --------- ------------ ------- ------------- -------------- --------------------------

			--(0 lignes affectées)


			--(8 lignes affectées)

			--(8 lignes affectées)
			--ClientID    NumClient Nom    Prenom    NoCivique NoApp Rue     Ville    Province   CodePostal Solde  LimiteCredit          RepresentantID
			------------- --------- ------ --------- --------- ----- ------- -------- ---------- ---------- ------ --------------------- --------------

			--(0 lignes affectées)

			--ClientSansCommandeID          ClientID    NumClient Nom          Prenom      NoCivique NoApp Rue                           Ville                  Province     CodePostal           Solde                 LimiteCredit          RepresentantID DateSuppressionListeClient
			------------------------------- ----------- --------- ------------ ----------- --------- ----- ----------------------------- ---------------------- ------------ -------------------- --------------------- --------------------- -------------- --------------------------
			--1                             2           256       Allard       Martine     996       NULL  St-Michel                     Montréal-Nord          Qc           H1H 5G7              21,50                 1500,00               2              2024-01-16 16:41:34.623
			--2                             3           311       Boucher      Camille     540       NULL  Bd des Galeries               Québec                 Qc           G2K 1N4              825,75                1000,00               3              2024-01-16 16:41:34.623
			--3                             4           315       Beaulieu     Alicia      220       NULL  Bd Le Corbusier               Laval                  Qc           H7S 2C9              770,75                750,00                1              2024-01-16 16:41:34.623
			--4                             6           412       Caver        Christine   120       NULL  Av. de Germain-des-Prés       Québec                 Qc           G1V 3M7              1817,50               2000,00               3              2024-01-16 16:41:34.623
			--5                             7           522       Chavant      Denise      444       NULL  Bd R. Lévesque Ouest          Montréal               Qc           H2Z 1Z6              98,75                 1500,00               2              2024-01-16 16:41:34.623
			--6                             8           567       Clovis       Eugène      91        NULL  rue Champlain                 Dieppe                 N.-B.        E1A 1N4              402,40                750,00                2              2024-01-16 16:41:34.623
			--7                             9           587       Côté         Jacques     30        NULL  Barkoff                       Cap-de-la-Madeleine    Qc           G8T 2A3              114,60                1000,00               2              2024-01-16 16:41:34.623
			--8                             10          622       Ernest       Andrée      27        NULL  Av. des Pionniers             Balmoral               N.-B.        E4S 3J5              1045,75               1000,00               3              2024-01-16 16:41:34.623

			--(8 lignes affectées)


			--(7 lignes affectées)
			--CommandeID  DateCommande Nom Client                                                                                                                                                         TotalCommande
			------------- ------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------ ---------------------
			--3           2022-12-01   Bédard, Bertrand                                                                                                                                                   1957,29

			--(1 ligne affectée)

-- VOTRE RÉPONSE:












-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
-- Q8)  Nous voudrons voir les commandes entre deux dates dans une certaine ville


--   Partie 1)  Faites une procédure pour obtenir la liste des commandes faites entre deux dates pour les clients d'une certaine ville donnée entre paramètres. 
--              Voyez le résultat attendu de la partie 5) pour savoir quels sont les champs demandés

-- VOTRE RÉPONSE:









--   Partie 2) Exécutez votre procédure en utilisant les dates du premier janvier 2023 au premier janvier 2024 pour la ville de Québec


			--Résultat attendu:

			--CommandeID  DateCommande Nom Client         TotalCommande
			------------- ------------ ------------------ ---------------------
			--2           2023-09-28   Moulineau, Paul    0,00

			--(1 ligne affectée)


-- VOTRE RÉPONSE:







