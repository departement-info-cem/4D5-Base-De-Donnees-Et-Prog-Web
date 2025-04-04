USE [4D5_R11_ThesEtTisanes]
GO


INSERT INTO Fournisseurs.Fournisseur ( Nom, SiteWeb, Telephone, delaiLivraison, ententePaiement) VALUES ('Grossiste Épices Anatol', 'www.anatolspices.com/fr/','514-276-0107','2 jours','30 jours');
INSERT INTO Fournisseurs.Fournisseur ( Nom, SiteWeb, Telephone, delaiLivraison, ententePaiement) VALUES ('Herboristerie Desjardins','herboristeriedesjardins.com','514-523-4860','4 jours', '0');



INSERT INTO Fournisseurs.Contact ( Nom, Prenom, TelCell, Courriel, FournisseurID) VALUES ('Dubé', 'Marc', '514-276-0107-2345','dube.marc@anatolspices.com',1);
INSERT INTO Fournisseurs.Contact ( Nom, Prenom, TelCell, Courriel, FournisseurID) VALUES ('Francoeur', 'Diane', '514-523-4860','contactClientele@herboristeriedesjardins.com',2);



INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Achillée millefeuille', 'Achillea millefolium', 'Vaso-dilatateur du système sanguin périphérique et tonique de tous les vaisseaux sanguins ; antispasmodique',	'Régularise les problèmes reliés aux règles, la fièvre et les saignements abondants. Utilisée localement en cataplasme et pour cicatriser les blessures.', 500, 100);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Anis','Pimpinella anisum','Antiseptique et expectorant (rhume) ; calmant des crampes abdominales et des spasmes.','Calme la toux, les infections de la poitrine et les coliques accompagnées de flatulences.',600, 200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Avoine (Paille d'')','Avena sativa','Détend et « nourrit » le système nerveux, riche en calcium et en fibres, contribue à soulager des douleurs rhumatismales ou des maux de dos','Indiquée aux gens de caractère nerveux ou névrotique car elle soulage de la débilité et de l’épuisement causés par la nervosité chronique; utilisée en bains contre diverses formes de douleurs.',300,50);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Bleuets (Myrtilles)','Vaccinium myrtillis','Réduit le taux de sucre du sang; excellent astringent et antioxydant pour les yeux.','Combat le glaucome et le diabète et soulage les yeux fatigués et injectés de sang.',600,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Buchu','Barosima betulina','Diurétique et antiseptique des voies urinaires (action antibactérienne)','Indiqué quand il y a présence de sang et de mucus dans l’urine, symptôme fréquent d’une infection des voies urinaires.',300,50);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Camomille','Cinnamomum verum','Sédatif amer, clamant de tout l’organisme; anti-inflammatoire','Aide à combattre l’insomnie, les flatulences, les crampes et les malaises',400,100);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Euphraise','Euphrasia officinalis','Contre le catarrhe et anti-inflammatoire, aux vertus astringentes','À utiliser contre les maladies des muqueuses, la sinusite, la congestion et les mucosités de la gorge.',500,100);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Fenouil','Foeniculum vulgare','Antiseptique, antispasmodique et expectorant qui détend le système digestif','Soulage des flatulences et des crampes et calme la toux; l''huile de fenouil est antiseptique et indiquée contre les rhumes de poitrine.',200,100);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES ( 'Gingembre','Zingiber officinale','Calorifique de l’organisme; carminatif et anti-inflammatoire indiqué contre les nausées; diaphorétique (provoque la sudation)','Contre l’arthrite, la mauvaise digestion, le mal des transports et la fièvre',300,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Ginseng coréen','Panax ginseng','Accroît et améliore la « performance » mentale et physique','Indiqué aux gens âgés et affaiblis, combat les pertes de mémoire et fortifie l’organisme pendant une convalescence',200,50);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Hibiscus','Hibiscus rosa-sinensis','Un astringent au goût citronné à utiliser dans diverses tisanes','Assez riche en vitamine C, donc indiqué contre le rhume. Donne un petit goût acidulé agréable aux tisanes.',600,400);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Luzerne','Medicago sativa','Détend, fortifie et tonifie les vaisseaux sanguins','Tonique à utiliser après des pertes sanguines ou pour réduire les saignements',300,50);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Maïs (barbes de )','Zea mays','Apaisant des voies urinaires et du système respiratoire, diurétique et tonique des voies urinaires','Combat la cystite et l’énurésie; prémunit contre les calculs rénaux.',300,50);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Millepertuis','Hupericum perforatum','Sédatif et tonique du système nerveux.','Contre l''hystérie, la dépression, l''apathie et la fatigue ',500,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Pissenlit','Taraxacum radix','Diurétique riche en potassium, tonique des voies digestives, dépuratif des articulations atteintes de rhumatismes','À utiliser contre l’œdème, l’indigestion, les maladies de peau chroniques et l’arthrite',600,300);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Réglisse', 'Glycyrrhiza glabra','Utilisée par les herboristes comme une panacée, la réglisse est antiallergique, anti-inflammatoire et expectorante; elle réduit le catarrhe et apaise et soigne les ulcères du système digestif.','Soulage de la toux, du rhume, du mal de gorge et de la grippe. Contribue à régulariser la fièvre, à décongestionner et à soulager des ulcères du système digestif.',500,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Aubépine','Crataegus','Hypotenseur et tonique des tissus cardiaques, dilatateur des vaisseaux sanguins périphériques.','Aide à combattre l’hypertension et les palpitations.',400,100);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'Cassonade','',NULL,NULL,800,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'fruits de cardamone','',NULL,NULL,800,200);
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'eau','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'feuilles de thé d''Assam','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'lait','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'feuille de laurier','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'graines de fenouil','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'clous de girofle','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'bâton de cannelle','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'grains de poivre noir','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'scutellaire séchée','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'feuilles de thé Darjeeling','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'cannelle moulue','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'ortie','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'framboisier','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'zestes de citron','',NULL,NULL,800,200); 
INSERT INTO Ingredients.Ingredient ( NomCommun, NomLatin, IndicationBienfaits, ContreIndications, QtyEnInventaire, QtyMinDeRecommande) VALUES (  'romarin','',NULL,NULL,800,200);  

INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,1,'50 gr', 5.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,1,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (2,2,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (2,3,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,4,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,5,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (2,6,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (2,7,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (2,8,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,9,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,10,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,11,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,12,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,13,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,14,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,15,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,16,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,17,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,18,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,19,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,20,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,21,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,22,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,23,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,24,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,25,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,26,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,27,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,28,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,29,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,30,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,31,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,32,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,33,'500 gr', 25.99, 1);
INSERT INTO Fournisseurs.FournisseurIngredient ( FournisseurID, IngredientID, FormatIngredient, PrixFournisseur,  EstDisponible) VALUES (1,34,'500 gr', 25.99, 1);


INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Thés chinois');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Thés Indiens');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Thés japonais');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes énergisantes');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes antistress');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Toniques printaniers');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes dépuratives');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes pour le système immunitaire');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes aux fruits');
INSERT INTO Recettes.TypeRecette ( Nom) VALUES ('Tisanes aux fleurs');

INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Thé d’Assam à la cardamone',NULL,2,'Mélanger la cassonade et l’eau dans une casserole. Amener à ébullition à feu moyen. Ajouter la cardamone, couvrir et laisser mijoter 3 à 5 minutes. Ajouter le thé. Retirer du feu et laisser infuser 10 minutes. Ajouter le lait et amener à ébullition à feu moyen.
Filtrer le thé et le boire chaud.',NULL);
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Thé épicé de l’Himalaya',NULL,2,'Mélanger les ingrédients, sauf le thé et le lait, dans une casserole. Amener à ébullition à feu vif. Réduire aussitôt le feu. Couvrir et laisser mijoter 20 minutes. Ajouter le thé. Retirer du feu et laisser infuser 10 minutes. Ajouter le lait et amener à ébullition à feu moyen.
Filtrer le thé et le boire chaud.',NULL);
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Équilibre Yin et Yang','Tisane de scutellaire, de pissenlit et de cannelle',4,'Mélanger le pissenlit, la scutellaire et la cannelle dans une théière de céramique ou de verre ou une tasse. Ajoutez l’eau bouillante, couvrir et laisser infuser 10 minutes. 
Filtrer la tisane et la boire chaude, tiède ou froide','« Le yang et le yin sont, en médecine chinoise, deux concepts très importants. Alors que les toniques yang sont utilisés contre l’épuisement et la fatigue chronique, les solutions yin rééquilibrent l’organisme en nourrissant et réhydratant les organes internes. Le manque d’énergie, les sensations de froid, l’irritabilité, la nervosité et la perte de la libido sont tous des symptômes d’une déficience yang. La cannelle accroît la circulation sanguine et réchauffe l’organisme. Cette tisane est excellente pour le foie et pour l’esprit. Il faut en boire deux tasses par jour. »');
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Adieu stress','Tisane de ginseng sibérien, d’ortie et de réglisse',4,'Mélanger l’ortie, la réglisse et le ginseng dans une théière de céramique ou de verre réchauffée. 
Ajoutez l''eau bouillante, couvrir et laisser infuser 10 minutes. 
Filtrer la tisane et en boire 1 tasse toutes les 3 à 4 heures.','« Si, à cause d’un horaire trop chargé, d’un travail harassant ou de pressions familiales constantes, vous êtes toujours surmenés, vous devriez, afin de réduire votre stress qui mine sans cesse vos réserves d’énergie, apporte des changements dans votre mode de vie. Cette tisane vous aidera à reprendre le dessus rapidement. Vous devriez en ressentir les bienfaits au bout d’une ou deux semaines. La réglisse possède une saveur naturelle douce qui donne un goût très agréable à cette tisane.»');
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Tisane de Framboisier et d''hibiscus',NULL,9,'Mélanger le framboisier et l''hibiscus dans une petite théière de céramique ou de verre ou une tasse réchauffée.
Ajouter l''eau bouillante, couvrir et laisser infuser 10 minutes.
Filter la tisane et la boire chaude.','Ce sont les tannins qui donnent aux feuilles de framboisier leur goût astringent. Ces tannins sont précieux pour soulager de la diarhée et en gargarismes contre les infections de la gorge.
Grâce à son goût citronné et sa couleur rouge vif, l''hibicus donne à cette tisante une couleur et un goût incomparables.');
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Tisane de citron, d’anis et de fenouil',NULL,9,'Mélanger le zeste de citron et les graines d’anis et de fenouil dans une petite théière de céramique ou de verre réchauffée.
Ajouter l''eau bouillante, couvrir et laisser infuser  10 minutes.
Filtrer la tisane et la boire chaude.','Le jus et le zeste de citron sont des antimicrobiens naturels. À une certaine époque, la tisane aux graines d''anis était très populaire pour traiter le rhume et la grippe. Les graines de fenouil et d’anis sont d’excellents dépuratifs des poumons. Ce sont deux plantes galactogènes aussi utilisées pour réduire les coliques des nourrissons. Les deux ont une agréable saveur de réglisse. Les graines de fenouil ont la réputation, si on en mâche quelques-unes avant un repas, de supprimer l''appétit. Elles rafraîchissent merveilleusement bien l''haleine');
INSERT INTO Recettes.Recette ( Nom, NomMoinsVendeur, TypeRecetteID, Instruction, SpeachDeVente) VALUES ('Tisane de romarin et de millepertuis',NULL,5,'Mélanger le romarin et le millepertuis dans une théière de céramique ou de verre ou une tasse réchauffée.
Ajouter l’eau bouillante, couvrir et laisser infuser 5 à 10 minutes.
Filtre la tisane dans une tasse et la boire chaude.','« Parfois, la dépression s’installe en nous si lentement que nous ne nous en rendons même pas compte. Cette tisane est donc utile à quiconque a perdu ainsi peu à peu tout intérêt dans ses activités quotidiennes. Le millepertuis est devenu très populaire au cours des dernières années pour combattre le ralentissement des activités et la dépression. En accroissant la circulation sanguine dans la tête, le romarin stimule le cerveau. C’est aussi le millepertuis qui donne à cette tisane son merveilleux arôme épicé. »');


INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (1,18,'1/4 de tasse'); -- cassonade
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (1,19,'6'); -- fruits de cardamone
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (1,20,'3 1/2 tasses'); --eau
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (1,21,'1 c. à soupe'); -- feuilles de thé d''Assam
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (1,22,'1/2 tasse'); -- lait
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,23,'1'); --feuille de laurier
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,24,'1/2 c. à soupe'); --graines de fenouil 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,18,'3 c. à soupe'); -- cassonade 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,19,'3'); -- fruits de cardamone
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,25,'6'); -- clous de girofle 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,26,'1'); -- bâton de cannelle
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,27,'1/4 c. à thé'); -- grains de poivre noir 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,9,'1 c. à thé'); -- gingembre 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,20,'3 1/2 tasses'); --eau
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,29,'2 c. à soupe'); -- feuilles de thé Darjeeling
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (2,22,'1/2 tasse'); -- lait
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (3,15,'1/2 tasse'); -- racine de pissenlit séché
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (3,28,'1/2 c. à thé'); -- scutellaire séchée
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (3,29,'1 pincée'); -- cannelle moulue
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (3,20,'1 tasse, bouillante'); --eau
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (4,30,'1 c. à soupe'); --ortie
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (4,16,'1 c. à soupe'); --réglisse 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (4,10,'1 c. à soupe'); --ginseng 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (4,20,'1 tasse, bouillante'); --eau
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (5,31,'1 c. à thé'); -- framboisier 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (5,11,'1/2 c. à thé'); -- hibiscus
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (5,20,'1 tasse, bouillante'); --eau 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (6,32,'1 c. à thé'); -- zestes de citron 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (6,2,'1 c. à thé'); -- graines d''anis
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (6,24,'1/2 c. à soupe'); --graines de fenouil 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (6,20,'1 tasse, bouillante'); --eau 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (7,33,'1 c. à thé'); --romarin 
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (7,14,'1 c. à thé'); --millepertuis  
INSERT INTO Recettes.IngredientRecette ( RecetteID, IngredientID, Quantite) VALUES (7,20,'1 tasse, bouillante'); --eau 

