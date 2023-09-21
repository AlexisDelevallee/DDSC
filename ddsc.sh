
#!bash/sh

# étape pour la création de personnage :
# Première étape : les informations de base
# Nom
# Classe
classes=("BARBARE" "BARDE" "CLERC" "DRUIDE" "ENSORCELEUR" "GUERRIER" "MAGICIEN" "MOINE" "OCCULTISTE" "PALADIN" "RÔDEUR" "ROUBLARD")

# How many life point by level ?
pv1=("12" "8" "8" "8" "6" "10" "6" "8" "8" "10" "10" "8")
dv=("1d12 ou 7" "1d8 ou 5" "1d8 ou 5" "1d8 ou 5" "1d6 ou 4" "1d10 ou 6" "1d6 ou 4" "1d8 ou 5" "1d8 ou 5" "1d10 ou 6" "1d10 ou 6" "1d8 ou 5")

# maitrise
maitrise_barbare=("armures légères, armures intermédiaires, boucliers" "armes courantes" "armes de guerre")
maitrise_barde=("armures légères" "armes courantes" "arbalète de poing" "épée longue" "épée courte" "rapière" "trois instruments de musique de votre choix")
maitrise_clerc=("armures légères" "armures intermédiaires" "boucliers" "armes courantes")
maitrise_druide=("armures légères" "armures intermédiaires" "boucliers (un druide n'utilisera pas d'armure ou de bouclier en métal)" "gourdin" "dague" "fléchette" "javeline" "masse d'armes" "bâton" "cimeterre" "fronde" "serpe" "lance" "kit d'herboriste")
maitrise_ensorceleur=("dague" "fléchette" "fronde" "bâton" "arbalète légère")
maitrise_guerrier=("toutes les armures" "boucliers" "armes courantes" "armes de guerre")
maitrise_magicien=("dague" "fléchettes" "fronde" "bâton" "arbalète légère")
maitrise_moine=("armes courantes" "épée courte" "un outil d'artisan ou un instrument de musique de votre choix")
maitrise_occultiste=("armurees légères" "armes courantes")
maitrise_paladin=("toutes les armures" "boucliers" "armes courantes" "armes de guerre")
maitrise_rodeur=("armures légères" "armures intermédiaires" "boucliers" "armes courantes" "armes de guerre")
maitrise_roublard=("armures légères" "armes courantes" "arbalète de poing" "épée courte" "épée longue" "rapière" "outils de voleur")

# jets de sauvegarde
sauvegarde_barbare=("FOR" "CON")
sauvegarde_barde=("DEX" "CHA")
sauvegarde_clerc=("SAG" "CHA")
sauvegarde_druide=("INT" "SAG")
sauvegarde_ensorceleur=("CON" "CHA")
sauvegarde_guerrier=("FOR" "CON")
sauvegarde_magicien=("INT" "SAG")
sauvegarde_moine=("FOR" "DEX")
sauvegarde_occultiste=("SAG" "CHA")
sauvegarde_paladin=("SAG" "CHA")
sauvegarde_rodeur=("FOR" "DEX")
sauvegarde_roublard=("DEX" "INT")

# compétences
#+2 in {"Athlétisme" "Dressage" "Intimidation" "Nature" "Perception" "Survie"}: "BARBARE"
#+3 au choix: "BARDE"
#+2 in {"Histoire" "Intuition" "Médecine" "Persuasion" "Religion"}: "CLERC"
#+2 in {"Arcanes" "Dressage" "Intuition" "Médecine" "Nature" "Perception" "Religion" "Survie"}: "DRUIDE"
#+2 in {"Arcanes" "Intimidation" "Intuition" "Persuasion" "Religion" "Tromperie"}: "ENSORCELEUR"
#+2 in {"Acrobaties" "Athlétisme" "Dressage" "Histoire" "Intimidation" "Intuition" "Perception" "Survie"}: "GUERRIER"
#+2 in {"Arcanes" "Histoire" "Intuition" "Investigation" "Médecine" "Religion"} : "MAGICIEN"
#+2 in {"Acrobaties" "Athlétisme" "Discrétion" "Histoire" "Intuition" "Religion"} : "MOINE"
#+2 in {"Arcanes" "Histoire" "Intimidation" "Investigation" "Nature" "Religion" "Tromperie"} : "OCCULTISTE"
#+2 in {"Athlétisme" "Intimidation" "Intuition" "Médecine" "Persuasion" "Religion"}: "PALADIN"
#+3 in {"Athlétisme" "Discrétion" "Dressage" "Intuition" "Investigation" "Nature" "Perception" "Survie"}: "RÔDEUR"
#+4 in {"Acrobaties" "Athlétisme" "Discrétion" "Escamotage" "Intimidation" "Intuition" "Investigation" "Perception" "Persuasion" "Représentation" "Tromperie"}: "ROUBLARD"

#equipement
equi_barbare=("une hache à deux mains ou n'importe quelle arme de guerre de corps à corps" "deux hachettes ou n'importe quelle arme courante" "un sac d'explorateur" "quatre javelines")
equi_barde=("une rapière, une épée longue ou n'importe quelle arme courante" "un sac de diplomate ou un sac d'artiste" "un luth ou n'importe quel autre instrument de musique" "une armure de cuir" "une dague")
equi_clerc=("une masse d'armes ou un marteau de guerre (si vous le maîtrisez)" "une armure d'écailles ou une armure de cuir ou une cotte de mailles (si vous la maîtrisez)" "une arbalète légère et 20 carreaux ou une arme courante" "un sac d'ecclésiastique ou un sac d'explorateur" "un bouclier et un symbole sacré")
equi_druide=("un bouclier en bois ou une arme courante" "un cimeterre ou une arme courante de corps à corps" "une armure de cuir" "un sac d'explorateur" "focaliseur druidique")
equi_ensorceleur=("une arbalète légère et 20 carreaux ou n'importe quelle arme courante" "une sacoche à composantes ou un focaliseur arcanique" "un sac d'exploration souterraine ou un sac d'explorateur" "deux dagues")
equi_guerrier=("une cotte de mailles ou une armure de cuir" "un arc long et 20 flèches" "une arme de guerre et un bouclier ou deux armes de guerre" "une arbalète légère et 20 carreaux ou deux hachettes" "un sac d'exploration souterraine ou un sac d'explorateur")
equi_magicien=("un bâton ou une dague" "une sacoche à composantes ou un focaliseur arcanique" "un sac d'érudit ou un sac d'explorateur" "un grimoire")
equi_moine=("une épée courte ou n'importe quelle arme courante" "un sac d'exploration souterraine ou un sac d'explorateur" "10 fléchettes")
equi_occultiste=("une arbalète légère et 20 carreaux ou n'importe quelle arme courante" "une sacoche à composantes ou un focaliseur arcanique" "un sac d'érudit ou un sac d'exploration souterraine" "une armure de cuir" "n'importe quelle arme courante" "deux dagues")
equi_paladin=("une arme de guerre et un bouclier ou deux armes de guerre" "cinq javelines ou n'importe quelle arme courante de corps à corps" "un sac d'ecclésiastique ou un sac d'explorateur" "une cotte de mailles" "un symbole sacré")
equi_rodeur=("armure d'écailles ou armure de cuir" "deux épées courtes ou deux armes courantes de corps à corps" "un sac d'exploration souterraine ou un sac d'explorateur" "un arc long" "un carquois avec 20 flèches")
equi_roublard=("une rapière ou une épée courte" "un arc court et un carquois de 20 flèches ou une épée courte" "un sac de cambrioleur, un sac d'exploration souterraine ou un sac d'explorateur" "une armure de cuir" "deux dagues" "des outils de voleur")

# Details
details=("https://www.aidedd.org/regles/classes/barbare/" "https://www.aidedd.org/regles/classes/barde/" "https://www.aidedd.org/regles/classes/clerc/" "https://www.aidedd.org/regles/classes/druide/" "https://www.aidedd.org/regles/classes/ensorceleur/" "https://www.aidedd.org/regles/classes/guerrier/" "https://www.aidedd.org/regles/classes/magicien/" "https://www.aidedd.org/regles/classes/moine/" "https://www.aidedd.org/regles/classes/occultiste/" "https://www.aidedd.org/regles/classes/paladin/" "https://www.aidedd.org/regles/classes/rodeur/" "https://www.aidedd.org/regles/classes/roublard/")

# Race AARAKOCRA=0 DEMI-ELFE=1 DEMI-ORC=2 DRAKÉIDE=3 ELFE DES BOIS=4 HAUT-ELFE=5 ELFE NOIR=6 GÉNASI DE L'AIR=7 GÉNASI DE LA TERRE=8 GÉNASI DU FEU=9 GÉNASI DE L'EAU=10 GOLIATH=11 GNOME=12 HALFELIN=13 HUMAIN=14 NAIN=15 SVIRFNEBELIN=16 TIEFFELIN=17
races=("AARAKOCRA" "DEMI-ELFE" "DEMI-ORC" "DRAKÉIDE" "ELFE DES BOIS" "HAUT-ELFE" "ELFE NOIR" "GÉNASI DE L'AIR" "GÉNASI DE LA TERRE" "GÉNASI DU FEU" "GÉNASI DE L'EAU" "GOLIATH" "GNOME" "HALFELIN" "HUMAIN" "NAIN" "SVIRFNEBELIN" "TIEFFELIN")
mod_classes_FOR=(0 0 2 2 0 0 0 0 1 0 0 2 0 0 1 0 0 0)
mod_classes_DEX=(2 0 0 0 2 2 2 1 0 0 0 0 0 0 1 0 1 0)
mod_classes_CON=(0 0 1 0 0 0 0 2 2 2 2 1 0 0 1 2 0 0)
mod_classes_INT=(0 0 0 0 0 1 0 0 0 1 0 0 2 2 1 0 2 1)
mod_classes_SAG=(1 0 0 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0)
mod_classes_CHA=(0 2 0 1 0 0 1 0 0 0 0 0 0 0 1 0 0 2)

# + 2 au choix: "DEMI-ELFE"

# Vitesses
vit_race=(7.5 9 9 9 10.5 9 9 9 9 9 9 9 7.5 7.5 9 7.5 7.5 9)

# Langues
langue_commun=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
langue_aarakocra=(1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
langue_aerien=(1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
langue_elfique=(0 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0)
langue_orc=(0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
langue_draconique=(0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
langue_primordial=(0 0 0 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0)
langue_geant=(0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0)
langue_gnome=(0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0)
langue_hobbit=(0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0)
langue_nain=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0)
langue_commun_prof=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0)
langue_infernal=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1)

bonus_langue_class=(2 1 0 0 0 0 1 0 0 1 2 1 0 0 1 2 0 0)


# + 1 au choix: "DEMI-ELFE" "HAUT ELFE" "HUMAIN" "ARTISAN DE GUILDE" "ERMITE" "NOBLE" "SAUVAGEON" 
# + 1 au choix "HANTÉ"
# + 2 au choix: "ACOLYTE" "SAGE" "VOYAGEUR"

# +1 in {'aerien' 'commun des profondeurs' 'draconique' 'infernal' 'primordial' 'profond' 'sylvestre'}: "HANTÉ"
# +1 in {'draconique' 'gobelin' 'gnoll' 'orc' 'elfique' 'commun des profondeurs'}
# +1 in {'gnéééééé'}: 'IDIOT DU VILLAGE'

# Bonus
capa_aarakocra=("VOL" "SERRE")
capa_demielfe=("ASCENDANCE FÉÉRIQUE" "VISION NOCTURE" "POLYVALENCE")
capa_demiorc=("ENDURANCE" "VISION DANS LE NOIR" "MENAÇANT" "ATTAQUE SAUVAGE")
capa_drakeide=("ASCENDANCE DRACONIQUE" "SOUFFLE" "RÉSISTANCE AUX DÉGATS")
capa_elfe_bois=("VISION NOCTURNE" "SENS AIGUISÉS" "ASCENDANCE FÉÉRIQUE" "TRANSE" "CACHETTE NATURELLE" "MAITRISE ARME ELFIQUE")
capa_haut_elfe=("VISION NOCTURNE" "SENS AIGUISÉS" "ASCENDANCE FÉÉRIQUE" "TRANSE" "SORT MINEUR")
capa_elfe_noir=("VISION NOCTURNE" "SENS AIGUISÉS" "ASCENDANCE FÉÉRIQUE" "TRANSE" "VISION DANS LE NOIR SUPÉRIEURE" "SENSIBILITÉ AU SOLEIL" "MAGIE DROW" "ARMES DROW")
capa_genasi_air=("SOUFFLE SANS FIN" "SE MELER AU VENT")
capa_genasi_terre=("MARCHE DE LA TERRE" "FUSIONNER AVEC LA TERRE")
capa_genasi_feu=("VISION DANS LE NOIR" "RESISTANCE AU FEU" "ATTEINDRE LE BRASIER")
capa_genasi_eau=("RESISTANCE À L'ACIDE" "AMPHIBIEN" "NAGE" "APPELER LA VAGUE")
capa_goliath=("ATHLÈTE" "ENDURANCE" "PUISSAMMENT BÂTI" "MONTAGNARD")
capa_gnome=("RUSE GNOME" "VISION DANS LE NOIR")
capa_halfelin=("CHANCEUX" "VAILLANT" "AGILITÉ HALFELINE")
capa_nain=("VISION NOCTURNE" "RÉSISTANCE NAINE" "MAITRISE DES OUTILS" "CONNAISSANCE DE LA PIERRE")
capa_svirfnebelin=("VSION SUPÉRIEURE" "RUSE GNOME" "TEINT PIERREUX")
capa_tieffelin=("RÉSISTANCE INFERNALE" "VISION DANS LE NOIR" "ASCENDANCE INFERNALE")


# Tailles
#taille_min=(1,5 1,5 1,8 1,8 1,5 1,5 1,5 1,5 1,5 1,5 1,5 2,1 1 0,9 1,5 1,2 1 1,4)
#taille-max=(1,5 1,8 2,1 2,2 1,8 1,8 1,8 1,8 1,8 1,8 1,8 2,4 1 0,9 1,9 1,5 1 1,9)

# Historiques
# ACOLYTE=0 ARTISAN DE GUILDE=1 ARTISTE=2 CHARLATAN=3 CRIMINEL=4 ENFANT DES RUES=5 ERMITE=6 HÉROS DU PEUPLE=7 MARIN=8 NOBLE=9 SAGE=10 SAUVAGEON=11 SOLDAT=12 CHASSEUR DE PRIMES=13 HANTÉ=14 VOYAGEUR=15 CAPTIF=16 IDIOT DU VILLAGE=17
past=("ACOLYTE" "ARTISAN DE GUILDE" "ARTISTE" "CHARLATAN" "CRIMINEL" "ENFANT DES RUES" "ERMITE" "HÉROS DU PEUPLE" "MARIN" "NOBLE" "SAGE" "SAUVAGEON" "SOLDAT" "CHASSEUR DE PRIMES" "HANTÉ" "VOYAGEUR" "CAPTIF" "IDIOT DU VILLAGE")

arcanes=(0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0) # INT
athelisme=(0 0 0 0 0 0 0 0 1 0 0 1 1 0 0 0 0 0) # FOR
discretion=(0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1) # DEX
acrobatie=(0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) # DEX
dressage=(0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0) # SAG
escamotage=(0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0) # DEX
histoire=(0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0) # INT
intimidation=(0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0) # CHA
investigation=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) # INT
medecine=(0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0) # SAG
nature=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0) # INT
perception=(1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0) # SAG
perspicacite=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) # SAG
persuasion=(0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0) # CHA
religion=(1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0) # INT
representation=(0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1) # CHA
survie=(0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 0) # SAG
tromperie=(0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0) # CHA

# +2 in {'Discrétion' 'Intuition' 'Persuasion' 'Tromperie'} : "CHASSEUR DE PRIME"
# +2 in {'Arcanes' 'Investigation' 'Religion' 'Survie'} : "HANTÉ"

# Outils
outil_acolyte=("")
outil_artisan=("un type d'outil d'artisan")
outil_artiste=("kit de déguisement" "un type d'instrument de musique")
outil_charlatan=("kit de contrefaçon" "kit de déguisement")
outil_criminel=("type de jeu" "outils de voleur")
outil_enfant_rues=("kit de déguisement" "outils de voleur")
outil_ermite=("kit d'herboriste")
outil_heros=("type d'outil d'artisan" "véhicules terrestres")
outil_marin=("outils de navigateur" "véhicules aquatiques")
outil_noble=("un type de jeu")
outil_sage=("")
outil_sauvageon=("un type d'instrument de musique")
outil_soldat=("un type de jeu" "véhicules terrestres")
outil_cprime=("choisissez deux outils parmi un type de jeu, un instrument de musique et outils de voleur")
outil_hante=("")
outil_voyageur=("")
outil_captif=("un type d'outil d'artisan (en relation avec le travail que l'on vous a forcé à faire)")
outil_idiot=("un type de jeu simple mais dont vous semblez être le seul à connaitre les règles (genre « le jeu du caillou »).")

# Équipement :
equi_acolyte=("Un symbole sacré" "un livre de prières" "5 bâtons d'encens" "des habits de cérémonie" "vêtements communs" "15 po.")
equi_artisan=("Un jeu d'outil d'artisan (de votre choix)" "une lettre de recommandation de votre guilde" "vêtements de voyage" "15 po.")
equi_artiste=("Un instrument de musique (de votre choix)" "cadeau d'un admirateur (une lettre d'amour, une mèche de cheveux, une babiole)" "un costume" "15 po.")
equi_charlatan=("vêtements fins" "un kit de déguisement" "des outils d'escroquerie de votre choix (10 bouteilles bouchonnées remplies d'un liquide coloré, dés truqués, cartes marquées, fausse chevalière de duc, ...)" "15 po.")
equi_criminel=("pied-de-biche" "vêtements communs sombres" "capuche" "15po")
equi_enfant_rues=("petit couteau" "carte de la ville dans laquelle vous avez grandi" "souris domestiquée" "souvenir de vos parents" "vêtements communs" "10po.")
equi_ermite=("un étui à parchemin remplis de notes sur vos études ou vos prières" "une couverture pour l'hiver" "vêtements communs" "un kit d'herboriste" "5 po.")
equi_heros=("un jeu d'outil d'artisan (de votre choix)" "une pelle" "un pot en fer" "vêtements communs" "10 po.")
equi_marin=("un cabillot d'amarrage (gourdin)" "une corde en soie (15 m)" "un porte bonheur comme une patte de lapin ou une petite pierre avec un trou en son centre (vous pouvez sinon tirer aléatoirement une babiole)" "vêtements communs" "10 po")
equi_noble=("vêtements fins" "une chevalière" "une lettre de noblesse" "25 po.")
equi_sage=("une bouteille d'encre noire" "une plume" "un petit couteau" "ne lettre d'un collègue mort posant une question à laquelle vous n'avez pas encore été en mesure de répondre" "vêtements communs" "10 po.")
equi_sauvageon=("un bâton" "piège à mâchoires" "trophée d'animal que vous avez tué" "vêtements de voyage" "10po.")
equi_soldat=("un insigne de grade" "un trophée pris sur un ennemi mort (une dague, une lame brisée, un morceau de bannière)" "un jeu de dés en os ou un jeu de cartes" "vêtements communs" "10 po.")
equi_cprime=("vêtements appropriés à votre fonction" "20 po.")
equi_hante=("un sac de chasseur de monstres" "des vêtements communs" "une babiole ayant une signification particulière pour vous (choisissez ou tirez au hasard dans la table à la fin de cet historique)" "1 pa.")
equi_voyageur=("un bâton de marche" "un souvenir venu d’un pays lointain (choisir ou tirer sur la table des babioles)" "un livre rempli de notes sur vos périples ou de dessins" "une bouteille d'encre et une plume" "des vêtements de voyage" "10 po.")
equi_captif=("vêtements communs" "un jeu d'outil d'artisan (ceux que vous aviez pour réaliser votre labeur)" "une bougie" "une gamelle" "une couverture" "5 po.")
equi_idiot=("un bâton" "un sifflet" "vêtements communs rapiécés" "une bourse contenant de jolis cailloux et un autre objet au choix (d'une valeur maximale de 5 po).")

# Capacités :
capa_acolyte=("ABRI DU FIDÈLE")
capa_artisan=("MEMBRE DE GUILDE")
capa_artiste=("À LA DEMANDE DU PUBLIC")
capa_charlatan=("FAUSSE IDENTITÉ")
capa_criminel=("ACCOINTANCE AVEC LA PÈGRE")
capa_enfant_rues=("SECRETS DE LA VILLE")
capa_ermite=("DÉCOUVERTE")
capa_heros=("HOSPITALITÉ RUSTIQUE")
capa_marin=("PLACE À BORD")
capa_noble=("APANAGE DE LA NOBLESSE")
capa_sage=("CHERCHEUR")
capa_sauvageon=("ÉTERNEL VAGABOND")
capa_soldat=("GRADE MILITAIRE")
capa_cprime=("CONNEXION")
capa_hante=("COEUR DES TÉNÈBRES")
capa_voyageur=("COULEUR LOCALE")
capa_captif=("CONNAISSEUR")
capa_idiot=("PITOYABLE")

# Alignement
# Deux axes : "la morale" et "l'ordre"
morales=("BON" "NEUTRE" "MAUVAIS")
order=("LOYAL" "NEUTRE" "CHAOTIQUE")

# Seconde étape : les caractéristiques de votre personnage
# Définition des caractéristiques en fonction de : 
# Répartir les chiffres suivants de la façon dont vous le désirez : 15, 14, 13, 12, 10, 8.
# Ou
# Lancez 6 fois un dès à 20 faces. Notez les 6 résultats, et répartissez-les de la manière qui vous plait. (N’oubliez pas d’ajouter les bonus liés à votre race et à vos compétences)
# Define : 


# N’oubliez pas qu’il n’est pas possible d’avoir une caractéristique au-delà de 21.

# Troisième étape : Maîtrise, Jets de sauvegarde et Compétences

# Bonus de maîtrise
#   C’est tout simplement lié à votre niveau. Au niveau 1, il est de + 2.

# NOM
    echo "Bienvenue dans l'aide à la création de personnage."
    echo "- Nom du personnage -"
    read -p ">" myname
    echo ""
# RACE
    echo "- Race du personnage -"
    echo "Quelle est la race de votre personnage parmi la sélection suivante :"
    for race in "${races[@]}"
    do
        echo "  - $race"
    done
    read -p ">" myrace
    # TODO: Verify chosen race.

    myrace=`echo "$myrace" | tr '[:lower:]' '[:upper:]'`
    idrace=0

    # Get the identifier of the race
    for ((i = 0; i < ${#races[@]}; i++)); do
        if [ "${races[$i]}" == "$myrace" ]; then
            idrace=$i
            break
        fi
    done
    echo ""
# HISTORIQUE
    echo "- Historique du personnage -"
    echo "Quelle est l'historique de votre personnage parmi la sélection suivante :"
    for hist in "${past[@]}"
    do
        echo "  - $hist"
    done
    read -p ">" mypast
    # TODO: Verify chosen past.

    mypast=`echo "$mypast" | tr '[:lower:]' '[:upper:]'`
    idpast=0

    # Get the identifier of the race
    for ((i = 0; i < ${#past[@]}; i++)); do
        if [ "${past[$i]}" == "$mypast" ]; then
            idpast=$i
            break
        fi
    done
    echo ""
# CLASSE
    echo "- Classe du personnage -"
    echo "Quelle est la classe de votre personnage parmi la sélection suivante :"
    for classe in "${classes[@]}"
    do
        echo "  - $classe"
    done
    read -p ">" myclass
    # TODO: Verify chosen class.

    myclass=`echo "$myclass" | tr '[:lower:]' '[:upper:]'`
    idclass=0

    # Get the identifier of the race
    for ((i = 0; i < ${#classes[@]}; i++)); do
        if [ "${classes[$i]}" == "$myclass" ]; then
            idclass=$i
            break
        fi
    done
    echo ""
# ALIGNEMENT
    echo "- Alignement du personnage -"
    echo "Quelle est la morale de votre personnage parmi la sélection suivante :"
    for morale in "${morales[@]}"
    do
        echo "  - $morale"
    done
    read -p ">" mymoral
    # TODO: Verify chosen moral.
    echo "Quelle est l'ordre de votre personnage parmi la sélection suivante :"
    for ord in "${order[@]}"
    do
        echo "  - $ord"
    done
    read -p ">" myorder
    # TODO: Verify chosen order.
    echo ""
# STATISTIQUES
    myStats=("" "" "" "" "" "")

    echo "- Caractéristiques du personnage -"
    echo "Pour définir les caractéristiques de votre personnage, vous pouvez soit : répartir les chiffres suivants de la façon dont vous le désirez : 15, 14, 13, 12, 10, 8, soit lancer 6 fois le dé 20 et répartir les résultats parmi les différentes caractéristiques."
    echo "Attention: Il n'est pas possible d'avoir une compétences au delà de 21."
    if [ $idrace -eq 1 ]; then
        echo "NB: En tant que DEMI-ELFE, vous pouvez ajouter +2 à la caractéristique de votre choix."
    fi
    echo "FOR :"
    read -p ">" myStats[0]
    echo "DEX :"
    read -p ">" myStats[1]
    echo "CON :"
    read -p ">" myStats[2]
    echo "INT :"
    read -p ">" myStats[3]
    echo "SAG :"
    read -p ">" myStats[4]
    echo "CHA :"
    read -p ">" myStats[5]
    echo ""
# Update characteristic according to the race
    # Add FOR
    v_source="${mod_classes_FOR[$idrace]}"
    v_destin="${myStats[0]}"
    res=$((v_source + v_destin))
    myStats[0]=$res

    # Add DEX
    v_source="${mod_classes_DEX[$idrace]}"
    v_destin="${myStats[1]}"
    res=$((v_source + v_destin))
    myStats[1]=$res

    # Add CON
    v_source="${mod_classes_CON[$idrace]}"
    v_destin="${myStats[2]}"
    res=$((v_source + v_destin))
    myStats[2]=$res

    # Add INT
    v_source="${mod_classes_INT[$idrace]}"
    v_destin="${myStats[3]}"
    res=$((v_source + v_destin))
    myStats[3]=$res

    # Add SAG
    v_source="${mod_classes_SAG[$idrace]}"
    v_destin="${myStats[4]}"
    res=$((v_source + v_destin))
    myStats[4]=$res

    # Add CHA
    v_source="${mod_classes_CHA[$idrace]}"
    v_destin="${myStats[5]}"
    res=$((v_source + v_destin))
    myStats[5]=$res

    echo "- CARACTÉRISTIQUES -"
    echo "Vos caractéristiques sont modifiés par votre race, voici les nouvelles valeurs :"
    echo "- FOR: ${myStats[0]}"
    echo "- DEX: ${myStats[1]}"
    echo "- CON: ${myStats[2]}"
    echo "- INT: ${myStats[3]}"
    echo "- SAG: ${myStats[4]}"
    echo "- CHA: ${myStats[5]}"
# Calculate the modificators.
    myMods=(-4 -4 -4 -4 -4 -4)
    i=0

    for stat in "${myStats[@]}"
    do
        case $stat in
            "4")
                myMods[$i]=-3
                ;;
            "5")
                myMods[$i]=-3
                ;;
            "6")
                myMods[$i]=-2
                ;;
            "7")
                myMods[$i]=-2
                ;;
            "8")
                myMods[$i]=-1
                ;;
            "9")
                myMods[$i]=-1
                ;;
            "10")
                myMods[$i]=0
                ;;
            "11")
                myMods[$i]=0
                ;;
            "12")
                myMods[$i]=1
                ;;
            "13")
                myMods[$i]=1
                ;;
            "14")
                myMods[$i]=2
                ;;
            "15")
                myMods[$i]=2
                ;;
            "16")
                myMods[$i]=3
                ;;
            "17")
                myMods[$i]=3
                ;;
            "18")
                myMods[$i]=4
                ;;
            "19")
                myMods[$i]=4
                ;;
            "20")
                myMods[$i]=5
                ;;
            "21")
                myMods[$i]=5
                ;;
        esac

        ((i++))
    done
    echo ""
    echo "- MODIFICATEURS -"
    echo "  FOR: ${myMods[0]}"
    echo "  DEX: ${myMods[1]}"
    echo "  CON: ${myMods[2]}"
    echo "  INT: ${myMods[3]}"
    echo "  SAG: ${myMods[4]}"
    echo "  CHA: ${myMods[5]}"

# Bonus de maitrise : + 2 au niveau 1.
    myBonusMaitrise=2
    echo ""
    echo "- BONUS DE MAITRISE -"
    echo "$myBonusMaitrise"

# Jets de sauvegarde : update according to the class.
    # Check FOR
    if [ $idclass -eq 0 ] || [ $idclass -eq 5 ] || [ $idclass -eq 7 ] || [ $idclass -eq 10 ]; then
        jetS_FOR=$((myMods[0] + myBonusMaitrise))
    else
        jetS_FOR=${myMods[0]}
    fi

    # Check DEX
    if [ $idclass -eq 1 ] || [ $idclass -eq 7 ] || [ $idclass -eq 10 ] || [ $idclass -eq 11 ]; then
        jetS_DEX=$((myMods[1] + myBonusMaitrise))
    else
        jetS_DEX=${myMods[1]}
    fi

    # Check CON
    if [ $idclass -eq 0 ] || [ $idclass -eq 4 ] || [ $idclass -eq 5 ]; then
        jetS_CON=$((myMods[2] + myBonusMaitrise))
    else
        jetS_CON=${myMods[2]}
    fi

    # Check INT
    if [ $idclass -eq 3 ] || [ $idclass -eq 6 ] || [ $idclass -eq 11 ]; then
        jetS_INT=$((myMods[3] + myBonusMaitrise))
    else
        jetS_INT=${myMods[3]}
    fi

    # Check SAG
    if [ $idclass -eq 2 ] || [ $idclass -eq 3 ] || [ $idclass -eq 6 ] || [ $idclass -eq 8 ] || [ $idclass -eq 9 ]; then
        jetS_SAG=$((myMods[4] + myBonusMaitrise))
    else
        jetS_SAG=${myMods[4]}
    fi

    # Check CHA
    if [ $idclass -eq 1 ] || [ $idclass -eq 2 ] || [ $idclass -eq 4 ] || [ $idclass -eq 8 ] || [ $idclass -eq 9 ]; then
        jetS_CHA=$((myMods[5] + myBonusMaitrise))
    else
        jetS_CHA=${myMods[5]}
    fi

    echo ""
    echo "- JETS DE SAUVEGARDE -"
    echo "  FOR: $jetS_FOR"
    echo "  DEX: $jetS_DEX"
    echo "  CON: $jetS_CON"
    echo "  INT: $jetS_INT"
    echo "  SAG: $jetS_SAG"
    echo "  CHA: $jetS_CHA"

# Compétences
    echo ""
    echo "- COMPÉTENCES -"
    echo "Voici la liste des compétences associé au bonus de maîtrise, si il est accordé par votre historique:"

    echo "  - acrobatie: " $((acrobatie[$idpast] * 2 + myMods[1]))
    echo "  - arcanes: " $((arcanes[$idpast] * 2 + myMods[3]))
    echo "  - athelisme: " $((athelisme[$idpast] * 2 + myMods[0]))
    echo "  - discretion: " $((discretion[$idpast] * 2 + myMods[1]))
    echo "  - dressage: " $((dressage[$idpast] * 2 + myMods[4]))
    echo "  - escamotage: " $((escamotage[$idpast] * 2 + myMods[1]))
    echo "  - histoire: " $((histoire[$idpast] * 2 + myMods[3]))
    echo "  - intimidation: " $((intimidation[$idpast] * 2 + myMods[5]))
    echo "  - investigation: " $((investigation[$idpast] * 2 + myMods[3]))
    echo "  - medecine: " $((medecine[$idpast] * 2 + myMods[4]))
    echo "  - nature: " $((nature[$idpast] * 2 + myMods[3]))
    echo "  - perception: " $((perception[$idpast] * 2 + myMods[4]))
    echo "  - perspicacite: " $((perspicacite[$idpast] * 2 + myMods[4]))
    echo "  - persuasion: " $((persuasion[$idpast] * 2 + myMods[5]))
    echo "  - religion: " $((religion[$idpast] * 2 + myMods[3]))
    echo "  - representation: " $((representation[$idpast] * 2 + myMods[5]))
    echo "  - survie: " $((survie[$idpast] * 2 + myMods[4]))
    echo "  - tromperie: " $((tromperie[$idpast] * 2 + myMods[5]))
    echo ""
    comp_bonus=(2 3 2 2 2 2 2 2 2 2 3 4)

    echo "En tant que $myclass, vous pouvez choisir ${comp_bonus[$idclass]} maîtrise(s) de compétences parmies : "

    if [ $idclass -eq 8 ] || [ $idclass -eq 6 ] || [ $idclass -eq 4 ] || [ $idclass -eq 3 ] || [ $idclass -eq 1 ]; then
        echo "  - arcanes"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 10 ] || [ $idclass -eq 9 ] || [ $idclass -eq 7 ] || [ $idclass -eq 5 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - athelisme"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 10 ] || [ $idclass -eq 7 ] || [ $idclass -eq 1 ]; then
        echo "  - discretion"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 7 ] || [ $idclass -eq 5 ] || [ $idclass -eq 1 ]; then
        echo "  - acrobatie"
    fi
    if [ $idclass -eq 10 ] || [ $idclass -eq 5 ] || [ $idclass -eq 3 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - dressage"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 1 ]; then
        echo "  - escamotage"
    fi
    if [ $idclass -eq 8 ] || [ $idclass -eq 7 ] || [ $idclass -eq 6 ] || [ $idclass -eq 5 ] || [ $idclass -eq 2 ] || [ $idclass -eq 1 ]; then
        echo "  - histoire"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 9 ] || [ $idclass -eq 8 ] || [ $idclass -eq 6 ] || [ $idclass -eq 5 ] || [ $idclass -eq 4 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - intimidation"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 10 ] || [ $idclass -eq 8 ] || [ $idclass -eq 6 ] || [ $idclass -eq 1 ]; then
        echo "  - investigation"
    fi
    if [ $idclass -eq 9 ] || [ $idclass -eq 6 ] || [ $idclass -eq 3 ] || [ $idclass -eq 2 ] || [ $idclass -eq 1 ]; then
        echo "  - medecine"
    fi
    if [ $idclass -eq 10 ] || [ $idclass -eq 8 ] || [ $idclass -eq 3 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - nature"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 10 ] || [ $idclass -eq 5 ] || [ $idclass -eq 4 ] || [ $idclass -eq 3 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - perception"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 10 ] ||  [ $idclass -eq 9 ] || [ $idclass -eq 7 ] || [ $idclass -eq 5 ] || [ $idclass -eq 4 ] || [ $idclass -eq 3 ] || [ $idclass -eq 2 ] || [ $idclass -eq 1 ]; then
        echo "  - perspicacite"
    fi
    if [ $idclass -eq 9 ] || [ $idclass -eq 4 ] || [ $idclass -eq 2 ] || [ $idclass -eq 1 ]; then
        echo "  - persuasion"
    fi
    if [ $idclass -eq 9 ] || [ $idclass -eq 8 ] || [ $idclass -eq 7 ] || [ $idclass -eq 6 ] || [ $idclass -eq 4 ] || [ $idclass -eq 3 ] || [ $idclass -eq 2 ] || [ $idclass -eq 1 ]; then
        echo "  - religion"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 1 ]; then
        echo "  - representation"
    fi
    if [ $idclass -eq 10 ] || [ $idclass -eq 5 ] || [ $idclass -eq 3 ] || [ $idclass -eq 0 ] || [ $idclass -eq 1 ]; then
        echo "  - survie"
    fi
    if [ $idclass -eq 11 ] || [ $idclass -eq 8 ] || [ $idclass -eq 4 ] || [ $idclass -eq 1 ]; then
        echo "  - tromperie"
    fi

    if [ $idpast -eq 13 ] || [ $idpast -eq 14 ]; then
        echo  "En tant que $mypast, vous pouvez choisir 2 maîtrises de compétences parmies : "
        if [ $idpast -eq 14 ]; then
            echo "  - arcanes"
        fi
        if [ $idpast -eq 13 ]; then
            echo "  - discretion"
        fi
        if [ $idpast -eq 14 ]; then
            echo "  - investigation"
        fi
        if [ $idpast -eq 13 ]; then
            echo "  - perspicacite"
        fi
        if [ $idpast -eq 13 ]; then
            echo "  - persuasion"
        fi

        if [ $idpast -eq 14 ]; then
            echo "  - religion"
        fi
        if [ $idpast -eq 14 ]; then
            echo "  - survie"
        fi

        if [ $idpast -eq 13 ]; then
            echo "  - tromperie"
        fi
    fi

    echo ""
    echo "NB: Pour chaque maîtrise choisie, vous associez votre bonus de maîtrise."
    echo ""
# Sagesse passive
    echo "- SAGESSE PASSIVE -"
    mysagpassive=$((10 + myMod[4]))
    echo "  Valeur : $mysagpassive"
    echo ""
# Autres maîtrises et langues
    echo "- AUTRES MAÎTRISES ET LANGUES -"

    echo "En tant que $myrace, vous maîtrisez les langues suivantes : "
    # LANGUES
    if [ "${langue_commun[$idrace]}" -eq 1 ];then
        echo "  - Commun"
    fi
    if [ "${langue_aarakocra[$idrace]}" -eq 1 ];then
        echo "  - Aarakocra"
    fi
    if [ "${langue_aerien[$idrace]}" -eq 1 ];then
        echo "  - Aérien"
    fi
    if [ "${langue_elfique[$idrace]}" -eq 1 ];then
        echo "  - Elfique"
    fi
    if [ "${langue_orc[$idrace]}" -eq 1 ];then
        echo "  - Orc"
    fi
    if [ "${langue_draconique[$idrace]}" -eq 1 ];then
        echo "  - Draconique"
    fi
    if [ "${langue_primordial[$idrace]}" -eq 1 ];then
        echo "  - Primordial"
    fi
    if [ "${langue_geant[$idrace]}" -eq 1 ];then
        echo "  - Géant"
    fi
    if [ "${langue_gnome[$idrace]}" -eq 1 ];then
        echo "  - Gnome"
    fi
    if [ "${langue_hobbit[$idrace]}" -eq 1 ];then
        echo "  - Halfelin"
    fi
    if [ "${langue_nain[$idrace]}" -eq 1 ];then
        echo "  - Nain"
    fi
    if [ "${langue_commun_prof[$idrace]}" -eq 1 ];then
        echo "  - Commun des profondeurs"
    fi
    if [ "${langue_infernal[$idrace]}" -eq 1 ];then
        echo "  - Infernal"
    fi

    # Bonus selon la race.
    if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
        echo ""
        echo "En tant que $myrace, vous pouvez choisir une langue maîtrisés en plus, parmies :"
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Aarakocra"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Aérien"
        fi
        if [ $idrace -eq 14 ] ;then
            echo "  - Elfique"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Orc"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Draconique"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Primordial"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Géant"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Gnome"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Halfelin"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Nain"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Commun des profondeurs"
        fi
        if [ $idrace -eq 1 ] || [ $idrace -eq 5 ] || [ $idrace -eq 14 ] ;then
            echo "  - Infernal"
        fi
    fi


    if [ $idclass -eq 0 ] || [ $idclass -eq 1 ] || [ $idclass -eq 6 ] || [ $idclass -eq 9 ] || [ $idclass -eq 11 ] || [ $idclass -eq 14 ] || [ $idclass -eq 10 ] || [ $idclass -eq 15 ];then
        echo ""
        echo "En tant que $myclass, vous pouvez choisir $bonus_langue_class langues maîtrisés en plus, parmies :"

        if [ "${langue_aarakocra[$idrace]}" -eq 0 ];then
            echo "  - Aarakocra"
        fi
        if [ "${langue_aerien[$idrace]}" -eq 0 ];then
            echo "  - Aérien"
        fi
        if [ "${langue_elfique[$idrace]}" -eq 0 ];then
            echo "  - Elfique"
        fi
        if [ "${langue_orc[$idrace]}" -eq 0 ];then
            echo "  - Orc"
        fi
        if [ "${langue_draconique[$idrace]}" -eq 0 ];then
            echo "  - Draconique"
        fi
        if [ "${langue_primordial[$idrace]}" -eq 0 ];then
            echo "  - Primordial"
        fi
        if [ "${langue_geant[$idrace]}" -eq 0 ];then
            echo "  - Géant"
        fi
        if [ "${langue_gnome[$idrace]}" -eq 0 ];then
            echo "  - Gnome"
        fi
        if [ "${langue_hobbit[$idrace]}" -eq 0 ];then
            echo "  - Halfelin"
        fi
        if [ "${langue_nain[$idrace]}" -eq 0 ];then
            echo "  - Nain"
        fi
        if [ "${langue_commun_prof[$idrace]}" -eq 0 ];then
            echo "  - Commun des profondeurs"
        fi
        if [ "${langue_infernal[$idrace]}" -eq 0 ];then
            echo "  - Infernal"
        fi
    fi

    if [ $idclass -eq 14 ];then
        echo ""
        echo "En tant que $myclass, vous pouvez choisir $bonus_langue_class langues maîtrisés en plus, parmies :"

        if [ "${langue_aerien[$idrace]}" -eq 0 ];then
            echo "  - Aérien"
        fi
        if [ "${langue_draconique[$idrace]}" -eq 0 ];then
            echo "  - Draconique"
        fi
        if [ "${langue_primordial[$idrace]}" -eq 0 ];then
            echo "  - Primordial"
        fi
        if [ "${langue_commun_prof[$idrace]}" -eq 0 ];then
            echo "  - Commun des profondeurs"
        fi
        if [ "${langue_infernal[$idrace]}" -eq 0 ];then
            echo "  - Infernal"
        fi
        echo "  - Sylvestre"
    fi

    if [ $idclass -eq 16 ];then
        echo ""
        echo "En tant que $myclass, vous pouvez choisir $bonus_langue_class langues maîtrisés en plus, parmies :"

        if [ "${langue_elfique[$idrace]}" -eq 0 ];then
            echo "  - Elfique"
        fi
        if [ "${langue_orc[$idrace]}" -eq 0 ];then
            echo "  - Orc"
        fi
        if [ "${langue_draconique[$idrace]}" -eq 0 ];then
            echo "  - Draconique"
        fi
        if [ "${langue_commun_prof[$idrace]}" -eq 0 ];then
            echo "  - Commun des profondeurs"
        fi
        if [ "${langue_infernal[$idrace]}" -eq 0 ];then
            echo "  - Infernal"
        fi
        echo "  - Gobelin"
        echo "  - Gnoll"

    fi

    if [ $idclass -eq 17 ]; then
        echo ""
        echo "En tant qu'IDIOT DU VILLAGE, vous pouvez comprendre les langues précédemments énoncées, seulement, vous ne pouvez vous exprimer qu'en Gnéééééé. Une langue que seul vous comprenez..."
    fi

    # MAITRISES DE CLASSES
    if [ $idclass -eq 0 ]; then
        myequipement=("${equi_barbare[@]}")
        mymaitrise=("${maitrise_barbare[@]}")
    fi
    if [ $idclass -eq 1 ]; then
        myequipement=("${equi_barde[@]}")
        mymaitrise=("${maitrise_barde[@]}")
    fi
    if [ $idclass -eq 2 ]; then
        myequipement=("${equi_clerc[@]}")
        mymaitrise=("${maitrise_clerc[@]}")
    fi
    if [ $idclass -eq 3 ]; then
        myequipement=("${equi_druide[@]}")
        mymaitrise=("${maitrise_druide[@]}")
    fi
    if [ $idclass -eq 4 ]; then
        myequipement=("${equi_ensorceleur[@]}")
        mymaitrise=("${maitrise_ensorceleur[@]}")
    fi
    if [ $idclass -eq 5 ]; then
        myequipement=("${equi_guerrier[@]}")
        mymaitrise=("${maitrise_guerrier[@]}")
    fi
    if [ $idclass -eq 6 ]; then
        myequipement=("${equi_magicien[@]}")
        mymaitrise=("${maitrise_magicien[@]}")
    fi
    if [ $idclass -eq 7 ]; then
        myequipement=("${equi_moine[@]}")
        mymaitrise=("${maitrise_moine[@]}")
    fi
    if [ $idclass -eq 8 ]; then
        myequipement=("${equi_occultiste[@]}")
        mymaitrise=("${maitrise_occultiste[@]}")
    fi
    if [ $idclass -eq 9 ]; then
        myequipement=("${equi_paladin[@]}")
        mymaitrise=("${maitrise_paladin[@]}")
    fi
    if [ $idclass -eq 10 ]; then
        myequipement=("${equi_rodeur[@]}")
        mymaitrise=("${maitrise_rodeur[@]}")
    fi
    if [ $idclass -eq 11 ]; then
        myequipement=("${equi_roublard[@]}")
        mymaitrise=("${maitrise_roublard[@]}")
    fi

    echo ""
    echo "En tant que $myclass, vous disposez des maîtrises suivantes:"
    for comp in "${mymaitrise[@]}"
    do
        echo "- $comp"
    done
    
    # MAITRISES DE'HISTORIQUES
    if [ $idpast -eq 0 ]; then
        equi_past=("${equi_acolyte[@]}")
        mymaitrise_outil=("${outil_acolyte[@]}")
        capa_past=("${capa_acolyte[@]}")
    fi
    if [ $idpast -eq 1 ]; then
        equi_past=("${equi_artisan[@]}")
        mymaitrise_outil=("${outil_artisan[@]}")
        capa_past=("${capa_artisan[@]}")
    fi
    if [ $idpast -eq 2 ]; then
        equi_past=("${equi_artiste[@]}")
        mymaitrise_outil=("${outil_artiste[@]}")
        capa_past=("${capa_artiste[@]}")
    fi
    if [ $idpast -eq 3 ]; then
        equi_past=("${equi_charlatan[@]}")
        mymaitrise_outil=("${outil_charlatan[@]}")
        capa_past=("${capa_charlatan[@]}")
    fi
    if [ $idpast -eq 4 ]; then
        equi_past=("${equi_criminel[@]}")
        mymaitrise_outil=("${outil_criminel[@]}")
        capa_past=("${capa_criminel[@]}")
    fi
    if [ $idpast -eq 5 ]; then
        equi_past=("${equi_enfant_rues[@]}")
        mymaitrise_outil=("${outil_enfant_rues[@]}")
        capa_past=("${capa_enfant_rues[@]}")
    fi
    if [ $idpast -eq 6 ]; then
        equi_past=("${equi_ermite[@]}")
        mymaitrise_outil=("${outil_ermite[@]}")
        capa_past=("${capa_ermite[@]}")
    fi
    if [ $idpast -eq 7 ]; then
        equi_past=("${equi_heros[@]}")
        mymaitrise_outil=("${outil_heros[@]}")
        capa_past=("${capa_heros[@]}")
    fi
    if [ $idpast -eq 8 ]; then
        equi_past=("${equi_marin[@]}")
        mymaitrise_outil=("${outil_marin[@]}")
        capa_past=("${capa_marin[@]}")
    fi
    if [ $idpast -eq 9 ]; then
        equi_past=("${equi_noble[@]}")
        mymaitrise_outil=("${outil_noble[@]}")
        capa_past=("${capa_noble[@]}")
    fi
    if [ $idpast -eq 10 ]; then
        equi_past=("${equi_sage[@]}")
        mymaitrise_outil=("${outil_sage[@]}")
        capa_past=("${capa_sage[@]}")
    fi
    if [ $idpast -eq 11 ]; then
        equi_past=("${equi_sauvageon[@]}")
        mymaitrise_outil=("${outil_sauvageon[@]}")
        capa_past=("${capa_sauvageon[@]}")
    fi
    if [ $idpast -eq 12 ]; then
        equi_past=("${equi_soldat[@]}")
        mymaitrise_outil=("${outil_soldat[@]}")
        capa_past=("${capa_soldat[@]}")
    fi
    if [ $idpast -eq 13 ]; then
        equi_past=("${equi_cprime[@]}")
        mymaitrise_outil=("${outil_cprime[@]}")
        capa_past=("${capa_cprime[@]}")
    fi
    if [ $idpast -eq 14 ]; then
        equi_past=("${equi_hante[@]}")
        mymaitrise_outil=("${outil_hante[@]}")
        capa_past=("${capa_hante[@]}")
    fi
    if [ $idpast -eq 15 ]; then
        equi_past=("${equi_voyageur[@]}")
        mymaitrise_outil=("${outil_voyageur[@]}")
        capa_past=("${capa_voyageur[@]}")
    fi
    if [ $idpast -eq 16 ]; then
        equi_past=("${equi_captif[@]}")
        mymaitrise_outil=("${outil_captif[@]}")
        capa_past=("${capa_captif[@]}")
    fi
    if [ $idpast -eq 17 ]; then
        equi_past=("${equi_idiot[@]}")
        mymaitrise_outil=("${outil_idiot[@]}")
        capa_past=("${capa_idiot[@]}")
    fi
    
    if [ $idpast -ne 0 ] && [ $idpast -ne 10 ] && [ $idpast -ne 14 ] && [ $idpast -ne 15 ]; then
        echo ""
        echo "En tant que $mypast, vous disposez des maîtrises suivantes:"
        for comp in "${mymaitrise_outil[@]}"
        do
            echo "- $comp"
        done
    fi

    if [ $idrace -eq 0 ]; then
        capa_race=("${capa_aarakocra[@]}")
    fi
    if [ $idrace -eq 1 ]; then
        capa_race=("${capa_demielfe[@]}")
    fi
    if [ $idrace -eq 2 ]; then
        capa_race=("${capa_demiorc[@]}")
    fi
    if [ $idrace -eq 3 ]; then
        capa_race=("${capa_drakeide[@]}")
    fi
    if [ $idrace -eq 4 ]; then
        capa_race=("${capa_elfe_bois[@]}")
    fi
    if [ $idrace -eq 5 ]; then
        capa_race=("${capa_haut_elfe[@]}")
    fi
    if [ $idrace -eq 6 ]; then
        capa_race=("${capa_elfe_noir[@]}")
    fi
    if [ $idrace -eq 7 ]; then
        capa_race=("${capa_genasi_air[@]}")
    fi
    if [ $idrace -eq 8 ]; then
        capa_race=("${capa_genasi_terre[@]}")
    fi
    if [ $idrace -eq 9 ]; then
        capa_race=("${capa_genasi_feu[@]}")
    fi
    if [ $idrace -eq 10 ]; then
        capa_race=("${capa_genasi_eau[@]}")
    fi
    if [ $idrace -eq 11 ]; then
        capa_race=("${capa_goliath[@]}")
    fi
    if [ $idrace -eq 12 ]; then
        capa_race=("${capa_gnome[@]}")
    fi
    if [ $idrace -eq 13 ]; then
        capa_race=("${capa_halfelin[@]}")
    fi
    if [ $idrace -eq 15 ]; then
        capa_race=("${capa_nain[@]}")
    fi
    if [ $idrace -eq 16 ]; then
        capa_race=("${capa_svirfnebelin[@]}")
    fi
    if [ $idrace -eq 17 ]; then
        capa_race=("${capa_tieffelin[@]}")
    fi

# Les caractéristiques de combat
    echo ""
    echo "- CARACTÉRISTIQUES DE COMBAT -"
    echo "Classe d'armure : de base, vous avez 10 de CA, attendez de voir les armures que vous choisirez plus tard pour remplir cette partie."
    echo "Initiative : ${myMods[1]}"
    echo "Vitesse : ${vit_race[$idrace]}"
    echo "Point de vie : ${pv1[$idclass]}"

    echo ""
    echo "- INVENTAIRE -"

    echo "En tant que $myclass, vous disposez des équipements/objets suivants dans votre inventaire:"
    for equ in "${myequipement[@]}"
    do
        echo "- $equ"
    done
    echo ""
    echo "En tant que $mypast, vous disposez des équipements/objets suivants dans votre inventaire:"
    for equ in "${equi_past[@]}"
    do
        echo "- $equ"
    done
    echo ""
    echo "- CAPACITÉS -"

    if [ $idrace -ne 14 ]; then
        echo ""
        echo "En tant que $myrace, vous disposez des capacités suivantes:"
        for capa in "${capa_race[@]}"
        do
            echo "- $capa"
        done
    fi

    echo ""
    echo "En tant que $mypast, vous disposez des capacités suivantes:"
    for capa in "${capa_past[@]}"
    do
        echo "- $capa"
    done