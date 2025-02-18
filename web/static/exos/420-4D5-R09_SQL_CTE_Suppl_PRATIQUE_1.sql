USE BD_VenteEnLigne
GO

--Pratique CTE

--Q1) Quels clients ont passé plus de commandes dans la ville (ou les villes) ayant le plus de clients.

--  CONSEILS 
    -- Faites une CTE pour compter combien de clients vous avez par ville.
	-- Faites une autre CTE qui donnera les noms des villes ayant un nombre de client = au max du nombre de clients de la première CTE.
	-- Faites une autre CTE qui donnera le nombre maximum de commandes pour chacune des villes obtenues dans la deuxième CTE.
	-- Faites la requête finale qui donnera le nom des clients dont le nombre de commandes est dans les maximum obtenus dans la dernière CTE


			--Résultat attendu:
			--Nom complet
			-------------------------------------------
			--Peach Princess
			--Koopa Troopa

			--(2 lignes affectées)
--VOTRE RÉPONSE:






-- Q2 Donner la liste des produits qui sont dans la catégorie (les catégories) ayant plus de produits que le nombre moyen de produits 
--    pour toutes les catégories réunies. Affichez les résultats en ordre de nom de catégorie puis en ordre de nom de produit.

--    CONSEILS
       -- CTE pour compter le nombre de produits par catégorie.
       -- CTE pour obtenir les catégories dont leur nombre de produits est supérieur à la moyenne du nombre de produits de la première CTE.
	   -- CTE pour obtenir les produits dans les catégories de la précédante CTE.

			--Résultat attendu:
				--	   NomCategorie                   NomProduit                                                         Description
				-------------------------------- ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Console                        Nintendo Switch                                                         Jouez à la maison et sur la route avec la polyvalente console Nintendo Switch. Connectez-la à votre téléviseur pour l'utiliser comme un système de jeu traditionnel à la maison, ou retirez-la de la station d'accueil pour profiter d'une expérience de jeu sur
				--Console                        Nintendo Switch (OLED)                                                  Des heures de divertissement sont à venir avec la console Nintendo Switch (modèle OLED). Dotée d'un écran OLED de 7 po avec une apparence éclatante, cette console est équipée d'un grand support réglable pour des angles de visionnement plus confortables, d'
				--Console                        Nintendo Switch Lite                                                    Nintendo Switch Lite est un système de Nintendo Switch optimisé pour les jeux personnels et portatifs. Son clavier de commande intégré et sa forme élégante et monocoque facilitent les jeux en déplacement. De plus, elle est compatible avec des jeux comme Su
				--Console                        Playstation 5 (base)                                                     Il comprend la console PS5 dotée de technologies avancées pour donner vie à chaque jeu, et une manette DualSense avec gâchettes adaptatives et prise en charge de la rétroaction haptique.
				--Console                        Playstation 5 (numérique)                                               Console entièrement numérique qui n'utilise pas de disque dur; il suffit de vous connecter à votre compte PlayStation pour acheter et télécharger des jeux
				--Console                        Xbox Series S                                                           Rapide et performante, la console Xbox Series S vous permet de jouer à vos jeux à votre façon. Cette puissante console entièrement numérique est dotée d'un disque SSD de 512 Go pour une expérience de jeu rapide et des temps de chargement réduits. Profitez 
				--Console                        Xbox Series X                                                           Procurez-vous une puissante machine de jeu : la console Xbox Series X. Elle combine un disque SSD de 1 To avec une puissance de traitement graphique de 12 téraflops pour des jeux incroyablement rapides et des temps de chargement réduits. Profitez d'une exp
				--Livre                          Cultiver le désir et vivre aux éclats par FRÉDÉRIC LENOIR               De la philosophie aux neurosciences, en passant par la psychologie, la sociologie et l’économie, Frédéric Lenoir revisite toutes les formes de désir, tant matérielles et sexuelles que spirituelles. Il propose un livre lucide et vibrant, au coeur de nos pro
				--Livre                          Le Caméléon : mémoires d'un agent du FBI infiltré par MARC RUSKIN       L'auteur relate son travail d'agent infiltré du FBI. Il explique comment il a endossé une dizaine d'identités différentes au cours de sa carrière. Il a notamment travaillé sur des opérations ciblant la fraude fiscale, les escroqueries de Wall Street, le tr
				--Processeur                     Core i9-13900K                                                          Doté de technologies de pointe, le processeur Core i9-13900K d'Intel offre la puissance dont vous avez besoin pour jouer, créer du contenu et bien plus encore. Il est compatible avec PCIe 5.0 et 4.0, DDR5 et DDR4, et les cartes mères à jeu de puces des sér
				--Processeur                     Ryzen 9 7950X                                                           Améliorez votre expérience informatique quotidienne avec le processeur à 16 coeurs Ryzen 9 7950X AM5 de 4,5 GHz d'AMD. Grâce à son architecture Zen 4, ce puissant appareil de jeu est doté de 16 coeurs, de 32 fils et de vitesses d'horloges de 5,7 GHz au plu

				--(11 lignes affectées)

-- VOTRE RÉPONSE
