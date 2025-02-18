

USE [4D5_R09_Labo];


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █  Création de procédures stockées  █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

			-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
			-- Procédure #1 : Avec @CommandeID en paramètre, (Qui contient l'id de la commande)
			--                donner la liste des articles (nom, prix et la quantité achetée) 
			--                de la commande. Le montant affiché doit être le prix régulier de
			--                l’article multiplié par la quantité achetée.
			-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

--VOTRE RÉPONSE:










			-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
			-- Exécutez cette procédure pour la commande dont l'ID est 5.
			-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
			--Résultat attendu:
			--Nom                                                Qte         Montant
			---------------------------------------------------- ----------- ---------------------------------------
			--Rhinocéros                                         2           27479.98
			--Clé USB 32 GO USB USB 3.0 USB                      3           21.57
			--Sac à main Birkin Hermès                           1           24399.99

			--(3 lignes affectées)

--VOTRE RÉPONSE:






			-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
			-- Procédure #2 : Avec le numéro d’article @ArticleID, la quantité @Qte, le prix payé (@PrixPaye),
			--                le numéro d’utilisateur @UtilisateurID et l’adresse @AdresseID vous voudrez 
			--                insérez une rangée dans la table ArticleCommande pour la bonne commande.

            --			Pour déterminer l’ID de la Commande, utilisez la règle suivante :
			--
			--                • S’il existe une commande non traitée pour cet utilisateur avec 
			--                  l’adresse fournie, on utilise l’ID de la commande la plus récente 
			--                  qui respecte ces conditions pour la rangée qu’on insère dans 
			--                  ArticleCommande.
			--
			--                • Sinon, créez (insérez) une nouvelle rangée dans la table Commande.
			--                  La DatePassee est GETDATE() et EstTraitee vaut 0. 
			--                  Utilisez ensuite l’ID de cette nouvelle commande pour insérer la nouvelle 
			--                  rangée dans ArticleCommande.
			
			--			ATTENTION, si vous venez d'insérer une nouvelle commande, vous pouvez obtenir son ID avec 
			--			SELECT @CommandeID = SCOPE_IDENTITY();
			--
			-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀


			
-- VOTRE RÉPONSE:









			-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
			-- Utilisez ce code pour appeler et tester la procédure #2
			-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

-- Test #1 :
-- Observez que l'utilisateur ID 4 n'a présentement pas de commande non traitée à l'adresse ID 6
SELECT * FROM Commandes.Commande WHERE UtilisateurID = 4  AND AdresseID = 6


EXEC Commandes.usp_NouvelArticle
	@ArticleID = 1, -- Porte-bananes
	@Qte = 1, 
	@PrixPaye = 4.98,
	@UtilisateurID = 4, -- Paul Robidoux
	@AdresseID = 6; -- 163321 Apt. 391 rue Nadepaute
GO


-- Test #1 : Est-ce qu'une rangée a bien été ajouté dans les
--			 tables Commande ET ArticleCommande ?
--           À la fin dans Commande on doit avoir        → (X, ?, Null, 0, 4, 6)   -- On n'avait pas de commande pour l'utilisateurID 4. On a a créé une.
--           À la fin dans ArticleCommande on doit avoir → (?, 1,4.98, 1, X)

--           ? = n'importe quelle valeur
--           X = n'importe quelle valeur, mais la même pour les deux X


 SELECT TOP(1) * FROM Commandes.Commande ORDER BY CommandeID DESC
 SELECT TOP(1) * FROM Commandes.ArticleCommande ORDER BY ArticleCommandeID DESC
--
-- Test #2 :
-- Observez que l'utilisateur ID 1 a présentement une commande non traitée à l'adresse ID 1
SELECT * FROM Commandes.Commande WHERE UtilisateurID = 1  AND AdresseID = 1

GO
EXEC Commandes.usp_NouvelArticle
	@ArticleID = 1, -- Porte-bananes
	@Qte = 1, 
	@PrixPaye = 6.98,
	@UtilisateurID = 1, -- Simone De Belleville
	@AdresseID = 1; -- 56 rue De Provence
	
-- Test #2 : Est-ce qu'une rangée a SEULEMENT été ajoutée
--           dans la table ArticleCommande ?
--           La rangée doit être (?, 1, 6.98,  1, 12)

SELECT TOP(1) * FROM Commandes.Commande ORDER BY CommandeID DESC   --- C'est toujours la commande ID 13. On n'a pas ajouté de nouvelle commande
SELECT TOP(1) * FROM Commandes.ArticleCommande ORDER BY ArticleCommandeID DESC