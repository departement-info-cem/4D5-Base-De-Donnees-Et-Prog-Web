# Contraintes et objets

## Contraintes
| Objets | Standard | Exemple |
| --- | --- | --- |
| Clé primaire | **PK**_table_champ | _PK_Client_ClientID_ |
| Clé étrangère | **FK**_table_champ | _FK_Commande_ClientID_ |
| Contrainte Unique | **UC**_table_champ | _UC_Client_NAS_ |
| Contrainte Default | **DF**_table_champ | _DF_Commande_DateLivraison_ |
| Contrainte Check | **CK**_table_champ | _CK_Client_LimiteCredit_ |

## Objets
| Objets | Standard | Exemple |
| --- | --- | --- |
| Vue | Schema.**vw**_NomVue | _Commandes.vw_ClientCommandeProduits_ |
| Fonction | Schema.**ufn**_NomVue | _Produits.ufn_ObtenirTotalPrix_ |
| Procédure Stockée | Schema.**usp**_NomVue | _Produits.usp_AugmenterPrix_ |
| Délencheur | Schema.**trg_x**NomVue | _Produits.trg_uProduit_  |

:::note
**X** étant soit **i** pour **insert**, **u** pour **update**, **d** pour **delete** ou toute combinaison de ces 3 lettres.
:::

---

[🔗Standards en format PDF](@site/static/powerpoint/420_4D5_R04_Standards-à-respecter_Complement.pdf)
