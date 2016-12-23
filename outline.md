---
title: Introduction à la programmation scientifique
author: Dominique Gravel & Steve Vissault
---

Étapes:
- monter le plan de cours
- préparer les diapos
- préparer les exercices
- préparer les évaluations


# Coordonnées

# Objectif général

# Objectifs spécifiques

# Pré-requis

# Approche pédagogique

# Matériel recommandé
Logiciel R
Éditeurs de texte:
Context, Textpad, Textedit, gedit

Environnements de développement:
RStudio
SublimeText
Textwrangler
aquamacs
eclipse
RCommander
TinnR
Atom
vim

# Lectures recommandées
- CSBQ
- Software Carpentry
- Document Emmanuel Paradis
- Document Tim Poisot
- .... bouquins sur la programmation sur R
- lien vers le site du labo

# Évaluation

# Contenu

## Scéance 1: Introduction

1. Introduction à la programmation scientifique (60 min)
- histoire des langages de programmation
- progression de la puissance de calcul
- utilisation en science
	- tâches répétitives et tâches complexes
	- visualisation des données
	- exploration
	- analyse statistique
	- nettoyage des données
	- simulations stochastiques
- avantages de la programmation scientifique
	- gain de temps: tâches répétitives
	- limiter les erreurs
	- formaliser les opérations
	- archiver et reproduire (traçabilité)
	- tâches intensives (e.g. en génomique)
- inconvénients:
	- courbe d'apprentissage
	- ce qu'un ordinateur ne peut pas faire
- types de langages
	compilé
	interprété

2. Pseudo-code (60 min)
- exercice: ordonner les lettres  
- concepts de base en programmation
	- logique & décisions
	- boucles
	- fonctions
- règles
- représentation schématique du pseudo-code
- représentation par liste
- exercice: schématiser le pseudo-code pour le tri des lettres

3. Bonnes pratiques de programmation (60 min)
	- commenter / communication
	- être propre / gestion de la mémoire et des objets
	- contrôle de version
	- découper le script
	- coder en fonctions
	- Identation du code
	- optimisation des opérations
	- gestion des nombres aléatoires
	- reproductibilité
	- programmer défensivement
	- entête des scripts
	- tests  
	- bien nommer ses variables (court, explicite, éviter les conflits, noms de variables utilisées par l'environnement R)
	- ne pas écraser ses variables

EXERCICE DE FIN DE SCÉANCE:

## Scéance 2: Introduction au language R

4. Interface R (60 min)
- Historique de R
- Pourquoi R
- Ouvrir l'interface visuel (console)
- Environnement de développement: RStudio, SublimeText, Textwrangler, Emac, Atom
- Répertoire de travail (~, ., chemin de fichier, getwd(), setwd())
- Type de variables
- Types d'objet
- Lire des fichiers
	- formats utilisés et à éviter
	- EX: passer d'un fichier Excel à R
	- erreurs courantes
		- noms de fichier et le répertoire de travail
		- type de séparateur
		- nom des colonnes
		- les entrées vides
- Écrire des fichiers
	- formats
	- EX: passer d'un objet R à Excel
- Visualiser les objets
	- ls, str, head, tail, summary
- Le script
	- commenter
	- découper
	- la fonction 'source'
- Démystifier la fonction
- Aide
- Charger une librairie
- notion de contrôle de version: GIT

EXERCICE : modifier un fichier excel, le lire, le modifier et l'ouvrir à nouveau sur Excel

5. Manipulation des objets (90 min)
- générer des objets (seq, c, matrix, vector, rep, expand.grid)
- indexation
	- vecteur
	- matrice
	- liste
- manipulations sur data frame
- noms de colonnes et de rangées
- conversion entre types d'objets
- combiner des objets
- split
- merge
- subset
- sort
- order
- rank
- unique
- indexer des ensembles
- tableau croisé

EXERCICE DE FIN DE SCÉANCE:
- compiler les données de Sutton, un tableau de nombre de tiges et de taille moyenne par espèce, au sein de trois blocs


## Scéance 3: Fonctions

6. Opérations mathématiques (30 min)
- opérations de base (addition, multiplication, division)
- somme
- produit
- modulo
- rowSums, colSums
- log, exponentiel
- produit de matrices et vecteurs
	- produit scalaire d'objets de tailles différentes
	- produit matriciel
- générer des nombres aléatoires
EXERCICE:

7. Fonctions
- généralités
	- répétition
	- capacité de généraliser une opération
	- mettre en forme une série d'opérations (pseudo-code)
	- formaliser l'entrée et la sortie d'une opération
- appel d'une fonction
- déclaration d'une fonction
	- synthaxe de base
	- arguments facultatifs
	- arguments par défaut
- retour d'arguments
- portée local vs global
	- enrichi: allocation de mémoire dans d'autres langages  

EXERCICE : programmer une fonction qui permet de calculer des statistiques descriptives pour chaque quadrat du jeux de données
	- min et max
	- taille moyenne
	- variance de la taille
	- nombre de tiges
	- nombre d'espèces
	- espèce la plus abondante
	- espèce la plus rare

## Scéance 4: Algorithmique I

Boucles
- for loop
- break
- while
- apply, rapply, lapply
- impression à l'écran (cat, print)
- manipuler les compteurs
- conflits entre compteurs
EXERCICE: modèle de croissance logistique

Opérations logiques
- Principe: coder un arbre de décision
- opérateurs de base: ==, ­<=, >=, !=, |, &
- if, else
- opération sur des vecteurs
- opérateurs avancés: %in%
- which
- match
EXERCICE: fonction qui trie des lettres automatiquement

## Scéance 5: Algorithmique II

Simulations stochastiques
- principales distributions de nombres aléatoires (runif, rnorm, rexp, rgamma)
- principe de prise de décision: binomial
- principe de prise de décision: multinomial
EXERCICES: conduite aléatoire dans un cartier résidentiel (tourne à gauche ou droite avec une pièce de monnaie)

Optimisation des scripts
- Calculer le temps écouler pour réaliser une fonction
- Les pertes de temps les plus communes
- Façons de gagner de l'efficacité
- Calcul parallèle
EXERCICE: optimisation du script de tri des lettres

# ÉVALUATION FINALE
- situation ACA veut savoir en combien d'années la forêt boréale au top de la parcelle va disparaître
- programmer un script qui fait tourner le modèle de Steve sur l'ensemble des données de Sutton (en assumant aucune ).
- données d'entrée: matrice de transition + données de Sutton
- script fourni: figure qui représente les états dans la parcelle
Étapes:
1- classification des états par cellule de 20x20
2- fonction qui détermine l'état au temps t1 à partir de l'état au temps t
3- Itération du modèle sur 1000 ans
4- sorties attendue:
	- proportion de chaque état par période de 5 ans
	- matrice de chaque état par période de 5 ans

- évaluation de:
	- schéma de pseudo-code
	- pseudo code rédigé
	- respect des bonnes pratiques
	- réussite de l'exercice demandé
