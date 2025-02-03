USE BD5_Mario_Kart;
GO

-- INFORMATIONS IMPORTANTES :
-- Vous avez 13 requ�tes � compl�ter.
-- Pour chaque question, le r�sultat attendu est pr�sent�. Lorsque le r�sultat affiche plus de 6 enregistrements,
-- seuls les 3 premiers, les 3 derniers et le nombre de lignes affect�es par la requ�te sont pr�sent�s.
-- Certaines questions n�cessite l'utilisation d'un alias, regardez le nom de la colonne dans la section R�sultat attendu pour savoir quel nom d'alias utiliser.
-- Un espace est fourni pour VOTRE R�PONSE.

-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQU�TES SANS JOINTURES
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Q1.	S�lectionnez tous les pseudos des joueurs qui contiennent le caract�re 'o'
--
--		R�sultat attendu:
		--Pseudo
		---------------------------
		--FireFlowerDaenerys
		--HaveYouEverHadADreamThat
		--LittleBroStoleMyRemote
		--...
		--proracerdude29
		--proRacerGirlZ
		--Rickroll69

		--(9�lignes affect�es)

-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.	S�lectionnez tous les chronos et dates des participations qui respectent au moins une de ces conditions : 
--			o	1�re place dans la course dont l�id est 12.
--			o	8e place dans la course dont l�id est 10.

--
--		R�sultat attendu:
		--Chrono      DatePartie
		------------- -----------------------
		--13735       2022-10-18 05:25:26.000
		--13492       2020-04-13 13:36:05.000
		--15652       2022-09-06 17:39:14.000
		--...
		--13140       2020-02-09 11:41:54.000
		--12270       2021-06-26 10:21:40.000
		--12061       2021-01-22 16:29:23.000

		--(15�lignes affect�es)



-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.	S�lectionnez les 10 meilleurs chronos (les plus petits) pour la course dont l�id est 3.

--
--		R�sultat attendu:
		--Chrono
		-------------
		--10842
		--11179
		--11200
		-----
		--11358
		--11438
		--11527

		--(10�lignes affect�es)

-- VOTRE R�PONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q4.	S�lectionnez les 5 pires chronos pour la course dont l�id est 12. 
--      Pr�sentez le r�sultat dans une colonne nomm�e :  Pires chronom�tres. 
--      Divisez le chrono par 60 et concat�nez � s. � � celui-ci. (Au lieu d�afficher les chronos en ticks, on les affiche en secondes)

--
--		R�sultat attendu:
		--Pires chronom�tres
		--------------------
		--299 s.
		--299 s.
		--298 s.
		--298 s.
		--298 s.

		--(5�lignes affect�es)

-- VOTRE R�PONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q5.	Quel est l�id de la course dont la moyenne des chronos est la pire ?
--
--		R�sultat attendu:
		--CourseID
		-------------
		--5

		--(1 ligne affect�e)

-- VOTRE R�PONSE:






-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQU�TES AVEC JOINTURES

--  Pour TOUTES les questions qui suivent, vous NE devez PAS chercher manuellement un ID dans la BD pour ensuite simplifier la requ�te 
--  et �viter une jointure. (Sauf pour les questions 9 et 13 o� un id est fourni)
--	N�h�sitez pas � utiliser les sous-requ�tes si cela vous aide.

-----------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q6.	Combien de 1�re place le joueur avec l�id 2 a-t-il obtenu ?
--
--		R�sultat attendu:
		--Nb de 1ere place
		------------------
		--15

		--(1 ligne affect�e)

-- VOTRE R�PONSE:








-- Q7.	S�lectionnez tous les chronos du joueur avec le pseudo NeverGonnaLetYouDown. 
--      (Faites comme si vous ne connaissiez pas son JoueurID et que vous ne vous souveniez que de son pseudo)
--
--		R�sultat attendu:
		--Chrono
		-------------
		--16293
		--12157
		--13511
		-----
		--14629
		--16332
		--11417

		--(62�lignes affect�es)

-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q8.	S�lectionnez tous les chronos obtenus en 1�re place du joueur avec le pseudo 4204D5_BD_BestClass.
--
--		R�sultat attendu:
			--Chrono
			-------------
			--13339
			--17178
			--17818
			--16800
			--12802
			--16722
			--11731
			--15844

			--(8�lignes affect�es)


-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q9.	S�lectionnez la meilleure position obtenue dans la course avec le nom Prairie Meuh Meuh pour le joueur avec l�id 3.
--
--		R�sultat attendu:
		--Meilleure position
		-------------------
		--4

		--(1 ligne affect�e)

-- VOTRE R�PONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q10. S�lectionnez le meilleur chrono obtenu par le joueur h4ck3r avec le personnage B�b� Luigi. 
--
--		R�sultat attendu:
		--Meilleur Chrono
		-----------------
		--12266

		--(1 ligne affect�e)

-- VOTRE R�PONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q11.	Quel est le poids et la moyenne des chronos pour la course Mine Wario, group�s selon les trois poids possibles des personnages.
--
--		R�sultat attendu:
		--Poids      Chrono moyen
		------------ ------------
		--l�ger      14161
		--lourd      13881
		--moyen      14263

		--(3�lignes affect�es)

-- VOTRE R�PONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q12.	Combien de fois chaque joueur a termin� une course entre la position 5 et 7 (inclus) avec le kart Blue Falcon ? 
--      Affichez seulement les joueurs pour qui cette valeur est au moins 2.
--
--		R�sultat attendu:
			--Pseudo                    Nb de fois 5 � 7 avec Blue Falcon
			--------------------------- ---------------------------------
			--AndrewTaaaaa              2
			--h4ck3r                    3
			--HaveYouEverHadADreamThat  2
			--LittleBroStoleMyRemote    2
			--NeverGonnaLetYouDown      4
			--RageQuitGuy_              4
			--veryN00b                  4

			--(7�lignes affect�es)

-- VOTRE R�PONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q13.	(D�FI) S�lectionnez tous les pseudos de joueurs pour lesquels il existe une participation avec une 1�re place dans la course avec l�id 7 
--             avec un kart ayant une vitesse sup�rieure ou �gale � 5. 

--       ATTENTION:  On vous oblige � utiliser l�op�rateur EXISTS ou ANY pour cette question.
--
--		R�sultat attendu:
		--Pseudo
		---------------------------
		--h4ck3r

		--(1 ligne affect�e)

-- VOTRE R�PONSE:










-----------------------------------------------------------------------------------------------------------------------------------------------
