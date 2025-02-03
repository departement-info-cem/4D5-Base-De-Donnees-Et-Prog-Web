
-- FAITES UN GROUPE D'INSERTIONS À LA FOIS !
-- L'ORDRE DE CES INSERTIONS DOIT ABSOLUMENT ÊTRE RESPECTÉ ! N'avancez pas si une insertion est mal gérée.

-- À TOUT MOMENT : Si votre BD est dans un état inattendu, supprimez votre BD, recréez-la à partir de 
-- votre script et finalement refaites toutes les insertions qui "Doivent fonctionner ✅".

-- INSERTION #1 (Doit fonctionner ✅)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

USE Messagerie

INSERT INTO Utilisateurs.Utilisateur (Pseudo, Courriel, DateNaissance, Description, Ville, Pays)
VALUES 
('Loveboy22', 'loveboy@gmail.com', '20000101', NULL, 'Longueuil', 'Canada'), 
('Karen_BZ', 'k@k.com', '1985-02-28', 'Je cherche une relation à long terme avec le manager', 'La Prairie', 'Canada'), 
('Gabar69', 'gabarou@hotmail.com', '20021012', 'J''aime bien Netflix et relaxer', 'Boucherville', 'Canada'), 
('BasicWB', 'bwb@gmail.com', '20011114', 'Voyages, restaurants, expériences, cinéma !', 'Repentigny', 'Canada'), 
('KoopToo_Daz', 'koop12@hotmail.ca', '19970314', NULL, 'Terrebonne', 'Canada');

-- Ça ne fonctionne pas ? Vérifier vos datatypes, vos NOT NULL, votre IDENTITY(1,1), etc.



-- INSERTION #2 (Doit échouer 🚫)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

INSERT INTO Utilisateurs.Utilisateur (Pseudo, Courriel, DateNaissance, Description, Ville, Pays)
VALUES
('Loveboy22', 'duplicateusername@gmail.com', '20000102', NULL, 'Longueuil', 'Canada');

-- Ça fonctionne ? Vérifiez votre contrainte UNIQUE de pseudo



-- INSERTION #3 (Doit échouer 🚫)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

INSERT INTO Utilisateurs.Utilisateur (Pseudo, Courriel, DateNaissance, Description, Ville, Pays)
VALUES
(NULL, 'null@gmail.com', '20020102', NULL, NULL, NULL);

-- Ça fonctionne ? Il vous manque des NOT NULL ...



-- INSERTION #4 (Doit échouer 🚫)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

INSERT INTO Messages.Piecejointe  ( Nom, TypeDePiece, MessageID)
VALUES
('Script Validation', 'PDF')

-- Ça fonctionne ? Il vous manque un NOT NULL pour la table PieceJointe.



-- INSERTION #5 (Doit échouer 🚫)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

INSERT INTO Messages.Piecejointe  ( Nom, TypeDePiece, MessageID)
VALUES
('Script Validation', 'fichier sql', 1)

-- Ça fonctionne ? Vérifiez votre contrainte CHECK de TypeDePiece.



-- INSERTION #6 (Doit fonctionner ✅)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

BEGIN TRANSACTION;

INSERT INTO Messages.Message (DateEnvoi, Sujet, LeMessage, EstLu, AUtilisateurID, DeUtilisateurID)
VALUES
(GETDATE(), 'Bd est le fun', 'Debut de session', 0,(SELECT UtilisateurID FROM Utilisateurs.Utilisateur WHERE Pseudo = 'Loveboy22'),
(SELECT UtilisateurID FROM Utilisateurs.Utilisateur WHERE Pseudo = 'BasicWB'))

IF @@ERROR <> 0 BEGIN ROLLBACK TRANSACTION; RETURN; END

COMMIT TRANSACTION;

-- Si ça a fonctionné, ça veut dire qu'on a créé un message entre Loveboy22 et BasicWB. Place à l'amour !



-- INSERTION #7 (Doit échouer 🚫)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

BEGIN TRANSACTION;

INSERT INTO Messages.Message (DateEnvoi, Sujet, LeMessage, EstLu, AUtilisateurID, DeUtilisateurID)
VALUES
(GETDATE(), 'R04 DDL', 'Tests DDL', 0,(SELECT UtilisateurID FROM Utilisateurs.Utilisateur WHERE Pseudo = 'Loveboy22'),
(1000))

IF @@ERROR <> 0 BEGIN ROLLBACK TRANSACTION; RETURN; END

COMMIT TRANSACTION;

-- Ça fonctionne ? Vos contraintes de clés étrangères sont manquantes ou mauvaises pour Message.



-- INSERTION #8 (Doit fonctionner ✅)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

INSERT INTO Messages.Piecejointe  ( Nom, TypeDePiece, MessageID)
VALUES
('Script Validation', 'PDF',  (
SELECT TOP 1 MessageID FROM Messages.Message as UC1
WHERE AUtilisateurID = (SELECT TOP 1 UtilisateurID FROM Utilisateurs.Utilisateur WHERE Pseudo = 'Loveboy22') AND 
EXISTS (SELECT MessageID FROM Messages.Message as UC2 
WHERE DeUtilisateurID = (SELECT TOP 1 UtilisateurID FROM Utilisateurs.Utilisateur WHERE Pseudo = 'BasicWB') AND
UC1.MessageID = UC2.MessageID)
))

-- Ça ne fonctionne pas ? Ceci est censé ajouté une pièce jointe dans le message partagé par Loveboy22 et BasicWB.
-- L'insertion #5 avait-elle vraiment fonctionné ? Vos Datatype sont-ils les bons ?




-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █          FIN DES INSERTIONS !             █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Après toutes ces insertions, vous êtes censés avoir : 5 utilisateurs, 1 message,  1 piece jointe à un message.
-- Nous allons maintenant tenter une suppression de données pour vérifier que vous avez bien fait vos ON DELETE CASCADE.

-- SUPPRESSION #1 (Doit fonctionner ✅)
-- ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀


DELETE FROM Messages.Message WHERE MessageID = (SELECT MAX (MessageID) FROM Messages.Message)

-- Les tables Message et PieceJointe sont toutes les deux censées être vides maintenant !!!


SELECT * FROM Messages.Message
SELECT * FROM Messages.PieceJointe
