USE BD5_Mario_Kart;
GO

-- INFORMATIONS IMPORTANTES :
-- Vous avez 13 requêtes à compléter.
-- Pour chaque question, le résultat attendu est présenté. Lorsque le résultat affiche plus de 6 enregistrements,
-- seuls les 3 premiers, les 3 derniers et le nombre de lignes affectées par la requête sont présentés.
-- Certaines questions nécessite l'utilisation d'un alias, regardez le nom de la colonne dans la section Résultat attendu pour savoir quel nom d'alias utiliser.
-- Un espace est fourni pour VOTRE RÉPONSE.

-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQUÊTES SANS JOINTURES
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Q1.	Sélectionnez tous les pseudos des joueurs qui contiennent le caractère 'o'
--
--		Résultat attendu:
		--Pseudo
		---------------------------
		--FireFlowerDaenerys
		--HaveYouEverHadADreamThat
		--LittleBroStoleMyRemote
		--...
		--proracerdude29
		--proRacerGirlZ
		--Rickroll69

		--(9 lignes affectées)

-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.	Sélectionnez tous les chronos et dates des participations qui respectent au moins une de ces conditions : 
--			o	1ère place dans la course dont l’id est 12.
--			o	8e place dans la course dont l’id est 10.

--
--		Résultat attendu:
		--Chrono      DatePartie
		------------- -----------------------
		--13735       2022-10-18 05:25:26.000
		--13492       2020-04-13 13:36:05.000
		--15652       2022-09-06 17:39:14.000
		--...
		--13140       2020-02-09 11:41:54.000
		--12270       2021-06-26 10:21:40.000
		--12061       2021-01-22 16:29:23.000

		--(15 lignes affectées)



-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.	Sélectionnez les 10 meilleurs chronos (les plus petits) pour la course dont l’id est 3.

--
--		Résultat attendu:
		--Chrono
		-------------
		--10842
		--11179
		--11200
		-----
		--11358
		--11438
		--11527

		--(10 lignes affectées)

-- VOTRE RÉPONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q4.	Sélectionnez les 5 pires chronos pour la course dont l’id est 12. 
--      Présentez le résultat dans une colonne nommée :  Pires chronomètres. 
--      Divisez le chrono par 60 et concaténez « s. » à celui-ci. (Au lieu d’afficher les chronos en ticks, on les affiche en secondes)

--
--		Résultat attendu:
		--Pires chronomètres
		--------------------
		--299 s.
		--299 s.
		--298 s.
		--298 s.
		--298 s.

		--(5 lignes affectées)

-- VOTRE RÉPONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q5.	Quel est l’id de la course dont la moyenne des chronos est la pire ?
--
--		Résultat attendu:
		--CourseID
		-------------
		--5

		--(1 ligne affectée)

-- VOTRE RÉPONSE:






-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQUÊTES AVEC JOINTURES

--  Pour TOUTES les questions qui suivent, vous NE devez PAS chercher manuellement un ID dans la BD pour ensuite simplifier la requête 
--  et éviter une jointure. (Sauf pour les questions 9 et 13 où un id est fourni)
--	N’hésitez pas à utiliser les sous-requêtes si cela vous aide.

-----------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q6.	Combien de 1ère place le joueur avec l’id 2 a-t-il obtenu ?
--
--		Résultat attendu:
		--Nb de 1ere place
		------------------
		--15

		--(1 ligne affectée)

-- VOTRE RÉPONSE:








-- Q7.	Sélectionnez tous les chronos du joueur avec le pseudo NeverGonnaLetYouDown. 
--      (Faites comme si vous ne connaissiez pas son JoueurID et que vous ne vous souveniez que de son pseudo)
--
--		Résultat attendu:
		--Chrono
		-------------
		--16293
		--12157
		--13511
		-----
		--14629
		--16332
		--11417

		--(62 lignes affectées)

-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q8.	Sélectionnez tous les chronos obtenus en 1ère place du joueur avec le pseudo 4204D5_BD_BestClass.
--
--		Résultat attendu:
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

			--(8 lignes affectées)


-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q9.	Sélectionnez la meilleure position obtenue dans la course avec le nom Prairie Meuh Meuh pour le joueur avec l’id 3.
--
--		Résultat attendu:
		--Meilleure position
		-------------------
		--4

		--(1 ligne affectée)

-- VOTRE RÉPONSE:







-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q10. Sélectionnez le meilleur chrono obtenu par le joueur h4ck3r avec le personnage Bébé Luigi. 
--
--		Résultat attendu:
		--Meilleur Chrono
		-----------------
		--12266

		--(1 ligne affectée)

-- VOTRE RÉPONSE:








-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q11.	Quel est le poids et la moyenne des chronos pour la course Mine Wario, groupés selon les trois poids possibles des personnages.
--
--		Résultat attendu:
		--Poids      Chrono moyen
		------------ ------------
		--léger      14161
		--lourd      13881
		--moyen      14263

		--(3 lignes affectées)

-- VOTRE RÉPONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q12.	Combien de fois chaque joueur a terminé une course entre la position 5 et 7 (inclus) avec le kart Blue Falcon ? 
--      Affichez seulement les joueurs pour qui cette valeur est au moins 2.
--
--		Résultat attendu:
			--Pseudo                    Nb de fois 5 à 7 avec Blue Falcon
			--------------------------- ---------------------------------
			--AndrewTaaaaa              2
			--h4ck3r                    3
			--HaveYouEverHadADreamThat  2
			--LittleBroStoleMyRemote    2
			--NeverGonnaLetYouDown      4
			--RageQuitGuy_              4
			--veryN00b                  4

			--(7 lignes affectées)

-- VOTRE RÉPONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q13.	(DÉFI) Sélectionnez tous les pseudos de joueurs pour lesquels il existe une participation avec une 1ère place dans la course avec l’id 7 
--             avec un kart ayant une vitesse supérieure ou égale à 5. 

--       ATTENTION:  On vous oblige à utiliser l’opérateur EXISTS ou ANY pour cette question.
--
--		Résultat attendu:
		--Pseudo
		---------------------------
		--h4ck3r

		--(1 ligne affectée)

-- VOTRE RÉPONSE:










-----------------------------------------------------------------------------------------------------------------------------------------------
