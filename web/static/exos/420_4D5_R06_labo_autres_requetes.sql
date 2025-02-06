USE BD5_Mario_Kart;
GO

-- Vous avez 4 requ�tes � compl�ter.
-- Pour chaque question, le r�sultat attendu est pr�sent�. Lorsque le r�sultat affiche beacoup d'enregistrements,
-- seuls les 3 premiers, les 3 derniers et le nombre de lignes affect�es par la requ�te sont pr�sent�s.
-- Certaines questions n�cessite l'utilisation d'un alias, regardez le nom des colonnes dans la section R�sultat attendu pour savoir quel nom d'alias utiliser.
-- Un espace est fourni pour VOTRE R�PONSE.

-----------------------------------------------------------------------------------------------------------------------------------------------
--	REQU�TES SANS JOINTURES
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Q1.	Vous savez qu'un excellent chrono est un chrono plus petit ou �gal � 12000.
 
--      Pour chaque participation de la course dont l'id est 10, affichez si le chrono est 'Excellent' ou 'Pas Excellent'. 

--      Faites un tri sur le chrono.

--      Utilisez IIF.
--
--		R�sultat attendu:
			--DatePartie              Chrono      Qualification
			------------------------- ----------- -------------
			--2021-01-02 02:21:20.000 10874       Excellent
			--2021-08-12 09:55:02.000 11025       Excellent
			--2022-05-28 10:01:55.000 11143       Excellent
			--...
			--2021-05-23 08:34:22.000 17709       Pas Excellent
			--2021-07-03 06:47:15.000 17829       Pas Excellent
			--2022-10-28 06:04:01.000 17834       Pas Excellent

			--(97�lignes affect�es)

-- VOTRE R�PONSE:












-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.	Vous voulez une granularit� plus fine au niveau de la qualification du chrono d'une course.
--      Vous savez qu'un excellent chrono est un chrono plus petit ou �gal � 12000. 
--      Lorsqu'il est entre 12001 et 15000, c'est un chrono satisfaisant.
--      Quand il est plus grand ou �gal � 15000, c'est un chrono faible.


--      Pour chaque participation de la course dont l'id est 10, affichez la bonne qualification du chrono.

--      Faites un tri sur le chrono.

--      Utilisez CASE.
--
--		R�sultat attendu:
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

			--(97�lignes affect�es)



-- VOTRE R�PONSE:














-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.	Vous voulez savoir quels karts, utilis�s dans les participations de la course dont l'id est 10, ont obtenu un chrono Excellent (<=12000).

--			 Utilisez une CTE pour obtenir les participations de cette course ayant un chrono Excellent.
--           Dans le SELECT principal, affichez les diff�rents Karts qui ont �t� utilis� dans les participations de la CTE.

--           Triez le r�sultat par Nom de Kart.
--
--           ATTENTION, n'oubliez pas de mettre un GO Avant et un GO apr�s votre solution car une requ�te CTE doit �tre la seule requ�te de son lot.

			--		R�sultat attendu:
			--Nom
			----------------------
			--Autorhino
			--Beat-bolide
			--Chabriolet
			--Paracoccinelly
			--Propulsar
			--Proto 8
			--Quad Wiggler
			--R�tro
			--Yoshimoto

			--(9�lignes affect�es)

-- VOTRE R�PONSE:









-----------------------------------------------------------------------------------------------------------------------------------------------
-- Q4.	Vous voulez savoir combien de participations il y a dans la course dont l'id est 10 ainsi que le nombre de participations de cette course
--      qui ont un chrono Excellent, Satisfaisant ou Faible.

--  Utilisez une CTE pour compter le nombre de participations de cette course qui ont un chrono Excellent.
--           une autre CTE pour compter le nombre de participations de cette course qui ont un chrono Satisfaisant.
--           une autre CTE  pour compter le nombre de participations de cette course qui ont un chrono Faible.
--           une autre CTE  pour compter le nombre total des participations.

--  Enfin, dans la requ�te principale, affichez le nombre total de participations et le nombre de participations des 3 types de qualifications.
--  PUISQUE chaque CTE contient un seul nombre, vous pouvez faire des jointures artificielles ON 1=1.


--      ATTENTION, n'oubliez pas de mettre un GO avant et un GO apr�s votre solution car une requ�te CTE doit �tre la seule requ�te de son lot.
--
--		R�sultat attendu:
			--CourseID    Nb Total de Participations Nb Excellent Nb Satisfaisant Nb Faible
			------------- -------------------------- ------------ --------------- -----------
			--10          97                         20           40              37

			--(1 ligne affect�e)

-- VOTRE R�PONSE:










-----------------------------------------------------------------------------------------------------------------------------------------------
