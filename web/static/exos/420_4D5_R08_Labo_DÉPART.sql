-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
--      VOTRE NOM, VOTRE PR�NOM
--
--      R08 Les vues, les fonctions et les proc�dures stock�es
--
--		Notions: 
-- 
--      Une vue:
--				GO
--				CREATE VIEW dbo.vw_NomDeLaVue
--				AS
--				-- requ�te ici	   
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
--     Les vues sont utilis�es comme une table
--     Les fonctions sont utilis�es comme un champ, dans des SELECT, WHERE, HAVING, UPDATE SET =....
--
--      Une proc�dure Stock�e:
--				GO
--				CREATE PROCEDURE dbo.usp_NomDeLaProcedure
--				(@param1 type, [@param2 type]...)
--				AS
--              BEGIN
--	                ...
--              END
--              GO
--

--     Les proc�dures sont ex�cut�es avec EXECUTE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


--  Q0)  Utilisation de la base de donn�es [4D5_R08_BDCommerciale]
	

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
--  Q1)
-- Faites une vue g�n�rale qui servira � rechercher des Commandes par Nom du Client ou Nom du Repr�sentant sans se pr�ocupper de l'id de ces derniers.
-- Mais mettez quand m�me les id des tables utilis�es, au cas o� on en aurait besoin plus tard.




--VOTRE R�PONSE:
-- Partie 1 : Cr�ation de la vue g�n�rale










-- Partie 2: Utilisation de la vue pour obtenir le r�sultat attendu pour le repr�sentant dont le nom de famille est Durant
-- Utilisez la vue

	-- R�sultat attendu:

--Nom Client              Prenom Client         DateCommande
------------------------- --------------------- -----------------------
--Boucher                 Pierre                2024-01-31 13:41:31.337
--Boucher                 Pierre                2024-02-01 05:57:46.803
--Boucher                 Pierre                2024-03-31 13:41:31.337
--Boucher                 Pierre                2024-04-01 05:57:46.803

--(4�lignes affect�es)
--VOTRE R�PONSE:




-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------- 


	-- Q2 A) Cr�ation d'une fonction pour compter le NOMBRE d'articles DIFF�RENTS vendus pour une cat�gorie id donn�e
	-- VOTRE R�PONSE:










	-- Q2 B) Faites une requ�te pour voir le NOMBRE d'articles DIFF�RENTS vendus pour la cat�gorie 1 en utilisant la fonction que vous venez de cr�er.
	-- R�sultat attendu:

			--Nbre  d'articles diff�rents vendus pour la categorie 1, �lectrom�nagers
			-------------------------------------------------------------------------
			--2

			--(1 ligne affect�e)
	
	--  VOTRE R�PONSE: 








	--Q2 C) Utilisez la fonction pour voir le nb d'articles diff�rents vendus pour chacune des categories

			--Resultat attendu:
			--CategorieID Categorie                                          Nbre  d'articles diff�rents vendus pour la categorie 
			------------- -------------------------------------------------- -----------------------------------------------------
			--1           �lectrom�nager                                     2
			--2           Appareils de Cuisine                               1
			--3           Sport                                              4
			--4           Saisonnier �t�                                     0
			--5           Saisonnier Hiver                                   0
			--6           Entretien Auto                                     0
			--7           Entretien Int�rieur Maison                         0
			--8           Entretien Ext�rieur Maison                         0
			--9           D�jeuners et brunchs                               0

			--(9�lignes affect�es)


	-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
-- Q3 A) Cr�ation d'une fonction pour obtenir le total de la quantit� d'articles command�s pour une cat�gorie donn�e

	--  VOTRE R�PONSE: 

	














	-- Q3 B) Faites une requ�te pour voir le total de la quantit� des articles command�s  pour la cat�gorie 1 en utilisant la fonction que vous venez de cr�er.
	-- R�sultat attendu:

				--Total d'articles command�s pour la categorie 1, �lectrom�nagers
				-------------------------------------------------------------------
				--6

				--(1 ligne affect�e)
	
	--  VOTRE R�PONSE: 

	









	-- Q3 C) Faites une requ�te pour voir ces infos pour chacune des categories
			--R�sultat attendu:
			--CategorieID Categorie                                          total d'articles command�s pour la categorie 
			------------- -------------------------------------------------- ---------------------------------------------
			--1           �lectrom�nager                                     6
			--2           Appareils de Cuisine                               26
			--3           Sport                                              24
			--4           Saisonnier �t�                                     0
			--5           Saisonnier Hiver                                   0
			--6           Entretien Auto                                     0
			--7           Entretien Int�rieur Maison                         0
			--8           Entretien Ext�rieur Maison                         0
			--9           D�jeuners et brunchs                               0

			--(9�lignes affect�es)
	-- VOTRE R�PONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
	-- Q4 A) Faites une fonction pour calculer le total (type de retour : money) d'une commande, pour une commande id donn�e en param�tre
	--  VOTRE R�PONSE: 













	-- Q4 B) Faites un ALTER TABLE pour ajouter le champ TotalCommande, de type money, NULL dans la table Commande
	--  VOTRE R�PONSE: 

	








	-- Q4 C) Utilisez la fonction que vous venez de faire pour afficher la valeur totale des commandes pour la commande ID 3
	
	-- R�sultat attendu:

			--Total de la commande no 3
			---------------------------
			--1957,29

			--(1 ligne affect�e)

	-- VOTRE R�PONSE:

	








	--Q4 D) Utilisez la fonction que vous venez de faire pour initialiser la valeur totale  pour chaque achat
	-- VOTRE R�PONSE

	









	--Q4 E) V�rifiez le contenu de la table Commandes.Commande

	-- R�sultat attendu:


			--CommandeID  NumCommande DateCommande            ClientID    TotalCommande
			------------- ----------- ----------------------- ----------- ---------------------
			--1           12489       2023-09-02				 5           0,00
			--2           12500       2023-09-28				 1           0,00
			--3           12504       2023-12-01				 5           1957,29
			--4           12510       2024-01-31				 11          125,70
			--5           12520       2024-02-01				 11          801,97
			--6           12590       2024-03-31				 11          1911,39
			--7           12580       2024-04-01				 11          973,57

			--(7�lignes affect�es)

	-- VOTRE R�PONSE

	







  --Q5 A) Faites une fonction qui va retourner le nom et le pr�nom d'un client pour le clientID pass� en param�tre












	
  -- Q5 B) Utilisez la fonction que vous venez de faire pour retourner les noms et pr�noms des clients

			-- R�sultat attendu:
			--  Client
			------------------------------------------------------------------------------------------------------
			--Allard, Martine
			--Beaulieu, Alicia
			--B�dard, Bertrand
			--Boucher, Camille
			--Boucher, Pierre
			--Caver, Christine
			--Chavant, Denise
			--Clovis, Eug�ne
			--C�t�, Jacques
			--Ernest, Andr�e
			--Moulineau, Paul

			--(11�lignes affect�es)

-- VOTRE R�PONSE:

  








   -- Q6 A)  On va vouloir se faire une fonction pour calculer l'�ge de chacun de nos repr�sentants

  --Bon il manque un champ DateNaissance dans cette table. Et des donn�es. 

  -- Comme il n'y a que 3 repr�sentants, nous allons ins�rer 3 dates de naissance, dont la derni�re, pour le repr�sentantID 3, devra �tre la v�tre.
  --  Moi, je vais ins�rer les dates suivantes mais vous n'aurez pas les 3 m�mes �videmment  12 janvier 1991, 12 janvier 1992 et 28 sept 1960
  
  
 








    --  Cr�ation de la fonction en utilisant DATEDIFF avec DAY
	-- NOTE: Vous pouvez mettre cette fonction dans le sch�ma dbo car c'est une fonction g�n�rique qui pourrait �tre utilis�e
	--       pour calculer l'�ge des clients, des employ�s, etc...
	
  
--VOTRE R�PONSE:









   -- Q6 B)  Utilisez la fonction pour voir les repr�sentants avec leur �ge
	    	--Resultat Attendu:
			--  RepresentantID DateNaissance           Age
			---------------- ----------------------- -----------
			--1              1992-01-12              33
			--2              1991-01-12              34
			--3              1960-09-28              64

			--(3�lignes affect�es)







-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

--
-- Q7) Faites une proc�dure qui n'aura pas de param�tre mais qui changera les donn�es dans 2 tables


--     Partie 1:  Commencez par faire une requ�te pour voir les ID des clients qui n'ont fait aucune commande 

-- R�sultat attendu pour cette requ�te:
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

			--(8�lignes affect�es)


--VOTRE R�PONSE:







--     Partie 2:  Faites une proc�dure qui ins�rera dans la table Clients.ClientSansCommande les donn�es des clients qui n'ont fait aucune commande
--                Ensuite, votre proc�dure supprimera de la table Client ces clients qui n'ont fait aucune commande

--VOTRE R�PONSE:










--     Partie 3:  
			-- 1. Ex�cutez la ou les requ�tes n�cessaires pour voir les enregistrements de la table Client et de la table ClientSansCommande qui seraient affect�s par la proc�dure
			-- 2. Ex�cutez la proc�dure
			-- 3. Ex�cutez � nouveau la ou les requ�tes n�cessaires pour voir les enregistrements de la table Client et de la table ClientSansCommande qui ont �t� affect�s par la proc�dure

			--R�sultat attendu:

			--ClientID    NumClient Nom           Prenom     NoCivique NoApp Rue                        Ville                 Province   CodePostal           Solde                 LimiteCredit          RepresentantID
			------------- --------- ------------- ---------- --------- ----- -------------------------- --------------------- ---------- -------------------- --------------------- --------------------- --------------
			--2           256       Allard        Martine    996       NULL  St-Michel                  Montr�al-Nord         Qc         H1H 5G7              21,50                 1500,00               2
			--3           311       Boucher       Camille    540       NULL  Bd des Galeries            Qu�bec                Qc         G2K 1N4              825,75                1000,00               3
			--4           315       Beaulieu      Alicia     220       NULL  Bd Le Corbusier            Laval                 Qc         H7S 2C9              770,75                750,00                1
			--6           412       Caver         Christine  120       NULL  Av. de Germain-des-Pr�s    Qu�bec                Qc         G1V 3M7              1817,50               2000,00               3
			--7           522       Chavant       Denise     444       NULL  Bd R. L�vesque Ouest       Montr�al              Qc         H2Z 1Z6              98,75                 1500,00               2
			--8           567       Clovis        Eug�ne     91        NULL  rue Champlain              Dieppe                N.-B.      E1A 1N4              402,40                750,00                2
			--9           587       C�t�          Jacques    30        NULL  Barkoff                    Cap-de-la-Madeleine   Qc         G8T 2A3              114,60                1000,00               2
			--10          622       Ernest        Andr�e     27        NULL  Av. des Pionniers          Balmoral              N.-B.      E4S 3J5              1045,75               1000,00               3

			--(8�lignes affect�es)

			--ClientSansCommandeID ClientID    NumClient Nom       Prenom    NoCivique NoApp    Rue   Ville  Province  CodePostal   Solde   LimiteCredit  RepresentantID DateSuppressionListeClient
			------------------------------- ----------- --------- --------- --------- --------- ----- -----  --------- ------------ ------- ------------- -------------- --------------------------

			--(0�lignes affect�es)


			--(8�lignes affect�es)

			--(8�lignes affect�es)
			--ClientID    NumClient Nom    Prenom    NoCivique NoApp Rue     Ville    Province   CodePostal Solde  LimiteCredit          RepresentantID
			------------- --------- ------ --------- --------- ----- ------- -------- ---------- ---------- ------ --------------------- --------------

			--(0�lignes affect�es)

			--ClientSansCommandeID          ClientID    NumClient Nom          Prenom      NoCivique NoApp Rue                           Ville                  Province     CodePostal           Solde                 LimiteCredit          RepresentantID DateSuppressionListeClient
			------------------------------- ----------- --------- ------------ ----------- --------- ----- ----------------------------- ---------------------- ------------ -------------------- --------------------- --------------------- -------------- --------------------------
			--1                             2           256       Allard       Martine     996       NULL  St-Michel                     Montr�al-Nord          Qc           H1H 5G7              21,50                 1500,00               2              2024-01-16 16:41:34.623
			--2                             3           311       Boucher      Camille     540       NULL  Bd des Galeries               Qu�bec                 Qc           G2K 1N4              825,75                1000,00               3              2024-01-16 16:41:34.623
			--3                             4           315       Beaulieu     Alicia      220       NULL  Bd Le Corbusier               Laval                  Qc           H7S 2C9              770,75                750,00                1              2024-01-16 16:41:34.623
			--4                             6           412       Caver        Christine   120       NULL  Av. de Germain-des-Pr�s       Qu�bec                 Qc           G1V 3M7              1817,50               2000,00               3              2024-01-16 16:41:34.623
			--5                             7           522       Chavant      Denise      444       NULL  Bd R. L�vesque Ouest          Montr�al               Qc           H2Z 1Z6              98,75                 1500,00               2              2024-01-16 16:41:34.623
			--6                             8           567       Clovis       Eug�ne      91        NULL  rue Champlain                 Dieppe                 N.-B.        E1A 1N4              402,40                750,00                2              2024-01-16 16:41:34.623
			--7                             9           587       C�t�         Jacques     30        NULL  Barkoff                       Cap-de-la-Madeleine    Qc           G8T 2A3              114,60                1000,00               2              2024-01-16 16:41:34.623
			--8                             10          622       Ernest       Andr�e      27        NULL  Av. des Pionniers             Balmoral               N.-B.        E4S 3J5              1045,75               1000,00               3              2024-01-16 16:41:34.623

			--(8�lignes affect�es)


			--(7�lignes affect�es)
			--CommandeID  DateCommande Nom Client                                                                                                                                                         TotalCommande
			------------- ------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------ ---------------------
			--3           2022-12-01   B�dard, Bertrand                                                                                                                                                   1957,29

			--(1 ligne affect�e)

-- VOTRE R�PONSE:












-----------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--
-- Q8)  Nous voudrons voir les commandes entre deux dates dans une certaine ville


--   Partie 1)  Faites une proc�dure pour obtenir la liste des commandes faites entre deux dates pour les clients d'une certaine ville donn�e entre param�tres. 
--              Voyez le r�sultat attendu de la partie 5) pour savoir quels sont les champs demand�s

-- VOTRE R�PONSE:









--   Partie 2) Ex�cutez votre proc�dure en utilisant les dates du premier janvier 2023 au premier janvier 2024 pour la ville de Qu�bec


			--R�sultat attendu:

			--CommandeID  DateCommande Nom Client         TotalCommande
			------------- ------------ ------------------ ---------------------
			--2           2023-09-28   Moulineau, Paul    0,00

			--(1 ligne affect�e)


-- VOTRE R�PONSE:







