-- FORMATIF

-- Nom :
-- Prénom :

-- Informations sur la BD :
	-- La BD contient les données des parties jouées dans les ligues de go du Senthé depuis 2015.
	-- Il manque parfois certaines données dans la BD, si c'est le cas, on voit les informations 'Pas sur le site Web' ou 'Pas de publication'. 



-- IMPORTANT : 
    -- Exécutez le fichier de départ Script 420-4D5_R13_Formatif_Intra_Create_Insert.sql pour créer la BD LigueDeGo et insérer ses données.
    -- Générez le diagramme de la BD pour regarder les relations entre les tables.
    -- La table Joueurs.StatistiquesAnneeJoueur contient les statistiques des joueurs par année.
	-- Tables d'intérêt pour le formatif : Joueur, Membre, StatistiquesAnneeJoueur, Ligue, Tournoi, TournoiLigue 


-- IMPORTANT : EXÉCUTEZ CETTE LIGNE
USE [4D5_LigueDeGo]



--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █  SECTION VUE ET REQUÊTES SUR UNE VUE   █ ---------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█



-- QUESTION 1.1 :  Faite une vue nommée Joueurs.vw_StatistiquesJoueur qui contiendra les informations suivantes sur les joueurs : 
--                 Nom, Prénom, Rang, NbPartiesJouees, NbPartiesGagnee, NbTournoisJoues, NbTournoisGagnes, JoueurID, MembreID,
--                 StatistiquesAnneeJoueurID. 
--     

-- VOTRE RÉPONSE 














-- QUESTION 1.2 : Utilisez la vue pour calculer le nombre total de tournois qui ont été gagnés par les joueurs ayant le rang 6DAN 
    

				-- RÉSULTAT ATTENDU : 

				-- Nb tournois gagnés rang 6DAN
				-- ----------------------------
				-- 55

				-- (1 ligne affectée)


-- VOTRE RÉPONSE 












-- QUESTION 1.3 : Faites une requête qui utilise cette vue pour : 
--                   -- Afficher la liste des personnes (Nom, Prénom) qui ont gagné plus de 2 tournois.
--                   -- Compter le nombre de tournois gagné par chacune de ces personnes. 
--                   -- Regrouper les résultats par nom et prénom   
--                   -- Afficher les résultats en ordre décroissant du nombre de tournois gagnés.
--                Note : Dans la BD, le champ NbTournoisGagnes contient la valeur NULL si une personne n'a pas gagné de tournois ou un INT. 
--

				-- RÉSULTAT ATTENDU : 
 
				-- Nom	             Prenom	              NB Tournois Gagnés 
				-- ------            ------               ------------------
				-- Rivard	         Claude	              6
				-- Duguay	         Louis	              6
				-- Lussier	         Louise	              5
				-- Tremblay	         Jacques-Mathieu	  5
				--                 ....
				-- Piché	         Timothée	          3
				-- Lavallée	         Timothée-Sébastien	  3
				-- Arsenault	     Tristan	          3
				-- Maltais-Thibault	 Tristan	          3

				-- (70 lignes affectées)



-- VOTRE RÉPONSE 

















--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █         SECTION REQUÊTES VARIÉES       █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█




-- QUESTION 2 : Faites une requête qui affiche le Nom, le Prénom et le nombre de parties jouées des joueurs 
--              qui ont joué plus de parties que tous les autres joueurs en 2023.
--              Vous devez utiliser l'opérateur ALL pour répondre à cette question. 
--    

-- RÉSULTAT ATTENDU : 


				-- Nom	                Prenom	     NbPartiesJouees
				-- -------------------  ---------    ---------------
				-- Marchand	            Gilbert	     10
				-- Lemire	            David	     13
				-- Demers	            Élisabeth	 13
				-- Rivard	            Amélie	     13
				--                    ....
				-- Guillemette-St-Jean	Cécile	     12
				-- Simard	            Jessica	     10
				-- Lafontaine	        Aurélie	     10
				-- St-Pierre	        Laurence	 10

				-- (48 lignes affectées)



-- VOTRE RÉPONSE 
















-- QUESTION 3 : Faites une requête qui affiche des informations sur tous les tournois depuis la création de la ligue. 
--              Les information à afficher sont :
                   -- Le TournoiID, l'année, la saison et une colonne MontantTotal ($). 
                   -- Cette dernière colonne contient le montant total des revenus d'inscription des participants.
                   -- Cette valeur est calculée à partir du coût d'inscription (Cout) et du nombre de joueurs inscrits (NbJoueursInscrits) pour chacun des tournois.


				-- RÉSULTAT ATTENDU :           

				-- TournoiID	Annee	Saison	    MontantTotal
				-- ---------    -----   ---------   ------------
				-- 1	        2015	Printemps	14532,00
				-- 2	        2015	Automne	    14196,00
				-- 3	        2016	Printemps	14952,00
				--                ....
				-- 16	        2022	Automne	    14196,00
				-- 17	        2023	Printemps	14562,00
				-- 18	        2023	Automne	    138,00

				-- (18 lignes affectées)



-- VOTRE RÉPONSE 
















--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █         SECTION IIF ET CASE            █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█



-- QUESTION 4.1 : Affichez le nom, le prénom, le rang des joueur et ajoutez un colonne 'Catégorie Joueur' qui contiendra 
--                les informations suivantes : 
--                   -- Si le nombre de tournois joués ­>= 3, la colonne devra contenir la valeur : 'Joueur régulier'
--                   -- Sinon la colonne devra contenir la valeur : 'Joueur occassionnel'
      

				-- RÉSULTAT ATTENDU : 

				-- Nom	                  Prenom	          Rang	 Catégorie Joueur
				-- -------------------    ------------------  -----  ------------------
				-- Lussier	              Louise	          6DAN	 Joueur régulier
				-- Pas sur le site Web	  Pas de publication  6DAN	 Joueur régulier
				-- Fontaine-Lavoie	      Julie	              6DAN	 Joueur régulier
				-- Laplante	              Gilles	          6DAN	 Joueur occasionnel
				--                           .....
				-- Lachance	              Richard	          30KUY	 Joueur occasionnel
				-- Ménard	              Dominique	          30KUY	 Joueur occasionnel
				-- Lemay	              Aurore	          30KUY	 Joueur occasionnel

				-- (8253 lignes affectées)



-- VOTRE RÉPONSE 














-- QUESTION 4.2 : Affichez le nom, le prénom, le rang des joueur et ajoutez un colonne 'Catégorie Joueur' qui contiendra 
--                les informations suivante : 
--                   -- Si le nombre de tournois joués ­>= 3 la colonne devra contenir la valeur : 'Joueur régulier'
--                   -- Si le nombre de tournois joués ­= 2 la colonne devra contenir la valeur : 'Joueur occasionnel'
--                   -- Si le nombre de tournois joués ­<= 1 la colonne devra contenir la valeur : 'Nouveau joueur'
--                 

				-- RÉSULTAT ATTENDU : 

				-- Nom	                  Prenom	          Rang	 Catégorie Joueur
				-- -------------------    ------------------  -----  ------------------
				-- Lussier	              Louise	          6DAN	 Joueur régulier
				-- Pas sur le site Web	  Pas de publication  6DAN	 Joueur régulier
				-- Fontaine-Lavoie	      Julie	              6DAN	 Joueur régulier
				-- Laplante               Gilles	          6DAN	 Nouveau joueur
				-- Brisson	              Louise	          6DAN	 Nouveau joueur
				-- Bertrand-Poulin	      Gilles	          6DAN	 Joueur régulier
				-- Houde	              Laetitia	          6DAN	 Nouveau joueur
				-- Jean	                  Constance-Caroline  6DAN	 Joueur occasionnel
				--                              ....
				-- Lemay	              Aurore	          30KUY	 Nouveau joueur

				-- (8253 lignes affectées)



-- VOTRE RÉPONSE 



















--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █              SECTION CTE               █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█


-- QUESTION 5 : Utilisez un CTE pour répondre à l'énoncé textuel suivant : 
--                   Affichez la liste des personnes (Nom et prénom) qui ont joué plus de partie que la moyenne de
--                   toutes les parties jouées entre 2018 et 2022.
--              IMPORTANT : L'année est de type INT dans cette BD. 
    

				-- RÉSULTAT ATTENDU : 

				-- Nom	                  Prenom
				-- -------------------    ------------------
				-- Lussier	              Louise
				-- Pas sur le site Web	  Pas de publication
				-- Fontaine-Lavoie	      Julie
				--                 .....
				-- Tanguay	              Anouk
				-- Brisson	              Célina
				-- Duval	              Véronique

				-- (717 lignes affectées)



-- VOTRE RÉPONSE 
















--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █            SECTION FONCTION            █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█



-- QUESTION 6.1 :  Créez une fonction nommée Joueurs.ufn_NbPartiesPerdues qui prend en paramètre :
                       -- l'ID d'un joueur et une année  
					   -- Et retourne le nombre de parties perdues pour cet ID, durant cette année.
--		           IMPORTANT : 
--                     -- L'année est de type INT dans cette BD. 
--                     -- Vous devez utiliser NbPartiesGagnees et NbTournoisJoues pour calculer le nombre de parties perdues.



-- VOTRE RÉPONSE 

















-- QUESTION 6.2 : Utilisez la fonction Joueurs.ufn_NbPartiesPerdues avec les données suivantes :
--                    -- JoueurID = 1
--                    -- Annee = 2015


				-- RÉSULTAT ATTENDU : 

				-- Nb parties perdues en 2015
				-- --------------------------
				-- 3

				-- (1 ligne affectée)



-- VOTRE RÉPONSE 









--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █       SECTION PROCÉDURE STOCKÉE        █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█


-- IMPORTANT : AVANT DE FAIRE LA PROCÉDURE STOCKÉE, EXÉCUTEZ LE CODE SUIVANT POUR 
--             AJOUTER UNE NOUVELLE COLONNE NbPartiesPerdues DANS Joueurs.StatistiquesAnneeJoueur. 
--             (Si vous n'avez pas déjà exécuté tout le document)

ALTER TABLE Joueurs.StatistiquesAnneeJoueur
ADD NbPartiesPerdues INT NULL




-- QUESTION 7.1 : Créez une procédure stockée nommée UpdateNbPartiesPerdues qui mettra à jour la colonne NbPartiesPerdues
--                (qui vient d'être ajoutée dans StatistiquesAnneeJoueur) pour un joueurID et une année spécifique.
--                Pour l'instant, cette colonne contient des valeurs NULL. 

--                À faire : 
--                      -- Si le nombre de parties perdues est plus grand que 0, il faut mettre à jour la colonne et indiquer le nombre de 
--                       parties perdues. vous pouvez utilier la fonction à la question 6.1 pour faire ce calcul si vous le désirez.

--                      -- Si le nombre de parties perdues est de 0, il faut laisser la valeur NULL dans la colonne. 

--                -- IMP : La procédure prendra deux paramètres : JoueurID et Annee
                  -- IMP : **Attention au UPDATE, vous devez mettre à jour les données de joueurs spécifiques** 



-- VOTRE RÉPONSE 



















-- QUESTION 7.2 : Exécutez votre procédure stockée avec le jeu de données suivant :
--                    1. JoueurID = 1, Annee = 2015
--                    2. JoueurID = 2, Annee = 2015

--                À faire pour les DEUX cas de test : 
--                    1. Affichez toutes les informations pour ce joueurID et cette année AVANT l'exécution de la procédure. 
--
--                    2. Exécutez la procédure stockée.
--
--                    3. Affichez à nouveau toutes les informations pour ce joueurID et cette année APRÈS l'exécution de la procédure pour voir son comportement.
--                


				-- RÉSULTAT ATTENDU : 

-- CAS 1 : 3 parties perdues 
-- AVANT	    --           StatistiquesAnneeJoueurID	JoueurID	Annee	NbPartiesJouees  	NbPartiesGagnees	NbTournoisJoues 	NbTournoisGagnes	NbPartiesPerdues
				--           -------------------------  --------    -----   ---------------     ----------------    ---------------     ----------------    ----------------
				--           1	                        1	        2015	4	                1	                3	                NULL	            NULL
				--           (1 ligne affectée)

-- APRÈS		--           StatistiquesAnneeJoueurID	JoueurID	Annee	NbPartiesJouees  	NbPartiesGagnees	NbTournoisJoues 	NbTournoisGagnes	NbPartiesPerdues
				--           -------------------------  --------    -----   ---------------     ----------------    ---------------     ----------------    ----------------
				--           1	                        1	        2015	4	                1	                3	                NULL	            3
				--           (1 ligne affectée)



-- CAS 2 : 0 parties perdues 
-- AVANT		--           StatistiquesAnneeJoueurID	JoueurID	Annee	NbPartiesJouees  	NbPartiesGagnees	NbTournoisJoues 	NbTournoisGagnes	NbPartiesPerdues
				--           -------------------------  --------    -----   ---------------     ----------------    ---------------     ----------------    ----------------
				--           4	                        4	        2015	3	                3	                1	                1	                NULL
				--           (1 ligne affectée)

-- APRÈS		--           StatistiquesAnneeJoueurID	JoueurID	Annee	NbPartiesJouees  	NbPartiesGagnees	NbTournoisJoues 	NbTournoisGagnes	NbPartiesPerdues
				--           -------------------------  --------    -----   ---------------     ----------------    ---------------     ----------------    ----------------
				--           4	                        4	        2015	3	                3	                1	                1	                NULL
				--           (1 ligne affectée)



-- VOTRE RÉPONSE 









--                                   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
------------------------------------ █          SECTION DÉCLENCHEUR           █ --------------------------------------------
--                                   █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█



-- IMPORTANT : EXÉCUTEZ LE CODE SUIVANT POUR AJOUTER DEUX NOUVELLES COLONNES DANS LES TABLES MEMBRE ET JOUEUR. (Si vous n'avez pas déjà exécuté tous le document)
                  -- DateDepart : Lorsqu'un membre quitte le club de GO
				  -- EstActif : Indique si le joueur est actif (1) ou non (0)

--------------------------------------------------------------

	ALTER TABLE Joueurs.Membre
	ADD DateDepart datetime NULL

	ALTER TABLE Joueurs.Joueur
	ADD EstActif bit NULL
	GO
	UPDATE Joueurs.Joueur SET EstActif = 1
	GO
	ALTER TABLE Joueurs.Joueur
	ADD CONSTRAINT DF_Joueur_EstActif DEFAULT 1 FOR EstActif
	GO
--------------------------------------------------------------





-- QUESTION 8.1 : Créez un déclencheur nommé Joueurs.utrg_DepartDunMembre sur la table Membre qui s'activera lorsque 
--                le champ DateDepart est mis à jour pour un membre (n'est plus à NULL).
--                Ce déclencheur devra modifier le champ EstActif dans la table Joueurs.Joueur pour qu'il devienne 0.


-- RÉSULTAT ATTENDU : 



-- VOTRE RÉPONSE 


















--	QUESTION 8.2 : Faites les tests suivants pour valider le comportement de votre déclencheur :
--                     1. Affichez le contenu de la table Membre pour le MembreID = 200   
--                     2. Affichez le contenu de la table Joueur pour le MembreID = 200   
--                     3. Mettez à jour le champ DateDepart avec GETDATE() pour le MembreID = 200       
--                     4. Affichez le contenu de la table Membre pour le MembreID = 200   
--                     5. Affichez le contenu de la table Joueur pour le MembreID = 200  
--                 Précision : La date de départ sera différente en raison du moment où la fonction GETDATE() a été utilisée. 


				-- RÉSULTAT ATTENDU : 

				-- AVANT	                    MembreID	Nom	        Prenom	Telephone	    Courriel	                DateDepart
				-- -------------------------    --------    --------    ------  ------------    -------------------------   -----------------------
				-- AVANT DEPART, DANS MEMBRE	200	        Lapointe	Odette	514-852-5187	Odette.Lapointe@gmail.com	NULL


				-- AVANT	                    JoueurID	MembreID	NoMembreCGA 	Rang    EstActif
				-- -------------------------    --------    --------    -----------     ----    -------- 
				-- AVANT DEPART, DANS JOUEUR	75	        200	        1095	        4DAN	1


				-- APRÈS	                    MembreID	Nom	        Prenom	Telephone	    Courriel	                DateDepart
				-- -------------------------    --------    --------    ------  ------------    -------------------------   -----------------------
				-- APRÈS DEPART, DANS MEMBRE	200	        Lapointe	Odette	514-852-5187	Odette.Lapointe@gmail.com	2025-03-02 21:23:16.120


				-- APRÈS	                    JoueurID	MembreID	NoMembreCGA 	Rang    EstActif
				-- -------------------------    --------    --------    -----------     ----    -------- 
				-- APRÈS DEPART, DANS JOUEUR	75	        200	        1095	        4DAN	0



-- VOTRE RÉPONSE 
















