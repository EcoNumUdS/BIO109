---
title       : "Séance 1: Introduction à la programmation scientifique"
subtitle    : "https://econumuds.github.io/BIO109/cours1/"
author      : "Dominique Gravel"
job         : "Laboratoire d'écologie intégrative"
logo        : "logo.png"
framework   : io2012       # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
mode        : selfcontained
knit        : slidify::knit2slides
widgets     : [mathjax]
url:
  lib   : ./libraries
license     : by-nc-sa
assets      :
  css: "https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css"
---
# Séance 1

- Ces diapositives sont disponibles en version HTML (Web) et en [PDF](./assets/pdf/S1-BIO109.pdf).
- L'ensemble du matériel de cours est disponible sur la page du portail [moodle](https://www.usherbrooke.ca/moodle2-cours/course/view.php?id=12188).

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/bioclim.png" height="500px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/mont_vertes.png" height="500px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/megantic.jpg" height="500px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/ours.jpg" height="500px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/orignal.jpg" height="400px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/salamandre.jpg" height="400px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/cypripedium.jpg" height="400px"></img>
</div>

---

# Introduction

<div style='text-align:center;'>
<img src="assets/img/intro/grille.jpg" height="250px"></img>
</div>

---

# Question de recherche (et projet de session)

À quelle vitesse se réalisera la migration de l'érable à sucre, et des espèces associées, au sein de la sapinière de montagne du massif des Montagnes vertes ?

---

# Le type de données


```r
arbres <- read.table(file = './donnees/arbres.txt', header = TRUE, sep=";")
head(arbres)
```

```
##   id_bor borx bory arbre  esp multi mort dhp
## 1    0-0    0    0 34501 acpe  FAUX FAUX  82
## 2    0-0    0    0 34502 acpe  VRAI FAUX  26
## 3    0-0    0    0 34502 acpe  VRAI FAUX  98
## 4    0-0    0    0 34503 acpe  FAUX FAUX  73
## 5    0-0    0    0 34504 acpe  FAUX VRAI  28
## 6    0-0    0    0 34506 fagr  FAUX FAUX  26
```

---

# Exercice 1

Ouvrir le fichier [arbres](./donnees/arbres.xlsx) avec Excel et calculer le nombre d'individus de chaque espèce pour le quadrat 1.

---

# Exercice 1: solution sur R


```r
arbres <- read.table(file = './donnees/arbres.txt', header = TRUE, sep=";")
quadrats <- table(arbres$id_bor,arbres$esp)
head(quadrats)
```

```
##        
##         abba acpe acsa beal bepa fagr piru
##   0-0      1   55   11    7    0   92    0
##   0-100    0    5    4    3    0    6    0
##   0-120    2    7   12    4    1    7    0
##   0-140    4    5    4    8    1    2    1
##   0-160    2    2   11    8    1    6    1
##   0-180    5    3    9    7    0    3    1
```


---

# Exercice 2

Ouvrir le fichier [quadrats](./donnees/quadrats.xlsx) avec Excel et calculer la corrélation entre toutes les paires d'espèces.

Petit truc: sur Excel, la fonction pour calculer une corrélation est:

```bash
=COEFFICIENT.CORRELATION(données_1; données_2)
```

---

# Exercice 2: solution sur R


```r
quadrats <- read.table(file = './donnees/quadrats.txt', header = TRUE, sep= ";")
cor(quadrats)
```


```
##           abba      acpe      acsa      beal      bepa      fagr      piru
## abba  1.000000 -0.061892 -0.487308  0.182668  0.665776 -0.180726  0.274651
## acpe -0.061892  1.000000  0.223190  0.266397 -0.111782  0.449700  0.550620
## acsa -0.487308  0.223190  1.000000 -0.370743 -0.329024  0.333552 -0.144015
## beal  0.182668  0.266397 -0.370743  1.000000 -0.030187 -0.109972  0.504235
## bepa  0.665776 -0.111782 -0.329024 -0.030187  1.000000 -0.153591  0.133875
## fagr -0.180726  0.449700  0.333552 -0.109972 -0.153591  1.000000  0.192932
## piru  0.274651  0.550620 -0.144015  0.504235  0.133875  0.192932  1.000000
```

---

# Exercice 2: visualisation sur R


```r
plot(quadrats)
```

<img src="assets/fig/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" style="display: block; margin: auto;" />

---

# Objectif général

Au terme de ce cours, l'étudiant sera en mesure de conceptualiser un problème qui requiert de la programmation scientifique et de réaliser des tâches courantes de programmation.

---

# Objectifs spécifiques

1. Charger des données et exporter des résultats d'analyses au moyen du
    logiciel R;
2. Conceptualiser un problème au moyen de pseudo-code;
3. Manipuler des données;
4. Rédiger des fonctions;
5. Programmer des algorithmes afin de réaliser des tâches complexes,
    incluant des boucles et des énoncés conditionnels;
6. Réaliser des simulations de Monte Carlo;

---
# Contenu

1. Introduction et bonnes pratiques de programmation
2. Interagir avec R
3. Les fonctions
4. Algorithmique I: boucles et conditions
5. Alogithmique II: simulations de Monte Carlo

---

# Ce que le cours n'est pas ...

1. Des recettes
2. Un catalogue de fonctions R
3. Un cours de statistiques

---

# Approche

Les connaissances requises pour la programmation scientifique sont
minimales, l'apprentissage porte davantage sur l'acquisition de
compétences et le développement de capacités à la résolution de problèmes.


Les séances seront constituées de courtes leçons magistrales sur des
notions de bases de programmation, entre-coupées d'exercices spécifiques
destinés à pratiquer les éléments enseignés. Les séances se conclueront
sur la réalisation d'un exercice intégrateur à compléter à la maison.

L'ensemble du matériel du cours sera disponible sur un dépôt Git à l'adresse :
https://github.com/EcoNumUdS/BIO109.git

---

# Évaluation

L'évaluation porte sur la participation (20%) et sur un
travail de session (80%). Un exercice simple sera présenté à la fin des
séances 1-4 et <b>chaque étudiant</b> devra remettre la solution de l'exercice sous
forme de script <i>avant le début</i> de la séance suivante. Les exercices
peuvent être réalisés en groupe, mais <b>chaque étudiant</b> devra remettre sa
propre copie, personnalisée. <b>Les points sont attribués pour la
participation.</b>

L'évaluation finale portera sur la réalisation d'un projet de
programmation <b>en équipe de 4</b> à remettre deux semaines après la fin du
dernier cours, soit au plus tard le <b>19 février 2019 à 16:00</b>. La
pénalité sera de 10% par jour de retard. Le rapport final sera évalué à
partir de

   1. le pseudo-code pour le projet de programmation,
   2. le respect des bonnes pratiques de programmation
   3. la réussite de l'exercice demandé.

Les étudiants devront remettre le script nécessaire à la
réalisation du projet.

--- .transition

# La place de la programmation en écologie

---

# Hier

La dynamique d'une population:

$$
\frac{dN}{dt} = rN(1-\frac{N}{K})
$$

Qui donne pour solution à l'équilibre:

$$
N^* = K
$$

$N =$ Taille d'une population

$t =$ temps

$r =$ taux de croissance

$K =$ capacité de support de l'environnement

---&twocol

# Aujourd'hui

*** =left

<div style='text-align:center;'>
<img src="assets/img/intro/modele_vissault.png" height="450px"></img>
</div>

*** =right

R: Regénération

T: Forêts tempérées

M: Forêts mixes

B: Forêts boréale

---

# Aujourd'hui

<div style='text-align:center;'>
<img src="assets/img/intro/map_vissault.png" height="550px"></img>
</div>

---

# Et demain, la modélisation de la biosphère?
<div style='text-align:center;'>
<img src="assets/img/intro/PurvesNature.jpg" height="400px"></img>
</div>

---

# Progression de la puissance de calcul

<div style='text-align:center;'>
  <img src="assets/img/intro/moores.png" height="525px"></img>
</div>

<!-- Ces questions sont rendu possible en partie grâce à l'augmentation de la puissance de nos ordinateurs et l'accessibilité aux données -->

---

# Utilisation en science au quotidien

La programmation est outil indispensable au biologiste 2.0, elle permet:

- Tâches répétitives et/ou complexes (p.ex. Nettoyage des données, Simulations stochastiques)
- Visualisation et exploration des données
- Analyses statistiques avancées (p. ex. tests par permutations, statistiques bayésiennes)

--- &twocol

# La programmation en science

*** =left

## Avantages

- Gain de temps
- Limiter les erreurs
- Formaliser les opérations
- Archiver, reproduire et partager
- Tâches intensives (e.g. en génomique)

*** =right

<div class="caption">Augmentation du volume de données génomiques</div>
<img src="assets/img/intro/data_increase.jpg" width="100%"></img>
<span style="font-size:small;text-transform:uppercase;text-align:right;">
[Nature 2013](http://www.nature.com/nature/journal/v498/n7453/full/498255a.html)
</span>


---

# La programmation en science


<div style='text-align:center;'>
  <img src="assets/img/intro/geek_mode.jpg" height="450px"></img>
</div>

<!-- L'effort en vaut la peine: Sur le long terme le geek est gagnant -->


--- &twocol

# La programmation en science


*** =left

## Inconvénients

- L'erreur est avant tout humaine, avant d'être informatique
- La courbe apprentissage peut être difficile

*** =right

<img src="assets/img/intro/FunctionalResp.svg" width="450px"></img>

<!-- Différente entre les individus -->

--- .transition

# Les langages de programmation

---

# Deux grandes familles de langages

1. Les langages compilés
2. Les langages interprétés

---

# 1. Les langages compilés

<div style='text-align:center;'>
  <img src="assets/img/intro/compile.png"  width="900px"></img>
</div>

---

# 2. Les langages interprétés

<div style='text-align:center;'>
  <img src="assets/img/intro/interprete.png" width="900px"></img>
</div>

---

# La performance: un critère pour le choix d'un langage

<div style='text-align:center;'>
  <img src="assets/img/intro/performance.png" width="900px"></img>
</div>

---

# Un autre critère est le 'débugging'

<div style='text-align:center;'>
  <img src="assets/img/intro/bug.jpg" width="600px"></img>
</div>

---

# Et en écologie?

--- .transition

# Le Pseudo-Code

---

# Le `Pseudo-Code` et ses **algorithmes**


## Définitions

- *En programmation, le `pseudo-code` est une façon de formuler un <b>algorithme</b> sans référence à un langage de programmation en particulier.*

> - *Un <b>algorithme</b> est une suite d'actions qui sont réalisées dans un ordre précis par l'ordinateur. C'est une séquence d'étapes dans la résolution d'un problème.*


---

# Le `Pseudo-Code`

## Exemple

```
PROGRAM DEMO
  FOR t IN 1:100
    n_t = n_t * lambda
    PRINT n_t
    IF n_t < 1
      BREAK
    ELSE
      CONTINUE
    END IF
  END FOR
```

Le programme `DEMO` fait croitre une population à un taux $\lambda$ et affiche à l'utilisateur si la population est éteinte ($n_t<1$) ou vivante ($n_t>1$).

---

# Le `Pseudo-Code`

## Exemple

```
PROGRAM DEMO
  FOR t IN 1:100 <------------- Opération itérative
    n_t = n_t * lambda
    PRINT n_t <---------------- Le programme affiche la valeur à l'écran
    IF n_t < 1 <--------------- Opération décisionnelle
      BREAK <------------------ Le programme arrête son éxécution
    ELSE
      CONTINUE <--------------- Le programme continue son éxécution
    END IF
  END FOR
```

Le programme `DEMO` fait croitre une population à un taux $\lambda$ et affiche à l'utilisateur si la population est éteinte ($n_t<1$) ou vivante ($n_t>1$).


---

# Les structures de base d'un algorithme

On retrouve 3 familles d'opérations:

1. Les opérations séquentielles
2. Les opérations itératives (`FOR`, `WHILE`)
3. Les opérations décisionnelles (`IF`, `IFELSE`)

---

# Avant-propos

Avant de décrire chacune des opérations d'un algorithme, certaines instructions sont communes:

- `READ`: Le programme lit un fichier
- `WRITE`: Le programme écrit un fichier
- `PRINT`: Le programme écrit un message à l'écran pour l'utilisateur
- `BREAK`: Le programme stop son éxécution
- `CONTINUE`: Le programme continue son éxécution

---

# 1. Les opérations séquentielles

## Exemple: Calculer l'aire d'un rectangle

```
PROGRAM REC_AIRE
  READ hauteur
  READ largeur
  WRITE hauteur * largeur
```

Chaque opération est effectuée l'une après l'autre dans un ordre déterminé.

---

# 2. Les opérations itératives

## Exemple avec `FOR`: Croissance exponentielle

```
PROGRAM DEMO
  FOR t IN 1:100
    n_t = n_t * lambda
  END FOR
```

La population va croître pendant 100 pas de temps.

---

# 2. Les opérations itératives

## Exemple avec `WHILE`: Croissance avec capacité de support (K)

```
PROGRAM DEMO
  WHILE n_t < K
    n_t = n_t * lambda
  END WHILE
```

---

# 3. Les opérations décisionnelles

## Exemple avec `IF`: quelques tests sur $\lambda$

```
PROGRAM DEMO
  IF lambda > 0
    PRINT "La population est croissante"
  ELSE lambda < 0
    PRINT "La population est décroissante"
  ENDIF
```

> - Et si le taux de croissance est nul?

---

# 3. Les opérations décisionnelles

```
PROGRAM DEMO
  IF lambda > 0
    PRINT "La population est croissante"
  IF ELSE lambda < 0
    PRINT "La population est décroissante"
  ELSE
    PRINT "Absence de croissance"
  ENDIF
```

Avec la clause `ELSE`, la croissance est nulle

---

# Les types d'objets

Les objets en programmation sont définis en fonction de leur dimensionalité.

## Dimensionalité

<b>Dimension 0</b> : Valeur unique

<b>Dimension 1</b> : Vecteur

<b>Dimension 2</b> : Matrice

<b>Dimension 3</b> : ...

Bien qu'il n'y ai pas de limite à la dimension d'un objet en programmation,
pour le cours nous nous limiterons à des objets en deux dimensions
(c.à.d Matrice)

---

# Dimension 0

Ces objets ne contiennent qu'une seule information

## Exemple

```
bobo = "toi"
coco = 2
dodo = -3
fofo = 456457.678
```

---

# Dimension 1

Ces objets contiennent un série d'information. Chaque valeur
a une position dans le vecteur, laquelle peut être accédée.

## Exemple

```
lettre = ["A" "R" "C" "D" "A"]
lettre[3]
# "C"
```

---

# Dimension 2

Ayant deux dimensions, ces objets présentent les données sous forme de matrices et ont des lignes et des colonnes. Pour accéder à une valeur dans une matrice il faut donner la position de la <b>ligne</b> en premier suivit de la position de la <b>colonne</b>.

## Exemple

```
lettreTab = ["A" "R" "C"
             "D" "A" "T"
             "R" "A" "Q"]

lettreTab[2, 1]
# "D"
```

---

# Les règles du `pseudo-code`

## A garder en mémoire

1. N'écrivez qu'une seule instruction par ligne de pseudo-code.
2. Écrivez en lettres majuscules le verbe de chaque opération principale.
3. Soyez explicite en nommant les opérations et les variables.
4. Soyez le plus détaillé possible (c.à.d les plus petites étapes possibles)
5. Utilisez des structures de langages de programmation connues (c.à.d `WHILE`, `FOR`, `IF` etc.)
6. Délimitez les étapes en formant des blocs d'instructions par l'utilisation de l'indentation.

<b> Ces règles sont générales, peu importe le langage de programmation utilisé. </b>

--- .transition

# Les bonnes pratiques en programmation scientifique

---

# Les 10 commandements de la programmation

> <b>1.</b> Tu commenteras ton code pour que d'autres puissent le lire, le comprendre et le partager

---

# Les 10 commandements de la programmation

> <b>2.</b> Il faut prendre soin de l'environnement et nettoyer ses déchets

---

# Les 10 commandements de la programmation

> <b>3.</b> Ton script sera dur à avaler. Mieux vaut le découper

---

# Les 10 commandements de la programmation

> <b>4.</b> Plusieurs chiens s'appellent Fido, le tiens tu sauras le nommer

---

# Les 10 commandements de la programmation

> <b>5.</b> Des pas de bébés permettent aussi d'avancer

---

# Les 10 commandements de la programmation

> <b>6.</b> Un bon programmeur est paresseux. Les opérations répétées doivent être définies sous forme de fonctions

---

# Les 10 commandements de la programmation

> <b>7.</b> La vie est trop courte, ton code sera optimisé

---

# Les 10 commandements de la programmation

> <b>8.</b> Et un jour tu disparaîtras, alors assure toi que ton code soit reproductible

---

# Les 10 commandements de la programmation

> <b>9.</b> En tout puissant que tu es, le tirage au sort tu pourras répéter

---

# Les 10 commandements de la programmation

> <b>10.</b> Et dans le passé tu souhaiteras voyager, utilise le contrôle de versions

---

# Google R Style Rules

- Noms de `fichier`: se termine par .R
- `Identifiants`: variable.nom (or VariableNom), FonctionNom
- Longueur de `ligne`: maximum 80 caractères
- `Indentation`: deux espaces, pas de tabulations
- `Espacement`: placer des espaces autour des opérateurs binaires
- `Accolades { }`: s'ouvre sur la même ligne, se ferme sur une ligne indépendente (sauf pour `else`)
- `else` : Entourer `else` avec des accolades (`}else{`)
- `Affectation`: utiliser `<-`, pas `=`
- `Commentaire`: tous les commentaires sont précédés par `#` et suivit d'un espace
- `Fonction`: doivent avoir une section de commentaires

--- .transition

# Exercice de la semaine

---

# Une situation qui peut arriver tous les jours

1. On jette en face de vous 5 lettres d'un jeu de scrabble
2. Un maniac vous demande d'écrire un programme permettant d'ordonner les 5 lettres

Prenez le temps de distinguer les étapes que vous réalisez lorsque vous triez les lettres. Essayez de les décrire sous forme de pseudo-code.

<b>Note</b>: cet exercice reviendra au cours 4, où vous programmerez cette fonction.
