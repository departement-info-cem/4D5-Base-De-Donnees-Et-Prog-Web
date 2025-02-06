USE BD5_Mario_Kart;
GO

-- Vous avez 4 requêtes à compléter.
-- Pour chaque question, le résultat attendu est présenté. Lorsque le résultat affiche beacoup d'enregistrements,
-- seuls les 3 premiers, les 3 derniers et le nombre de lignes affectées par la requête sont présentés.
-- Certaines questions nécessite l'utilisation d'un alias, regardez le nom des colonnes dans la section Résultat attendu pour savoir quel nom d'alias utiliser.
-- Un espace est fourni pour VOTRE RÉPONSE.

-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQUÊTES SANS JOINTURES
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Q1.	Vous savez qu'un excellent chrono est un chrono plus petit ou égal à 12000.
 
--      Pour chaque participation de la course dont l'id est 10, affichez si le chrono est 'Excellent' ou 'Pas Excellent'. 

--      Faites un tri sur le chrono.

--      Utilisez IIF.
--
--		Résultat attendu:
			--DatePartie              Chrono      Qualification
			------------------------- ----------- -------------
			--2021-01-02 02:21:20.000 10874       Excellent
			--2021-08-12 09:55:02.000 11025       Excellent
			--2022-05-28 10:01:55.000 11143       Excellent
			--...
			--2021-05-23 08:34:22.000 17709       Pas Excellent
			--2021-07-03 06:47:15.000 17829       Pas Excellent
			--2022-10-28 06:04:01.000 17834       Pas Excellent

			--(97 lignes affectées)

-- VOTRE RÉPONSE:












-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.	Vous voulez une granularité plus fine au niveau de la qualification du chrono d'une course.
--      Vous savez qu'un excellent chrono est un chrono plus petit ou égal à 12000. 
--      Lorsqu'il est entre 12001 et 15000, c'est un chrono satisfaisant.
--      Quand il est plus grand ou égal à 15000, c'est un chrono faible.


--      Pour chaque participation de la course dont l'id est 10, affichez la bonne qualification du chrono.

--      Faites un tri sur le chrono.

--      Utilisez CASE.
--
--		Résultat attendu:
			--DatePartie              Chrono      Qualification
			------------------------- ----------- -------------
			--2021-01-02 02:21:20.000 10874       Excellent
			--2021-08-12 09:55:02.000 11025       Excellent
			--2022-05-28 10:01:55.000 11143       Excellent
			--...
			--2021-06-19 02:38:40.000 12006       Satisfaisant
            --2021-01-22 16:29:23.000 12061       Satisfaisant
            --2021-06-26 10:21:40.000 12270       Satisfaisant
			--...
			--2021-05-23 08:34:22.000 17709       Faible
			--2021-07-03 06:47:15.000 17829       Faible
			--2022-10-28 06:04:01.000 17834       Faible

			--(97 lignes affectées)



-- VOTRE RÉPONSE:














-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.	Vous voulez savoir quels karts, utilisés dans les participations de la course dont l'id est 10, ont obtenu un chrono Excellent (<=12000).

--			 Utilisez une CTE pour obtenir les participations de cette course ayant un chrono Excellent.
--           Dans le SELECT principal, affichez les différents Karts qui ont été utilisé dans les participations de la CTE.

--           Triez le résultat par Nom de Kart.
--
--           ATTENTION, n'oubliez pas de mettre un GO Avant et un GO après votre solution car une requête CTE doit être la seule requête de son lot.

			--		Résultat attendu:
			--Nom
			----------------------
			--Autorhino
			--Beat-bolide
			--Chabriolet
			--Paracoccinelly
			--Propulsar
			--Proto 8
			--Quad Wiggler
			--Rétro
			--Yoshimoto

			--(9 lignes affectées)

-- VOTRE RÉPONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q4.	Vous voulez savoir combien de participations il y a dans la course dont l'id est 10 ainsi que le nombre de participations de cette course
--      qui ont un chrono Excellent, Satisfaisant ou Faible.

--  Utilisez une CTE pour compter le nombre de participations de cette course qui ont un chrono Excellent.
--           une autre CTE pour compter le nombre de participations de cette course qui ont un chrono Satisfaisant.
--           une autre CTE  pour compter le nombre de participations de cette course qui ont un chrono Faible.
--           une autre CTE  pour compter le nombre total des participations.

--  Enfin, dans la requête principale, affichez le nombre total de participations et le nombre de participations des 3 types de qualifications.
--  PUISQUE chaque CTE contient un seul nombre, vous pouvez faire des jointures artificielles ON 1=1.


--      ATTENTION, n'oubliez pas de mettre un GO avant et un GO après votre solution car une requête CTE doit être la seule requête de son lot.
--
--		Résultat attendu:
			--CourseID    Nb Total de Participations Nb Excellent Nb Satisfaisant Nb Faible
			------------- -------------------------- ------------ --------------- -----------
			--10          97                         20           40              37

			--(1 ligne affectée)

-- VOTRE RÉPONSE:










-----------------------------------------------------------------------------------------------------------------------------------------------
