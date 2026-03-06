# Création de table SQL

## Règles générales

Plusieurs standards existent pour la création de table SQL. En gros, nous utiliserons les standards de Microsoft puisque nous utilisons leur outils.

Il y a aussi les standards adoptés par l’industrie.

Finalement, chaque entreprise ajoute des standards qui lui sont propres.

Voici un petit résumée des standards que nous allons adopter ici.


### Choses à éviter
- Le pluriel
    - *Ventes* ➡️ *Vente*
    - *Inscriptions* ➡️ *Inscription*
- Les caractères spéciaux (É, à, ç, @, etc)
    - *Prénom* ➡️ *Prenom*
    - *Leçon* ➡️ *Lecon* 
- Les espaces. Optez pour un "Pascal Case"
    - *Code Postal* ➡️ *CodePostal*
    - *Tenue de route* ➡️ *TenueDeRoute*
- Les noms trop longs, utilisez plutôt des abréviations:
    - *Numéro de téléphone* ➡️ *NoTel* / *Telephone*
    - *Adresse de la personne* ➡️ *Adresse*
    - *NumeroDeSeries* ➡️ *NoSerie*
---

### Création de tables de liaison (intermédiaire)

Pour nommer une table intermédiaire, il est toujours possible de fusionner les deux noms de tables. Parcontre, ne soyez pas gêné d'utiliser un nom qui est plus explicite et qui est plus significatif. Un nom qui parle est supérieur à une fusion.

|Nom de tables | ✅ Noms valides |
|---|---|
| Un **Etudiant** est _inscrit_ à un **Cours**. | EtudiantCours, Inscription, ~~Horraire~~ |
| Un **Client** fait *l'achat* de plusieurs **Produit**. | Command, Achat, Vente ou || ~~ClientProduit~~ |
| Un **Client** *loue* un **Vehicule** | Location, ClientVehicule |

---

### Nom de champs (colonnes)
| Nom de champs | ✅ Valide | ❌ Invalide |
|---|---|---|
|Pas de caractères spéciaux: é, ç, à, è, etc | Prenom, Telephone | Prénom, Téléphone |
|Un seul mot au singulier, première lettre en majuscule | Nom, Prenom, Adresse | nom, prenom, adresse |
| Évitez de mettre le nom de la table avec le champs. | Nom, Prenom, Adresse | Nom**~~Client~~**, Prenom**~~Client~~**, Adresse**~~Client~~**|
| Évitez les espaces. Fusionner les mots ensemble séparée par des majuscules. "PascaleCase" | CodePostal | code postal, codePostal, Code_Postal |
|Évitez les articles pour séparer les mots. Utilisez des abréviations lorsque possible. |NoTelephone, DateNaissance, DateDebut, DateHreDebut, DateHeureDebut | Numero de telephone, Date de naissance |


### Type de donnéees appropriée

| Donnée | Type |
|---|---|
| Clé primaire, Clé étrangère | int |
| Texte et numéerique | nvarchar(x) |
| Date seulement | Date |
| Date avec heure | DateTime |
| Champ monétaire | Money | 
| Décimal | Decimal(18,2) |
| Booléen | Bit |

Pour déterminer les longueurs à utiliser, trouvez la taille maximale des données qui pourrait être contenue. Vérifiez les règles d'affaires. Si vous n'avez toujours pas d'idée, demandez au client!

---

### Autorisation des valeurs à NULL
🚫Il est strictement interdit d'autoriser les NULLs sur les **clés primaires**.

En ce qui concerne toutes les autres colonnes, il faut se poser la question. Habituellement, on veut des données pour presque toutes les colonnes d'une table.

Exemple de question: "Est-il possible qu'un **Velo** ait un **VeloID** mais pas de **NbVitesse**?

Si vous n'avez toujours pas d'idées, demandez au client!

---

[🔗Standards en format PDF](@site/static/powerpoint/420-4D5_R03_Standards-à-respecter.pdf)