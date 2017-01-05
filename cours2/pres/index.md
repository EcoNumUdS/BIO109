---
title       : "Scéance # 2: Introduction au langage R"
author      : "Dominique Gravel"
job         : "Laboratoire d'écologie intégrative " #(http://ielab.recherche.usherbrooke.ca)
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
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
# Contenu du cours

1. Interagir avec R

2. Lire et écrire des objets

3. Manipuler des objets

--- 

# 5 raisons pour utiliser R

R est un langage de programmation en source libre conçu pour l'analyse statistique, l'analyse de données et la visualisation. R n'est cependant pas optimisé pour la performance, mais néanmoins il est fort utile pour l'apprentissage de la programmation en raison de sa convivialité (!) et de sa facilité de 'débuggage' (!!)

Les arguments en faveur de R

1. Gratuit et ouvert
2. Une façon de communiquer avec la communauté scientifique
3. Diversité d'utilisateurs et de contributions
4. En phase avec les développements les plus récents en écologie
5. Intégration du langage de programmation avec les outils de visualisation et de manipulation des données

--- 

# Interagir avec R sur la console

<div style='text-align:center;'>
<img src="assets/img/intro/Rgui.png" height="500px"></img>
</div>

--- 

# Utiliser R Studio

<div style='text-align:center;'>
<img src="assets/img/intro/RStudio.png" height="500px"></img>
</div>

--- 

# Exercice : installer et lancer R Studio

<div style='text-align:center;'>
<img src="assets/img/intro/RStudio_logo.png" height="100px"></img>
</div>

--- 

# Exercice : interaction avec la ligne de commande

Le plus simple est d'utiliser R comme une calculatrice. 

Que donne l'opération suivante ?

2 + 16 x 24 - 56

--- 

# Répertoire de travail

Savoir où on est


```r
getwd()
```

```
## [1] "/home/local/USHERBROOKE/grad3002/Bureau/BIO109/depot/cours2/pres"
```

Changer le répertoire de travail


```r
setwd("/home/local/USHERBROOKE/grad3002/Bureau/BIO109/depot/donnees")
```

---

# Environnement de travail

Obtenir le contenu du dossier dans le répertoire de travail


```r
dir()
```

```
## [1] "assets"     "data"       "index.html" "index.md"   "index.Rmd" 
## [6] "libraries"  "test.Rdata" "test.xt"
```

Obtenir la liste des objets en mémoire


```r
ls()
```

```
## character(0)
```

---

# Environnement de travail

Effacer un objet en mémoire


```r
test <- 1
test
```

```
## [1] 1
```

```r
ls()
```

```
## [1] "test"
```

```r
rm(test)
ls()
```

```
## character(0)
```
--- 

# Le concept d'objet

Un objet peut contenir de l'information de toute nature: un tableau de données, les résultats d'une analyse, une figure, une fonction

La commande pour créer un objet est composé de trois parties:
i) une valeur d'intérêt
ii) un identifiant
iii) l'opérateur d'assignation


```r
a <- c(1,2)
a
```

```
## [1] 1 2
```

--- 

# Types d'objets: scalaires

Comprendre les types de données utilisées par R est une notion de base pour réaliser des opérations. R utilise soit des données brutes, ou des collections de données. 

Pour assigner une valeur à un objet simple (un scalaire) on utilise l'opération suivante:


```r
objet <- 2
objet
```

```
## [1] 2
```

Notons que les opérateurs '<-'' et '='' sont équivalents pour attribuer une valeur à un objet. L'opérateur '<-' peut être difficile à lire ou confondu avec le signe '-'. Cependant, la recommandation est de limiter le signe '=' à des opérations mathématiques et d'utiliser '<-' pour l'assignation de valeurs.

--- 
# Types d'objets: scalaires

Les données numériques peuvent être déclarées de différentes manières


```r
a <- 1
a
```

```
## [1] 1
```

```r
b <- 1.1
b
```

```
## [1] 1.1
```

```r
c <- 1e-6
c
```

```
## [1] 1e-06
```

--- 
# Types d'objets: scalaires

On peut également déclarer des séries de caractères


```r
test <- "test"
test
```

```
## [1] "test"
```

Finalement, des séries de caractères peuvent être collées entre elles


```r
collage <- paste("a","b", sep="")
collage
```

```
## [1] "ab"
```

--- 

# Types de données: booléens

Le type booléen (logical) permet de représenter les états *vrai* (TRUE) et *faux* (FALSE) et de faire des opérations mathématiques sur ces objets


```r
vrai <- TRUE
faux <- FALSE
vrai
```

```
## [1] TRUE
```

```r
vrai + faux
```

```
## [1] 1
```

```r
vrai * faux
```

```
## [1] 0
```

--- 

# Types de données: facteurs

R est d'abord un language utilisé pour les statistiques, et par conséquent on y retrouve un type de données utilisé pour la réalisation de tests d'hypothèse, qui n'est pas standard à tous les langages. Les facteurs sont des données de catégories comme des traitemetns expérimentaux. 


```r
MesFacteurs <- factor(c(1,2,3,2,3,3,1,2))
MesFacteurs
```

```
## [1] 1 2 3 2 3 3 1 2
## Levels: 1 2 3
```

--- 

# Types de données: conversions

R permet de convertir des objets en différents types de données lorsque le contenu le permet.


```r
as.numeric(c("4","6"))
```

```
## [1] 4 6
```

```r
as.character(c(4,6))
```

```
## [1] "4" "6"
```

```r
as.integer(2.6)
```

```
## [1] 2
```

```r
as.logical(0)
```

```
## [1] FALSE
```

```r
as.logical(1)
```

```
## [1] TRUE
```

```r
as.logical(2)
```

```
## [1] TRUE
```

```r
as.factor(c("4","6"))
```

```
## [1] 4 6
## Levels: 4 6
```

--- 

# Types de variables: vecteurs

Le vecteur est l'objet le plus important de R. On dit que le langage R est *vectoriel*, ce qui lui permet de réaliser des opérations optimisées pour ce type d'objet. 

La façon la plus simple de déclarer un vecteur est (d'autres méthodes seront présentées plus loin):


```r
MonPremierVecteur <- c(1,2,3,4,5)
```

--- 

# Exercice  

Créez un vecteur contenant les valeurs {-1,2,5,9}. Vous pouvez calculer la racine carrée de ces nombres au moyen de la fonction sqrt()

--- 

# Types d'objets: vecteurs

On peut accéder à une position sur le vecteur au moyen d'un *index*, indiqué par les []


```r
MonPremierVecteur <- c(1,2,3,4,5)
MonPremierVecteur[3]
```

```
## [1] 3
```

Òn obtient un *NA* si on tente d'accéder à une position qui n'existe pas:


```r
MonPremierVecteur <- c(1,2,3,4,5)
MonPremierVecteur[6]
```

```
## [1] NA
```

--- 

# Exercice  

Au moyen du vecteur créé précédemment, calculer le produit des valeurs aux positions 2 et 4.

--- 

# Types d'objets: vecteurs

On obtient la dimension d'un vecteur ainsi:


```r
MonPremierVecteur <- c(1,2,3,4,5)
length(MonPremierVecteur)
```

```
## [1] 5
```

--- 

# Types d'objets: matrices

L'extension naturelle d'un vecteur est une *matrice*, soit une collection de vecteurs. R est également optimisé pour réaliser des opérations mathématiques et de manipulation de données sur ce type d'objet. 

La commande de base pour créer une matrice est *matrix*


```r
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
MaMatrice
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

Et on accède à la ligne *i* et la colonne *j* au moyen de la commande suivante


```r
MaMatrice[1,2] 
```

```
## [1] 3
```

On peut aussi accéder à des lignes ou des colonnes entières 


```r
MaMatrice[1,]
```

```
## [1] 1 3 5
```

```r
MaMatrice[,1]
```

```
## [1] 1 2
```

--- 

# Types d'objets: matrices

On obtient la dimension de la matrice ainsi


```r
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
dim(MaMatrice)
```

```
## [1] 2 3
```

```r
nrow(MaMatrice)
```

```
## [1] 2
```

```r
ncol(MaMatrice)
```

```
## [1] 3
```

--- 

# Types d'objets: matrices

Les noms de colonnes et de lignes peuvent être modifiées


```r
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
colnames(MaMatrice) = c("A","B","C")
rownames(MaMatrice) = c("X","Y")
MaMatrice
```

```
##   A B C
## X 1 3 5
## Y 2 4 6
```

---

# Exercice  

Créez une matrice de 2 lignes et 5 colonnes remplies de chiffres tirés au hasard. Pour ce faire, vous pouvez utiliser la fonctions *runif()*. Calculez la somme de la première colonne au moyen de la fonction *sum()*

**Astuce** : pour obtenir de l'aide sur une fonction, essayez

```
?runif()
``` 

--- 

# Type d'objets : listes 

R peut organiser également des collections de données sous forme de liste. Ces collections peuvent être très hétérogènes et rassembler par exemple, des vecteurs et matrices, mais aussi des objets plus complexes et hiérarchiques comme des résultats d'analyses statistiques, et même des listes à l'intérieur de listes.

La création et l'indexation des listes est très similaire à celle des vecteurs et matrices


```r
MaListe = list()
MaListe[[1]] = c(1,2)
MaListe[[2]] = matrix(c("A","B","C","D"), nrow = 2, ncol = 2)
```

Et de même on peut nommer les items d'une liste


```r
names(MaListe) = c("Element1","Element2")
MaListe
```

```
## $Element1
## [1] 1 2
## 
## $Element2
##      [,1] [,2]
## [1,] "A"  "C" 
## [2,] "B"  "D"
```

---
# Type d'objets: data.frame

Le *data.frame* est un objet d'une structure particulière à R, un hybdride entre une matrice et une liste. Le data.frame se décrit comme un tableau de données, avec les rangées *i* et les colonnes *j*, ainsi que des noms de colonnes. Il n'est cependant pas un objet mathématique sur lequel on peut effectuer des opérations mathématiques comme les matrices.


```r
test <- data.frame(a = c(1:10), b = c(11:20))
test
```

```
##     a  b
## 1   1 11
## 2   2 12
## 3   3 13
## 4   4 14
## 5   5 15
## 6   6 16
## 7   7 17
## 8   8 18
## 9   9 19
## 10 10 20
```

On peut transformer un data.frame en matrice


```r
as.matrix(test)
```

```
##        a  b
##  [1,]  1 11
##  [2,]  2 12
##  [3,]  3 13
##  [4,]  4 14
##  [5,]  5 15
##  [6,]  6 16
##  [7,]  7 17
##  [8,]  8 18
##  [9,]  9 19
## [10,] 10 20
```

Ou encore transformer une matrice en data.frame


```r
test2 = matrix(c(1:6), nrow = 3, ncol = 2)
as.data.frame(test2)
```

```
##   V1 V2
## 1  1  4
## 2  2  5
## 3  3  6
```

--- .transition

# Interactions avec l'extérieur
## Lecture et écriture de fichiers

---
# Lire un fichier txt

La lecture de fichiers est souvent l'étape la plus frustrante lorsque l'on travail avec R. Pour ce faire, nous utiliserons les fichiers sous format .txt, qui sont des fichiers de texte brut. Les fichiers .xls ou .xlsx peuvent être lus au moyen de librairies spécialisées, mais les convention sont d'utiliser un format minimal qui est utilisable sur l'ensemble des plateformes. 

Nous allons utiliser le fichier 'quadrats.txt' pour cet exemple. On peut lire le fichier au moyen de la commande


```r
quadrats <- read.table(file = "./quadrats.txt", header = T, row.names = 1, dec = ",", sep = ";") 
```

```
## Warning in file(file, "rt"): impossible d'ouvrir le fichier './
## quadrats.txt' : Aucun fichier ou dossier de ce type
```

```
## Error in file(file, "rt"): impossible d'ouvrir la connexion
```

```r
head(quadrats)
```

```
## Error in head(quadrats): objet 'quadrats' introuvable
```
---
# Lire un fichier txt: anatomie des arguments

- 'file' : nom du fichier à lire
- 'header' : indique s'il y a un entête avec les noms de colonnes
- 'row.names' : indique s'il y a une colonne, et le cas échéant laquelle, indiquant le nom des lines
- 'dec' : caractère utilisé pour délimiter les décimales
- 'sep' : caractère utilisé pour séparer les colonnes

Note : l'objet retourné est par défaut un 'data.frame'. Il peut être ensuite converti, au besoin

---
# Lire un fichier txt: erreurs courantes

- Mauvais nom de fichier
- Mauvais répertoire de travail 
- Guillemets
- Type de séparateur de colonnes
- Présence de points
- Nom des colonnes
- Entrées vides
- Présence de caractères invisibles
- Mauvais encodage des données
- Type de données et d'objets

---

# Écrire des fichiers

Il y a une grande diversité de façons d'enregistrer sur le disque des objets provenant de R. La façon la plus simple, versatile et qui permet les échanges entre différents logiciels est d'écrire sous format txt. 

La syntaxe pour écrire une matrice ou un data.frame est aussi simple que pour lire un fichier txt


```r
test <- matrix(runif(n=10,min=0,max=1),nrow=5,ncol=10)
test
```

```
##           [,1]      [,2]      [,3]      [,4]      [,5]      [,6]      [,7]
## [1,] 0.6128743 0.6481061 0.6128743 0.6481061 0.6128743 0.6481061 0.6128743
## [2,] 0.8504038 0.4235873 0.8504038 0.4235873 0.8504038 0.4235873 0.8504038
## [3,] 0.4388372 0.8267708 0.4388372 0.8267708 0.4388372 0.8267708 0.4388372
## [4,] 0.7114510 0.7297897 0.7114510 0.7297897 0.7114510 0.7297897 0.7114510
## [5,] 0.3572207 0.5175094 0.3572207 0.5175094 0.3572207 0.5175094 0.3572207
##           [,8]      [,9]     [,10]
## [1,] 0.6481061 0.6128743 0.6481061
## [2,] 0.4235873 0.8504038 0.4235873
## [3,] 0.8267708 0.4388372 0.8267708
## [4,] 0.7297897 0.7114510 0.7297897
## [5,] 0.5175094 0.3572207 0.5175094
```

```r
write.table(test, file = "./test.xt")
```

--- 
# Écrire des fichiers: save et .Rdata

Parfoit les objets que l'on souhaite enregistrer ont une structure plus complexe qu'un tableau de données. R permet d'enregistrer ces objets dans un format qui lui est unique, le *.Rdata*. Ces objets sont compressés pour minimiser l'espace disque et ne peuvent être lus que par R. 


```r
test <- list()
test[[1]] <- 1
test[[2]] <- c(1:10)
test
```

```
## [[1]]
## [1] 1
## 
## [[2]]
##  [1]  1  2  3  4  5  6  7  8  9 10
```

```r
save(test, file = "./test.Rdata")
```

--- 
# Lire des fichiers: load et .Rdata

Puisque le fichier Rdata est spécifique à R, il s'agit peut-être du format le plus facile à lire puisque R prend en charge la mise en forme de l'objet, les noms et les types de données.


```r
load("./test.Rdata")
test
```

```
## [[1]]
## [1] 1
## 
## [[2]]
##  [1]  1  2  3  4  5  6  7  8  9 10
```

Faites attention, si le nom de l'objet contenu dans le fichier .Rdata est le même qu'un objet en mémoire, il va écraser ce premier objet.

---
# Quelques commandes utiles

*head()* permet de visualiser une partie d'un jeu de données


```r
head(quadrats, n = 5)
```

```
## Error in head(quadrats, n = 5): objet 'quadrats' introuvable
```

```r
tail(quadrats, n = 5)
```

```
## Error in tail(quadrats, n = 5): objet 'quadrats' introuvable
```

```r
ls()
```

```
##  [1] "a"                 "b"                 "c"                
##  [4] "collage"           "faux"              "MaListe"          
##  [7] "MaMatrice"         "MesFacteurs"       "MonPremierVecteur"
## [10] "objet"             "test"              "test2"            
## [13] "vrai"
```

```r
str(quadrats)
```

```
## Error in str(quadrats): objet 'quadrats' introuvable
```
---
# Quelques commandes utiles

*summary()* permet d'obtenir un résumé du contenu de chaque colonne


```r
summary(quadrats)
```

```
## Error in summary(quadrats): objet 'quadrats' introuvable
```
--- 

# EXERCICE DE MANIPULATION DE DONNÉES

1. Ouvrir le fichier sutton.txt au moyen de Excel ou d'un éditeur de texte
2. Calculer l'abondance moyenne pour chaque espèce sur l'ensemble des quadrats
3. Ouvrir le même fichier au moyen de R
4. Vérifier que le fichier a le format approprié
5. Créer un vecteur 'AbondanceMoyenne' d'une longueur correspondant au nombre d'espèces dans les données sutton
6. Calculer l'abondance moyenne de chaque espèce au moyen de la fonction 'mean' et l'inscrire dans chaque position de AbondanceMoyenne
7. Convertir AbondanceMoyenne en data.frame
8. Attribuer les noms des espèces pour chaque entrée de AbondanceMoyenne
9. Enregistrer AbondanceMoyenne sous forme de fichier txt
10. Ouvrir le fichier txt et le comparer au calcul fait au moyenne de Excel

Note : vous pouvez explorer les données avec 'summary' et pour les avancés. Les plus avancés peuvent explorer la commande 'apply'...

---
# Compléments: le script

Un script est un fichier .R contenant une série d'instructions et de commentaires pour réaliser des opérations sur R. Le script est utilisé pour conserver l'historique des opérations et les répéter au besoin. 

On peut exécuter un script dans son ensemble


```r
rm(list = ls())
source("./MonScript.R")
```

```
## Warning in file(filename, "r", encoding = encoding): impossible d'ouvrir le
## fichier './MonScript.R' : Aucun fichier ou dossier de ce type
```

```
## Error in file(filename, "r", encoding = encoding): impossible d'ouvrir la connexion
```

```r
ls()
```

```
## character(0)
```

--- .transition

# Manipulation de données
## Fonctions avancées

---

# Différents outils pour générer des données


```r
seq(from = 1, to = 10, by = 0.5)
```

```
##  [1]  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5
## [15]  8.0  8.5  9.0  9.5 10.0
```

```r
rep(c(1:3), times = 3)
```

```
## [1] 1 2 3 1 2 3 1 2 3
```

---

# Différents outils pour générer des données


```r
v1 <- c(1:3)
v2 <- c("A","B","C")
expand.grid(v1,v2)
```

```
##   Var1 Var2
## 1    1    A
## 2    2    A
## 3    3    A
## 4    1    B
## 5    2    B
## 6    3    B
## 7    1    C
## 8    2    C
## 9    3    C
```

---
# Combiner des objets


```r
v1 <- c(1:3)
v2 <- c("A","B","C")
c(v1,v2)
```

```
## [1] "1" "2" "3" "A" "B" "C"
```

```r
rbind(v1,v2)
```

```
##    [,1] [,2] [,3]
## v1 "1"  "2"  "3" 
## v2 "A"  "B"  "C"
```

```r
cbind(v1,v2)
```

```
##      v1  v2 
## [1,] "1" "A"
## [2,] "2" "B"
## [3,] "3" "C"
```

--- 
# Fonctions utiles: trier des objets



```r
test <- runif(n = 10, min = 0, max = 100)
test
```

```
##  [1] 25.50618 70.69104 62.66900 86.11034 56.04268 74.04476 25.40730
##  [8] 18.52019 73.56952 82.68799
```

```r
sort(test)
```

```
##  [1] 18.52019 25.40730 25.50618 56.04268 62.66900 70.69104 73.56952
##  [8] 74.04476 82.68799 86.11034
```

---
# Fonctions utiles: obtenir des rangs


```r
test <- runif(n = 10, min = 0, max = 100)
test
```

```
##  [1] 83.929403 84.332511 75.286771  4.710961 84.938019 79.677364 83.185388
##  [8] 48.344172  7.737679 89.343103
```

```r
rank(test)
```

```
##  [1]  7  8  4  1  9  5  6  3  2 10
```

---
# Fonctions utiles: échantillonner les valeurs uniques


```r
test <- c(1,2,5,7,4,3,2,1,10,5,8)
test
```

```
##  [1]  1  2  5  7  4  3  2  1 10  5  8
```

```r
unique(test)
```

```
## [1]  1  2  5  7  4  3 10  8
```

---
# Sous-échantillonner des objets

Parfois, on souhaite avoir seulement une partie des données contenues dans un objet. La fonction 'subset' est fort pratique pour réaliser cette opération. 

Ici par exemple, dans l'exemple de Sutton, on souhaite étudier seulement les quadrats qui contiennent de l'érable à sucre


```r
quadrats <- read.table(file = "./quadrats.txt", header = T, row.names = 1, dec = ",", sep = ";") 
```

```
## Warning in file(file, "rt"): impossible d'ouvrir le fichier './
## quadrats.txt' : Aucun fichier ou dossier de ce type
```

```
## Error in file(file, "rt"): impossible d'ouvrir la connexion
```

```r
sub_quadrats = subset(x = quadrats, quadrat$ers > 0)
```

```
## Error in subset(x = quadrats, quadrat$ers > 0): objet 'quadrats' introuvable
```

```r
summary(sub_quadrat)
```

```
## Error in summary(sub_quadrat): objet 'sub_quadrat' introuvable
```

---
# Faire des tableaux sommaires (enfin !)

Très souvent, on souhaite réaliser un sommaire de nos données. La fonction *summary* est fort utile, mais parfois on souhaite avoir d'autres informations que la moyenne (e.g. la variance). Dans ce cas, la fonction *table* est fort puissante: 


--- 
# EXERCICE DE FIN DE SÉANCE

Le fichier quadrats.txt est un sommaire de données individuelles, où la présence de chaque espèce est mesurée. Ces données se trouvent dans "arbres.txt". Dans le cadre de ce projet, on s'intéresse à la distribution de l'érable à sucre et des autres espèces tout au long du gradient d'élévation de la parcelle. Pour cet exercice, on vous demande de:

1. Charger les données d'arbres
2. Délimiter cinq zones au sein du gradient d'élévation : 0-200m, 201-400m, 401-600m, 601-800m, 801-1000m
3. Pour chacune de ces zones, calculer le nombre de tiges de chaque espèce
4. Enregistrer les résultats dans un tableau avec 5 rangées et S colonnes

On vous demande de rédiger un script qui réalisera l'ensemble de ces étapes, de la lecture des données à l'enregistrement du tableau final. 