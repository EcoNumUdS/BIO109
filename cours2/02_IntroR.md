# Contenu du cours

1. Interagir avec R

2. Lire et écrire des objets

3. Le script R

4. Manipuler des objets

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

<img src="assets/img/intro/Rgui.jpg" height="400px"></img>

--- 

# Utiliser R Studio

<img src="assets/img/intro/RStudio.jpg" height="400px"></img>

--- 

# Exercice : installer et lancer R Studio

<img src="assets/img/intro/RStudio_logo.jpg" height="400px"></img>

--- 

# Exercice : interaction avec la ligne de commande

Le plus simple est d'utiliser R comme une calculatrice. 

Que donne l'opération

2 + 16 x 24 - 56

--- 

# Répertoire de travail

Savoir où on est

'''
getwd()
'''

Changer le répertoire de travail

'''
setwd(~\)
'''

# Environnement de travail

Obtenir le contenu du dossier dans le répertoire de travail

'''
dir()
'''

Obtenir la liste des objets en mémoire

'''
ls()
'''

Effacer un objet en mémoire

'''
test <- 1
test
ls()
rm(test)
ls()
'''
--- 

# Le concept d'objet

Un objet peut contenir de l'information de toute nature: un tableau de données, les résultats d'une analyse, une figure, une fonction

La commande pour créer un objet est composé de trois parties:
i) une valeur d'intérêt
ii) un identifiant
iii) l'opérateur d'assignation

'''
a <- c(1,2)
a
'''

--- 

# Types d'objets: scalaires

Comprendre les types de données utilisées par R est une notion de base pour réaliser des opérations. R utilise soit des données brutes, ou des collections de données. 

Pour assigner une valeur à un objet simple (un scalaire) on utilise l'opération suivante:

'''
objet <- 2
objet
'''

Notons que les opérateurs '<-'' et '='' sont équivalents pour attribuer une valeur à un objet. L'opérateur '<-' peut être difficile à lire ou confondu avec le signe '-'. Cependant, la recommandation est de limiter le signe '=' à des opérations mathématiques et d'utiliser '<-' pour l'assignation de valeurs.

--- 
# Types d'objets: scalaires

Les données numériques peuvent être déclarées de différentes manières

'''
a <- 1
a
b <- 1.1
b
c <- 1e-6
c
'''

--- 
# Types d'objets: scalaires

On peut également déclarer des séries de caractères

'''
test <- "test"
test
'''

Finalement, des séries de caractères peuvent être collées entre elles

'''
collage <- paste("a","b", sep="")
collage
'''

--- 

# Types de données: booléens

Le type booléen (logical) permet de représenter les états *vrai* (TRUE) et *faux* (FALSE) et de faire des opérations mathématiques sur ces objets

'''
vrai <- TRUE
faux <- FALSE
vrai
vrai + faux
vrai * faux
'''

--- 

# Types de données: facteurs

R est d'abord un language utilisé pour les statistiques, et par conséquent on y retrouve un type de données utilisé pour la réalisation de tests d'hypothèse, qui n'est pas standard à tous les langages. Les facteurs sont des données de catégories comme des traitemetns expérimentaux. 

'''
MesFacteurs <- factor(c(1,2,3,2,3,3,1,2))
MesFacteurs
'''

--- 

# Types de données: conversions

R permet de convertir des objets en différents types de données lorsque le contenu le permet.

'''
as.numeric(c("4","6")
as.character(c(4,6))
as.integer(2.6)
as.logical(0)
as.logical(1)
as.logical(2)
as.factor(c("4","6"))
'''

--- 

# Types de variables: vecteurs

Le vecteur est l'objet le plus important de R. On dit que le langage R est *vectoriel*, ce qui lui permet de réaliser des opérations optimisées pour ce type d'objet. 

La façon la plus simple de déclarer un vecteur est (d'autres méthodes seront présentées plus loin):

'''
MonPremierVecteur <- c(1,2,3,4,5)
'''

--- 

# Exercice  

Créez un vecteur contenant les valeurs {-1,2,5,9}. Vous pouvez calculer la racine carrée de ces nombres au moyen de la fonction sqrt()

--- 

# Types d'objets: vecteurs

On peut accéder à une position sur le vecteur au moyen d'un *index*, indiqué par les []

'''
MonPremierVecteur <- c(1,2,3,4,5)
MonPremierVecteur[3]
'''

Òn obtient un *NA* si on tente d'accéder à une position qui n'existe pas:

'''
MonPremierVecteur <- c(1,2,3,4,5)
MonPremierVecteur[6]
'''

--- 

# Exercice  

Au moyen du vecteur créé précédemment, calculer le produit des valeurs aux positions 2 et 4.

--- 

# Types d'objets: vecteurs

On obtient la dimension d'un vecteur ainsi:

'''
MonPremierVecteur <- c(1,2,3,4,5)
length(MonPremierVecteur)
'''

--- 

# Types d'objets: matrices

L'extension naturelle d'un vecteur est une *matrice*, soit une collection de vecteurs. R est également optimisé pour réaliser des opérations mathématiques et de manipulation de données sur ce type d'objet. 

La commande de base pour créer une matrice est *matrix*

'''
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
MaMatrice
'''

Et on accède à la ligne *i* et la colonne *j* au moyen de la commande suivante

'''
MaMatrice[1,2] 
'''

On peut aussi accéder à des lignes ou des colonnes entières 

'''
MaMatrice[1,]
MaMatrice[,1]
'''

--- 

# Types d'objets: matrices

On obtient la dimension de la matrice ainsi

'''
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
dim(MaMatrice)
nrow(MaMatrice)
ncol(MaMatrice)
'''

--- 

# Types d'objets: matrices

Les noms de colonnes et de lignes peuvent être modifiées

'''
MaMatrice <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
colnames(MaMatrice) = c("A","B","C")
rownames(MaMatrice) = c("X","Y")
MaMatrice
'''


--- 

# Exercice  

Créez une matrice de 2 lignes et 5 colonnes remplies de chiffres tirés au hasard. Pour ce faire, vous pouvez utiliser la fonctions *runif()*. Calculez la somme de la première colonne au moyen de la fonction *sum()*

**Astuce** : pour obtenir de l'aide sur une fonction, essayez

'''
?runif()
''' 

--- 

# Type d'objets': listes 

R peut organiser également des collections de données sous forme de liste. Ces collections peuvent être très hétérogènes et rassembler par exemple, des vecteurs et matrices, mais aussi des objets plus complexes et hiérarchiques comme des résultats d'analyses statistiques, et même des listes à l'intérieur de listes.

La création et l'indexation des listes est très similaire à celle des vecteurs et matrices

'''
MaListe = list()
MaListe[[1]] = c(1,2)
MaListe[[2]] = matrix(c("A","B","C","D"), nrow = 2, ncol = 2)
'''

Et de même on peut nommer les items d'une liste

'''
names(MaListe) = c("Element1","Element2")
MaListe
'''

---
# Type d'objets: data.frame

Le *data.frame* est un objet d'une structure particulière à R, un hybdride entre une matrice et une liste. Le data.frame se décrit comme un tableau de données, avec les rangées *i* et les colonnes *j*, ainsi que des noms de colonnes. Il n'est cependant pas un objet mathématique sur lequel on peut effectuer des opérations mathématiques comme les matrices.

'''
test <- data.frame(a = c(1:10), b = c(11:20))
test
'''

On peut transformer un data.frame en matrice

'''
as.matrix(test)
'''

Ou encore transformer une matrice en data.frame

'''
test2 = matrix(c(1:6), nrow = 3, ncol = 2)
as.data.frame(test2)
'''

--- .transition

# Interactions avec l'extérieur
## Lecture et écriture de fichiers

---
# Lire un fichier txt

La lecture de fichiers est souvent l'étape la plus frustrante lorsque l'on travail avec R. Pour ce faire, nous utiliserons les fichiers sous format .txt, qui sont des fichiers de texte brut. Les fichiers .xls ou .xlsx peuvent être lus au moyen de librairies spécialisées, mais les convention sont d'utiliser un format minimal qui est utilisable sur l'ensemble des plateformes. 

Nous allons utiliser le fichier 'quadrats.txt' pour cet exemple. On peut lire le fichier au moyen de la commande

'''
quadrats <- read.table(file = "./quadrats.txt", header = T, row.names = 1, dec = ",", sep = ";") 
head(quadrats)
'''
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

'''
test <- matrix(runif(n=10,min=0,max=1),nrow=5,ncol=10)
test
write.table(test, file = "./test.xt")
''' 

--- 
# Écrire des fichiers: save et .Rdata

Parfoit les objets que l'on souhaite enregistrer ont une structure plus complexe qu'un tableau de données. R permet d'enregistrer ces objets dans un format qui lui est unique, le *.Rdata*. Ces objets sont compressés pour minimiser l'espace disque et ne peuvent être lus que par R. 

'''
test <- list()
test[[1]] <- 1
test[[2]] <- c(1:10)
test
save(test, file = "./test.Rdata")
'''

--- 
# Lire des fichiers: load et .Rdata

Puisque le fichier Rdata est spécifique à R, il s'agit peut-être du format le plus facile à lire puisque R prend en charge la mise en forme de l'objet, les noms et les types de données.

'''
load("./test.Rdata")
test
'''

Faites attention, si le nom de l'objet contenu dans le fichier .Rdata est le même qu'un objet en mémoire, il va écraser ce premier objet.

---
# Quelques commandes utiles

*head()* permet de visualiser une partie d'un jeu de données

'''
head(quadrats, n = 5)
tail(quadrats, n = 5)
ls()
str(quadrats)
'''
---
# Quelques commandes utiles

*summary()* permet d'obtenir un résumé du contenu de chaque colonne

'''
summary(quadrats)
'''
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

'''
rm(list = ls())
source("./MonScript.R")
ls()
'''

--- .transition

# Manipulation de données
## Fonctions avancées

---
# Différents outils pour générer des données

'''
seq(from = 1, to = 10, by = 0.5)
rep(c(1:3), times = 3)
v1 <- c(1:3)
v2 <- c("A","B","C")
expand.grid(v1,v2)
--- 

---
# Combiner des objets

'''
v1 <- c(1:3)
v2 <- c("A","B","C")
c(v1,v2)
rbind(v1,v2)
cbind(v1,v2)
'''

--- 
# Fonctions utiles: trier des objets


'''
test <- runif(n = 10, min = 0, max = 100)
test
sort(test)
'''

---
# Fonctions utiles: obtenir des rangs

'''
test <- runif(n = 10, min = 0, max = 100)
test
rank(test)
'''

---
# Fonctions utiles: échantillonner les valeurs uniques

'''
test <- c(1,2,5,7,4,3,2,1,10,5,8)
test
unique(test)
'''

---
# Sous-échantillonner des objets

Parfois, on souhaite avoir seulement une partie des données contenues dans un objet. La fonction 'subset' est fort pratique pour réaliser cette opération. 

Ici par exemple, dans l'exemple de Sutton, on souhaite étudier seulement les quadrats qui contiennent de l'érable à sucre

'''
quadrats <- read.table(file = "./quadrats.txt", header = T, row.names = 1, dec = ",", sep = ";") 
sub_quadrats = subset(x = quadrats, quadrat$ers > 0)
summary(sub_quadrat)
'''

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
