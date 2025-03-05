

--	R�pondez aux questions suivantes, 
--  Faites des tests en ins�rant ou modifiant des donn�es. 
--  N�oubliez pas de laisser des traces de vos tests.

--  G�N�REZ LE DIAGRAMME POUR VOIR LES TABLES

--  EX�CUTEZ CETTE LIGNE DE CODE
USE [4D5_R11_ThesEtTisanes]
GO

-- QUESTION 1 A)   Cr�ez une vue pour voir tous les types de recettes, toutes les recettes et leurs ingr�dients avec leurs quantit�s dans chaque recette
--                 Incluez tous les id des tables utilis�es.

-- VOTRE R�PONSE:










---- QUESTION 1 B)  Ensuite, utilisez cette vue pour obtenir le r�sultat suivant:

----Nom Type de Recette          Recette                                        Quantite               NomCommun
-------------------------------- ---------------------------------------------- ---------------------- --------------------------------------------------
----Th�s Indiens                 Th� d�Assam � la cardamone                     1/4 de tasse           Cassonade
----Th�s Indiens                 Th� d�Assam � la cardamone                     6                      fruits de cardamone
----Th�s Indiens                 Th� d�Assam � la cardamone                     3 1/2 tasses           eau
--...
----Tisanes aux fruits           Tisane de citron, d�anis et de fenouil         1 tasse, bouillante    eau
----Tisanes aux fruits           Tisane de citron, d�anis et de fenouil         1/2 c. � soupe         graines de fenouil
----Tisanes aux fruits           Tisane de citron, d�anis et de fenouil         1 c. � th�             framboisier

----(34�ligne(s) affect�e(s))

-- VOTRE R�PONSE:






-- QUESTION 2)	Cr�ez une proc�dure pour voir toutes les recettes qui contiennent un ingr�dient donn� en param�tre. 
--              Cette proc�dure devra utiliser la vue cr��e en 1 A).

--  Voici le r�sultat que vous devriez obtenir avec l'id 19 (cassonade)

----Nom Type De Recette                                Recette
------------------------------------------------------ -------------------------------------
----Th�s Indiens                                       Th� d�Assam � la cardamone
----Th�s Indiens                                       Th� �pic� de l�Himalaya

----(2�ligne(s) affect�e(s))

-- VOTRE R�PONSE:






-- QUESTION 3 A)  Faites une fonction qui calculera le nombre d�ingr�dients diff�rents qu�offre un fournisseur et retournera cette valeur.

-- VOTRE R�PONSE:






-- QUESTION 3 B)  Utilisez cette fonction pour obtenir le nombre d'ingr�dients diff�rents offerts par le fournisseur dont l'id est 1

-- VOTRE R�PONSE:






   
-- QUESTION 4 A)  Faites un ALTER TABLE pour ajouter � la table Fournisseur un champ entier NbIngredients 
--                qui contiendra le nombre d'ingr�dients diff�rents qu�offre un fournisseur

-- VOTRE R�PONSE:






-- QUESTION  4 B)  Utilisez cette fonction pour mettre � jour le champs NbIngredients � l�entit� Fournisseur.	

-- VOTRE R�PONSE:







-- QUESTION  4 C) Faites ensuite un SELECT de la table Fournisseur pour v�rifier que vous obtenez le r�sultat suivant:

----FournisseurID Nom                              NbIngredients
----------------- ----------------------------- -- -------------
----1             Grossiste �pices Anatol          29
----2             Herboristerie Desjardins         5

----(2�ligne(s) affect�e(s))

--VOTRE R�PONSE:







-- QUESTION 5)	Faites les scripts DDL pour  ajouter une entit� IngredientsTransaction dans le sch�ma Ingredients
--              qui enregistrera les modifications qui sont faites dans les quantit�s en inventaire des ingr�dients. 

--			    Voici des exemples de donn�es que pourraient contenir 2 enregistrements de cette table :
					--IngredientsTransactionID IngredientID QtyEnTransaction Prix       DateETHeureTransaction
					-------------------------- ------------ ---------------- ---------- -----------------------
					--1                        1            10               4.25       2024-02-07 10:07:32.847
					--2                        1            -4               8.00       2024-02-07 10:07:32.847

					--(2�lignes affect�es)

		 			

--             Aussi, n'oubliez pas de faire une contrainte de cl� �trang�re pour la relation Ingredient qui aura plusieurs IngredientsTransaction

-- VOTRE R�PONSE:










-- QUESTION 6)	Faites le script DDL pour cr�er une entit� qui s�appelera Fournisseurs.ContactHist qui sera utilis�e 
--              pour enregistrer les donn�es d�un contact qui quitte l�emploi d�un fournisseur.
--              Assurez-vous d'y inclure un champ pour la date de l'enregistrement de cette information.

-- VOTRE R�PONSE:







   
-- QUESTION 7)	Faites un d�clencheur pour que lors de la suppression d'un contact d'un fournisseur, 
--              on ajoutera ses donn�es, avec sa date de d�part, dans l'entit� Fournisseurs.ContactHist cr��e � la question 6.

--VOTRE R�PONSE:








-- Pour tester:
-- Ajoutez un nouveau contact pour un fournisseur





-- Affichez ce nouveau contact.
-- Supprimez ce nouveau contact.
-- V�rifiez que ce nouveau contact n'existe plus dans la table Contact.
-- Faites la requ�te pour v�rifier le contenu de [Fournisseurs].[ContactHist] apr�s cette suppression.












-- QUESTION 8)	Ajoutez un sch�ma appell� Commandes.

-- VOTRE R�PONSE:







-- QUESTION 9)   Faites le script DDL pour ajouter une table dans le sch�ma cr�� � la question 8) qui s�appellera Commande.
--               Cette table sera utilis�e pour enregistrer la date et l�heure d�une commande qu�on voudrait faire � un fournisseur. 
--               Elle doit avoir un champ Etat qui peut prendre les diff�rentes valeurs suivantes  : ( Pass�e, AttenteDeLivraison, Livr�e,  AttenteDePaiement, Pay�e).  

---              Assurez-vous que seules les valeurs cit�es entre parenth�ses sont valides pour cet �tat de commande.

---              Aussi, n'oubliez pas de faire une contrainte de cl� �trang�re pour la relation : Un Fournisseur a plusieurs Commande 

--VOTRE R�PONSE:










-- QUESTION 10)	Faites le script DDL pour ajouter une deuxi�me table dans le sch�ma cr�� � la question 8) qui s�appelera DetailsCommande.
--              Cette table sera utilis�e pour enregistrer les ingr�dients command�s dans une commande, leurs quantit�s et leurs prix de vente.
--              Aussi, n'oubliez pas de faire une contrainte de cl� �trang�re pour la relation : une Commande a plusieurs DetailsCommande

--VOTRE R�PONSE:










-- QUESTION 11)	Faites un d�clencheur pour qu'� chaque fois qu�une commande est 'Livr�e',  
--              la quantit� en inventaire des ingr�dients de la commande est augment�e par la quantit� re�ue. 

--              ATTENTION: On veut que le code du trigger s'ex�cute uniquement si on vient de modifier le champ ETAT de la table Commande.

--              On veut aussi v�rifier que la nouvelle valeur du champ ETAT est maintenant 'Livr�e'

--              Dans ce d�clencheur, �crivez le code pour faire des insertions dans la table IngredientsTransaction cr��e � la question 5) 
--              avec les ingr�dients et les prix de ceux-ci obtenus � parie de la table DetailsCommande . 

--VOTRE R�PONSE:










-- ENSUITE, faites les tests ci-bas: 

--  1. Testez votre d�clencheur en ins�rant une commande avec un �tat initial de 'Pass�e'  et des d�tails pour cette commande (au moins 2 ing�dients)
--  2. V�rifiez la quantit� en inventaire actuelle des produits de cette commande
--  3. Modifiez l'�tat de la commande pour qu'elle devienne 'AttenteDeLivraison'
--  4. V�rifiez que la quantit� en inventaire actuelle des produits de cette commande n'a pas chang�
--  5. Modifiez l'�tat de la commande pour qu'elle devienne 'Livr�e'
--  6. V�rifiez que la quantit� en inventaire actuelle des produits de cette commande est maintenant augment�e
--  7. Faites la requ�te pour v�rifier le contenu de [Ingredients].[IngredientsTransaction] pour les ingr�dients de la commande
 

--  TESTS    TESTS    TESTS    TESTS

--  1. testez votre d�clencheur en ins�rant une commande avec l'�tat 'Pass�e' et des d�tails pour cette commande




--  2. Montrez la quantit� en inventaire des produits de la commande (qu'on n'a pas encore re�us)




--  3. Faites un UPDATE sur Commandes.Commande pour changer l'�tat de la commande � 'AttenteDeLivraison' 





--  4. Montrez la quantit� en inventaire des produits de la commande n'ont pas chang�s (car on ne les a pas encore re�us) 





--  5. Faites un UPDATE sur Commandes.Commande pour changer l'�tat de la commande � 'Livr�e'





--  6. Montrez la quantit� en inventaire des produits de la commande ont chang�s(car on les a re�us)  





--  Faites la requ�te pour v�rifier le contenu de Ingredients.IngredientsTransaction par la suite




