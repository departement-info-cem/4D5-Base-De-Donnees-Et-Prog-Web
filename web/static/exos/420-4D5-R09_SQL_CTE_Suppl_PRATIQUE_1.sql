USE BD_VenteEnLigne
GO

--Pratique CTE

--Q1) Quels clients ont pass� plus de commandes dans la ville (ou les villes) ayant le plus de clients.

--  CONSEILS 
    -- Faites une CTE pour compter combien de clients vous avez par ville.
	-- Faites une autre CTE qui donnera les noms des villes ayant un nombre de client = au max du nombre de clients de la premi�re CTE.
	-- Faites une autre CTE qui donnera le nombre maximum de commandes pour chacune des villes obtenues dans la deuxi�me CTE.
	-- Faites la requ�te finale qui donnera le nom des clients dont le nombre de commandes est dans les maximum obtenus dans la derni�re CTE


			--R�sultat attendu:
			--Nom complet
			-------------------------------------------
			--Peach Princess
			--Koopa Troopa

			--(2�lignes affect�es)
--VOTRE R�PONSE:






-- Q2 Donner la liste des produits qui sont dans la cat�gorie (les cat�gories) ayant plus de produits que le nombre moyen de produits 
--    pour toutes les cat�gories r�unies. Affichez les r�sultats en ordre de nom de cat�gorie puis en ordre de nom de produit.

--    CONSEILS
       -- CTE pour compter le nombre de produits par cat�gorie.
       -- CTE pour obtenir les cat�gories dont leur nombre de produits est sup�rieur � la moyenne du nombre de produits de la premi�re CTE.
	   -- CTE pour obtenir les produits dans les cat�gories de la pr�c�dante CTE.

			--R�sultat attendu:
				--	   NomCategorie                   NomProduit                                                         Description
				-------------------------------- ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Console                        Nintendo Switch                                                         Jouez � la maison et sur la route avec la polyvalente console Nintendo Switch. Connectez-la � votre t�l�viseur pour l'utiliser comme un syst�me de jeu traditionnel � la maison, ou retirez-la de la station d'accueil pour profiter d'une exp�rience de jeu sur
				--Console                        Nintendo Switch (OLED)                                                  Des heures de divertissement sont � venir avec la console Nintendo Switch (mod�le OLED). Dot�e d'un �cran OLED de 7 po avec une apparence �clatante, cette console est �quip�e d'un grand support r�glable pour des angles de visionnement plus confortables, d'
				--Console                        Nintendo Switch Lite                                                    Nintendo Switch Lite est un syst�me de Nintendo Switch optimis� pour les jeux personnels et portatifs. Son clavier de commande int�gr� et sa forme �l�gante et monocoque facilitent les jeux en d�placement. De plus, elle est compatible avec des jeux comme Su
				--Console                        Playstation 5 (base)                                                     Il comprend la console PS5 dot�e de technologies avanc�es pour donner vie � chaque jeu, et une manette DualSense avec g�chettes adaptatives et prise en charge de la r�troaction haptique.
				--Console                        Playstation 5 (num�rique)                                               Console enti�rement num�rique qui n'utilise pas de disque dur; il suffit de vous connecter � votre compte PlayStation pour acheter et t�l�charger des jeux
				--Console                        Xbox Series S                                                           Rapide et performante, la console Xbox Series S vous permet de jouer � vos jeux � votre fa�on. Cette puissante console enti�rement num�rique est dot�e d'un disque SSD de 512 Go pour une exp�rience de jeu rapide et des temps de chargement r�duits. Profitez 
				--Console                        Xbox Series X                                                           Procurez-vous une puissante machine de jeu : la console Xbox Series X. Elle combine un disque SSD de 1 To avec une puissance de traitement graphique de 12 t�raflops pour des jeux incroyablement rapides et des temps de chargement r�duits. Profitez d'une exp
				--Livre                          Cultiver le d�sir et vivre aux �clats par FR�D�RIC LENOIR               De la philosophie aux neurosciences, en passant par la psychologie, la sociologie et l��conomie, Fr�d�ric Lenoir revisite toutes les formes de d�sir, tant mat�rielles et sexuelles que spirituelles. Il propose un livre lucide et vibrant, au coeur de nos pro
				--Livre                          Le Cam�l�on : m�moires d'un agent du FBI infiltr� par MARC RUSKIN       L'auteur relate son travail d'agent infiltr� du FBI. Il explique comment il a endoss� une dizaine d'identit�s diff�rentes au cours de sa carri�re. Il a notamment travaill� sur des op�rations ciblant la fraude fiscale, les escroqueries de Wall Street, le tr
				--Processeur                     Core i9-13900K                                                          Dot� de technologies de pointe, le processeur Core i9-13900K d'Intel offre la puissance dont vous avez besoin pour jouer, cr�er du contenu et bien plus encore. Il est compatible avec PCIe 5.0 et 4.0, DDR5 et DDR4, et les cartes m�res � jeu de puces des s�r
				--Processeur                     Ryzen 9 7950X                                                           Am�liorez votre exp�rience informatique quotidienne avec le processeur � 16 coeurs Ryzen 9 7950X AM5 de 4,5 GHz d'AMD. Gr�ce � son architecture Zen 4, ce puissant appareil de jeu est dot� de 16 coeurs, de 32 fils et de vitesses d'horloges de 5,7 GHz au plu

				--(11�lignes affect�es)

-- VOTRE R�PONSE
