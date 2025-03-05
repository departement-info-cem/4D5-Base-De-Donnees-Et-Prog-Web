

--	Répondez aux questions suivantes, 
--  Faites des tests en insérant ou modifiant des données. 
--  N’oubliez pas de laisser des traces de vos tests.

--  GÉNÉREZ LE DIAGRAMME POUR VOIR LES TABLES

--  EXÉCUTEZ CETTE LIGNE DE CODE
USE [4D5_R11_ThesEtTisanes]
GO

-- QUESTION 1 A)   Créez une vue pour voir tous les types de recettes, toutes les recettes et leurs ingrédients avec leurs quantités dans chaque recette
--                 Incluez tous les id des tables utilisées.

-- VOTRE RÉPONSE:










---- QUESTION 1 B)  Ensuite, utilisez cette vue pour obtenir le résultat suivant:

----Nom Type de Recette          Recette                                        Quantite               NomCommun
-------------------------------- ---------------------------------------------- ---------------------- --------------------------------------------------
----Thés Indiens                 Thé d’Assam à la cardamone                     1/4 de tasse           Cassonade
----Thés Indiens                 Thé d’Assam à la cardamone                     6                      fruits de cardamone
----Thés Indiens                 Thé d’Assam à la cardamone                     3 1/2 tasses           eau
--...
----Tisanes aux fruits           Tisane de citron, d’anis et de fenouil         1 tasse, bouillante    eau
----Tisanes aux fruits           Tisane de citron, d’anis et de fenouil         1/2 c. à soupe         graines de fenouil
----Tisanes aux fruits           Tisane de citron, d’anis et de fenouil         1 c. à thé             framboisier

----(34 ligne(s) affectée(s))

-- VOTRE RÉPONSE:






-- QUESTION 2)	Créez une procédure pour voir toutes les recettes qui contiennent un ingrédient donné en paramètre. 
--              Cette procédure devra utiliser la vue créée en 1 A).

--  Voici le résultat que vous devriez obtenir avec l'id 19 (cassonade)

----Nom Type De Recette                                Recette
------------------------------------------------------ -------------------------------------
----Thés Indiens                                       Thé d’Assam à la cardamone
----Thés Indiens                                       Thé épicé de l’Himalaya

----(2 ligne(s) affectée(s))

-- VOTRE RÉPONSE:






-- QUESTION 3 A)  Faites une fonction qui calculera le nombre d’ingrédients différents qu’offre un fournisseur et retournera cette valeur.

-- VOTRE RÉPONSE:






-- QUESTION 3 B)  Utilisez cette fonction pour obtenir le nombre d'ingrédients différents offerts par le fournisseur dont l'id est 1

-- VOTRE RÉPONSE:






   
-- QUESTION 4 A)  Faites un ALTER TABLE pour ajouter à la table Fournisseur un champ entier NbIngredients 
--                qui contiendra le nombre d'ingrédients différents qu’offre un fournisseur

-- VOTRE RÉPONSE:






-- QUESTION  4 B)  Utilisez cette fonction pour mettre à jour le champs NbIngredients à l’entité Fournisseur.	

-- VOTRE RÉPONSE:







-- QUESTION  4 C) Faites ensuite un SELECT de la table Fournisseur pour vérifier que vous obtenez le résultat suivant:

----FournisseurID Nom                              NbIngredients
----------------- ----------------------------- -- -------------
----1             Grossiste Épices Anatol          29
----2             Herboristerie Desjardins         5

----(2 ligne(s) affectée(s))

--VOTRE RÉPONSE:







-- QUESTION 5)	Faites les scripts DDL pour  ajouter une entité IngredientsTransaction dans le schéma Ingredients
--              qui enregistrera les modifications qui sont faites dans les quantités en inventaire des ingrédients. 

--			    Voici des exemples de données que pourraient contenir 2 enregistrements de cette table :
					--IngredientsTransactionID IngredientID QtyEnTransaction Prix       DateETHeureTransaction
					-------------------------- ------------ ---------------- ---------- -----------------------
					--1                        1            10               4.25       2024-02-07 10:07:32.847
					--2                        1            -4               8.00       2024-02-07 10:07:32.847

					--(2 lignes affectées)

		 			

--             Aussi, n'oubliez pas de faire une contrainte de clé étrangère pour la relation Ingredient qui aura plusieurs IngredientsTransaction

-- VOTRE RÉPONSE:










-- QUESTION 6)	Faites le script DDL pour créer une entité qui s’appelera Fournisseurs.ContactHist qui sera utilisée 
--              pour enregistrer les données d’un contact qui quitte l’emploi d’un fournisseur.
--              Assurez-vous d'y inclure un champ pour la date de l'enregistrement de cette information.

-- VOTRE RÉPONSE:







   
-- QUESTION 7)	Faites un déclencheur pour que lors de la suppression d'un contact d'un fournisseur, 
--              on ajoutera ses données, avec sa date de départ, dans l'entité Fournisseurs.ContactHist créée à la question 6.

--VOTRE RÉPONSE:








-- Pour tester:
-- Ajoutez un nouveau contact pour un fournisseur





-- Affichez ce nouveau contact.
-- Supprimez ce nouveau contact.
-- Vérifiez que ce nouveau contact n'existe plus dans la table Contact.
-- Faites la requête pour vérifier le contenu de [Fournisseurs].[ContactHist] après cette suppression.












-- QUESTION 8)	Ajoutez un schéma appellé Commandes.

-- VOTRE RÉPONSE:







-- QUESTION 9)   Faites le script DDL pour ajouter une table dans le schéma créé à la question 8) qui s’appellera Commande.
--               Cette table sera utilisée pour enregistrer la date et l’heure d’une commande qu’on voudrait faire à un fournisseur. 
--               Elle doit avoir un champ Etat qui peut prendre les différentes valeurs suivantes  : ( Passée, AttenteDeLivraison, Livrée,  AttenteDePaiement, Payée).  

---              Assurez-vous que seules les valeurs citées entre parenthèses sont valides pour cet état de commande.

---              Aussi, n'oubliez pas de faire une contrainte de clé étrangère pour la relation : Un Fournisseur a plusieurs Commande 

--VOTRE RÉPONSE:










-- QUESTION 10)	Faites le script DDL pour ajouter une deuxième table dans le schéma créé à la question 8) qui s’appelera DetailsCommande.
--              Cette table sera utilisée pour enregistrer les ingrédients commandés dans une commande, leurs quantités et leurs prix de vente.
--              Aussi, n'oubliez pas de faire une contrainte de clé étrangère pour la relation : une Commande a plusieurs DetailsCommande

--VOTRE RÉPONSE:










-- QUESTION 11)	Faites un déclencheur pour qu'à chaque fois qu’une commande est 'Livrée',  
--              la quantité en inventaire des ingrédients de la commande est augmentée par la quantité reçue. 

--              ATTENTION: On veut que le code du trigger s'exécute uniquement si on vient de modifier le champ ETAT de la table Commande.

--              On veut aussi vérifier que la nouvelle valeur du champ ETAT est maintenant 'Livrée'

--              Dans ce déclencheur, écrivez le code pour faire des insertions dans la table IngredientsTransaction créée à la question 5) 
--              avec les ingrédients et les prix de ceux-ci obtenus à parie de la table DetailsCommande . 

--VOTRE RÉPONSE:










-- ENSUITE, faites les tests ci-bas: 

--  1. Testez votre déclencheur en insérant une commande avec un état initial de 'Passée'  et des détails pour cette commande (au moins 2 ingédients)
--  2. Vérifiez la quantité en inventaire actuelle des produits de cette commande
--  3. Modifiez l'état de la commande pour qu'elle devienne 'AttenteDeLivraison'
--  4. Vérifiez que la quantité en inventaire actuelle des produits de cette commande n'a pas changé
--  5. Modifiez l'état de la commande pour qu'elle devienne 'Livrée'
--  6. Vérifiez que la quantité en inventaire actuelle des produits de cette commande est maintenant augmentée
--  7. Faites la requête pour vérifier le contenu de [Ingredients].[IngredientsTransaction] pour les ingrédients de la commande
 

--  TESTS    TESTS    TESTS    TESTS

--  1. testez votre déclencheur en insérant une commande avec l'état 'Passée' et des détails pour cette commande




--  2. Montrez la quantité en inventaire des produits de la commande (qu'on n'a pas encore reçus)




--  3. Faites un UPDATE sur Commandes.Commande pour changer l'état de la commande à 'AttenteDeLivraison' 





--  4. Montrez la quantité en inventaire des produits de la commande n'ont pas changés (car on ne les a pas encore reçus) 





--  5. Faites un UPDATE sur Commandes.Commande pour changer l'état de la commande à 'Livrée'





--  6. Montrez la quantité en inventaire des produits de la commande ont changés(car on les a reçus)  





--  Faites la requête pour vérifier le contenu de Ingredients.IngredientsTransaction par la suite




