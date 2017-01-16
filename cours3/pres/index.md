---
title       : "Séance 3: Fonctions"
subtitle    : "https://econumuds.github.io/BIO109/cours3/"
author      : "Dominique Gravel"
job         : "Laboratoire d'écologie intégrative "
logo        : "logo.png"
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
--- .transition

# Opérations mathématiques de base

---

# Astuce: générer des nombres aléatoires

Il peut souvent être pratique de générer des chiffres au hasard, sur lesquels on souhaite faire des tests. Nous verrons plusieurs exemples au cours 5, mais pour l'instant, prenez note de la fonction suivante:


```r
alea <- runif(n = 10, min = 0, max = 1)
alea
```

```
##  [1] 0.25759758 0.92142907 0.07926559 0.28224699 0.46014869 0.60214846
##  [7] 0.84664646 0.96979014 0.04311669 0.07557513
```
Ici la distribution utilisée est la distribution uniforme, toutes les autres distributions en sont dérivées. 

---

# Opérateurs de base

R peut faire toutes les opérations mathématiques de base d'une calculatrice :


```r
3 + 7
```

```
## [1] 10
```

```r
3 - 7
```

```
## [1] -4
```

---

# Opérateurs de base

R peut faire toutes les opérations mathématiques de base d'une calculatrice :


```r
3 * 7
```

```
## [1] 21
```

```r
3 / 7
```

```
## [1] 0.4285714
```

---

# Opérateurs de base

R respecte la séquence des opérations, tel que démontré par l'exemple suivant :


```r
3 + 7 / 2 * 5
```

```
## [1] 20.5
```

```r
3 + (7 / 2) * 5
```

```
## [1] 20.5
```

---

# Opérations sur des vecteurs et matrices

Par défaut, le produit de vecteurs et de matrices est *scalaire* : 


```r
vec1 <- runif(10,0,1)
vec1
```

```
##  [1] 0.7522490 0.7910118 0.8551970 0.7511891 0.4124666 0.2668057 0.7968759
##  [8] 0.1400255 0.7968379 0.1724552
```

```r
3*vec1
```

```
##  [1] 2.2567470 2.3730354 2.5655909 2.2535672 1.2373997 0.8004171 2.3906278
##  [8] 0.4200765 2.3905137 0.5173655
```

---

# Opérations sur des vecteurs et matrices

La situation plus compliquée survient lorsque l'on multiplie des vecteurs et des matrices : 


```r
vec1 <- c(10,20,30)
mat1 <- matrix(c(1:6),nr = 3, nc = 2)
mat1
```

```
##      [,1] [,2]
## [1,]    1    4
## [2,]    2    5
## [3,]    3    6
```

```r
vec1 * mat1
```

```
##      [,1] [,2]
## [1,]   10   40
## [2,]   40  100
## [3,]   90  180
```

---

# Opérations avancées


```r
log(100)
```

```
## [1] 4.60517
```

```r
log10(100)
```

```
## [1] 2
```

```r
exp(10)
```

```
## [1] 22026.47
```


---

# Opérations avancées


```r
10^2
```

```
## [1] 100
```

```r
sqrt(100)
```

```
## [1] 10
```

---

# Opérations avancées


```r
alea = runif(10,0,1)
alea
```

```
##  [1] 0.4559915 0.8849520 0.6115124 0.6284354 0.9921609 0.2064184 0.2173085
##  [8] 0.3890982 0.6873320 0.2193706
```

```r
min(alea)
```

```
## [1] 0.2064184
```

```r
max(alea)
```

```
## [1] 0.9921609
```

---

# Arrondir


```r
pi
```

```
## [1] 3.141593
```

```r
floor(pi)
```

```
## [1] 3
```

```r
ceiling(pi)
```

```
## [1] 4
```

```r
round(pi,4)
```

```
## [1] 3.1416
```

---

# Opérations sur des matrices

Parfois, on souhaite calculer des propriétés sur des colonnes et des rangées, Certaines commandes permettent de prendre des raccourcis :


```r
mat <- matrix(runif(6,0,1), nr = 3, nc = 2)
mat
```

```
##           [,1]      [,2]
## [1,] 0.2768074 0.6148224
## [2,] 0.4596425 0.9445593
## [3,] 0.3795278 0.1271147
```

```r
rowSums(mat)
```

```
## [1] 0.8916298 1.4042018 0.5066425
```

```r
colSums(mat)
```

```
## [1] 1.115978 1.686496
```

---

# Opérations sur des matrices

Et de façon plus générale, on peut utiliser la fonction *apply()* qui est très pratique : 


```r
apply(X = mat, MARGIN = 2, FUN = sum)
```

```
## [1] 1.115978 1.686496
```

```r
apply(X = mat, MARGIN = 1, FUN = sum)
```

```
## [1] 0.8916298 1.4042018 0.5066425
```

---

# Opérations sur des matrices

Et finalement, bien que vous l'utiliserez peu dans le cours, il est toujours pratique de savoir que la particularité de R d'être un langage vectoriel permet de facilement faire des opérations sur les matrices :


```r
vec1 <- c(10,20,30)
mat1 <- matrix(c(1:6),nr = 3, nc = 2)
vec1 * mat1
```

```
##      [,1] [,2]
## [1,]   10   40
## [2,]   40  100
## [3,]   90  180
```

```r
vec1 %*% mat1
```

```
##      [,1] [,2]
## [1,]  140  320
```

--- .transition

# Exercice

---

# Abondances relatives

Au moyen du fichier [quadrats.csv](./donnees/quadrats.csv), je vous demande de faire les opérations suivantes: 

1. Calculer l'abondance totale pour chacune des espèces, leur abondance moyenne et le coefficient de variation de leur abondance ;
2. Calculer le nombre total de tiges pour chaque quadrat ;
3. Transformer l'abondance absolue en abondance relative ;

---

# Abondances relatives


```r
quadrats <- read.csv2(file="./donnees/quadrats.csv", header=TRUE, stringsAsFactors=FALSE,row.names = 1)
N_total <- apply(quadrats, 2, sum)
N_moy <- apply(quadrats, 2, mean)
N_sd <- apply(quadrats, 2, sd)
N_CV <- N_sd / N_moy
```

---

# Abondances relatives


```r
N_quadrats <- apply(quadrats, 1, sum)
quadrats_rel = quadrats / N_quadrats
head(quadrats_rel)
```

```
##              abba       acpe       acsa       beal       bepa      fagr
## 0-0   0.006024096 0.33132530 0.06626506 0.04216867 0.00000000 0.5542169
## 0-100 0.000000000 0.27777778 0.22222222 0.16666667 0.00000000 0.3333333
## 0-120 0.060606061 0.21212121 0.36363636 0.12121212 0.03030303 0.2121212
## 0-140 0.160000000 0.20000000 0.16000000 0.32000000 0.04000000 0.0800000
## 0-160 0.064516129 0.06451613 0.35483871 0.25806452 0.03225806 0.1935484
## 0-180 0.178571429 0.10714286 0.32142857 0.25000000 0.00000000 0.1071429
##             piru
## 0-0   0.00000000
## 0-100 0.00000000
## 0-120 0.00000000
## 0-140 0.04000000
## 0-160 0.03225806
## 0-180 0.03571429
```
















--- .transition

# Les fonctions

---

# Qu'est-ce qu'une fonction ? 

Une fonction contient une série de commandes (i.e. lignes de code) qui sont exécutées lorsque la fonction est appelée.

---

# Un simple exemple


```r
ma_fonction <- function(argument1, argument2) {

  # Ce que l'on veut que la fonction exécute
  resultat <- argument1 * argument2 

  # Optionnel. Si l'on veut accéder au résultat de la fonction 
  return(resultat) 
}
```

---

# Pourquoi utiliser des fonctions ? 

1. Répéter une même tâche mais en changeant ses paramètres
2. Rendre votre code plus lisible
3. Rendre votre code plus facile à modifier et à maintenir
4. Partager du code entre différentes analyses
5. Partager votre code avec d'autres personnes
6. Modifier les fonctionalités par défaut de R

---

# La construction d'une fonction

Imaginons que l'on souhaite multiplier deux chiffres (disons, 3 et 7) et les diviser par leur somme. 

$$
\dfrac{3\times7}{3+7}
$$

On peut écrire ce calcul directement dans la console comme suit


```r
(3*7)/(3+7)
```

```
## [1] 2.1
```

---

# La construction d'une fonction

Si on souhaite faire la même opération pour toutes les pairs de chiffres dans le tableau suivant, comment fait-on ?


```r
tableau <- data.frame(x=rnorm(5),y=rnorm(5))
tableau
```

```
##             x          y
## 1  0.07352584  1.0813838
## 2 -0.97595149  2.0699926
## 3  0.65429831  0.8559593
## 4 -0.87004072  0.4680357
## 5 -0.64637009 -0.1661012
```

---

# La construction d'une fonction

À noter qu'en ayant différents chiffres, la formule vue dans la diapositive précédente devient un peu plus générale :

$$
\dfrac{x\times y}{x+y}
$$

---

# La construction d'une fonction

## L'approche longue, pas efficace, mais qui marche... 


```r
(tableau[1,1]*tableau[1,2])/(tableau[1,1]+tableau[1,2])
```

```
## [1] 0.06884491
```

```r
(tableau[2,1]*tableau[2,2])/(tableau[2,1]+tableau[2,2])
```

```
## [1] -1.84656
```

```r
(tableau[3,1]*tableau[3,2])/(tableau[3,1]+tableau[3,2])
```

```
## [1] 0.3708326
```

```r
(tableau[4,1]*tableau[4,2])/(tableau[4,1]+tableau[4,2])
```

```
## [1] 1.012948
```

```r
(tableau[5,1]*tableau[5,2])/(tableau[5,1]+tableau[5,2])
```

```
## [1] -0.1321436
```

Problème: Ce n'est vraiment pas pratique si on a beaucoup de données ou si le format du tableau change.

---

# La construction d'une fonction

## Une boucle peut sauver du temps... 


```r
for(i in 1:nrow(tableau)){
  res <- (tableau[i,1]*tableau[i,2])/(tableau[i,1]+tableau[i,2])
  print(res)
}
```

```
## [1] 0.06884491
## [1] -1.84656
## [1] 0.3708326
## [1] 1.012948
## [1] -0.1321436
```

Problème: Qu'est-ce qu'on fait si on veut appliquer ce calcul sur plusieurs tableaux ???

C'est possible, mais ça peut être un peu plus compliqué ! 

---

# La construction d'une fonction

## Et si on faisait une fonction...

La fonction peut permettre de résoudre certain problèmes car elle permet d'appliquer une série de commandes (i.e. lignes de codes) à différents types de données. En d'autre mots, la fonction généralise des commandes spécifiques. 

---

# La construction d'une fonction

## Comment construit-on une fonction ?

On commence par écrire une version spécifique du code que l'on souhaite généraliser.


```r
(3*7)/(3+7)
```
---

# La construction d'une fonction

## Comment construit-on une fonction ?

Ensuite, on définit ce code comme faisant parti d'une fonction.


```r
prodsum <- function(){
  res <- (3*7)/(3+7)
  return(res)
}
```

Yééé, on a écrit notre première fonction !! :-)

---

# La construction d'une fonction

## Comment construit-on une fonction ?

À noter qu'en utilisant la commande `return()`, on s'assure de renvoyer ce qui se trouve dans l'objet `res` à l'utilisateur.

Une notion importante à avoir lorsqu'on construit une fonction est que tout ce qui se trouve à l'**intérieur** d'une fonction est *entièrement* indépendent de ce qui se trouve à l'**extérieur** d'une fonction.

Par exemple, l'objet `res` à l'extérieur de la fonction **n'existe pas**. Il a un sense uniquement à l'intérieur de la fonction.
 
---

# La construction d'une fonction

## Petit problème

Cette fonction a le défaut de n'être aucunement générale. Elle va toujours donner le même résultat. :-(

---

# La construction d'une fonction

## Comment faire pour rendre la fonction plus générale ?

On peut généraliser cette fonction, en implémentant directement la formule générale présentée précédemment :

$$
\dfrac{x\times y}{x+y}
$$

Pour ce faire, il faut ajouter des **arguments** à notre fonction.

---

# La construction d'une fonction

## Comment faire pour rendre la fonction plus générale ?

Les **arguments** peuvent varier selon ce que l'utilisateur souhaite calculer. Il faut donc s'assurer que les mêmes opérations soient réalisées sur ces arguments. 


```r
prodsum <- function(x,y){
  res <- (x*y)/(x+y)
  return(res)
}
```

Avec cette fonction on peut faire le calcul qui nous intéresse avec différentes séries de chiffres.

---

# La construction d'une fonction

## Comment faire pour rendre la fonction plus générale ?

Autre charactéristique importante des arguments d'une fonction: les objets passés en argument n'ont pas besoin d'avoir le même nom que les arguments. En fait, c'est en général rarement le cas : 


```r
a <- 1
b <- 2
prodsum(x = a, y = b)
```

```
## [1] 0.6666667
```

---

# La construction d'une fonction

## Utilisons notre fonction avec des chiffres


```r
prodsum(3, 7)
```

```
## [1] 2.1
```

```r
prodsum(x = 3, y = 7)
```

```
## [1] 2.1
```

```r
prodsum(y = 7, x = 3)
```

```
## [1] 2.1
```

Comme on le constate, dans le language R, les arguments des peuvent être définis de deux façons.
- En suivant l'ordre des arguments
- En utilisant le noms des arguments

---

# La construction d'une fonction

## Utilisons notre fonction avec des vecteurs

Le language de programmation R permet de faire aussi le calcul sur des vecteurs :
 

```r
vecA <- tableau[,1]
vecB <- tableau[,2]
prodsum(vecA, vecB)
```

```
## [1]  0.06884491 -1.84655983  0.37083259  1.01294774 -0.13214357
```

```r
prodsum(tableau[,1], tableau[,2])
```

```
## [1]  0.06884491 -1.84655983  0.37083259  1.01294774 -0.13214357
```

---

# La construction d'une fonction

## Utilisons notre fonction avec des vecteurs

L'exemple précédent fonctionne bien car `vecA` et `vecB` contiennent le même nombre de chiffres, ils ont la même longueur. Que ce passe-t-il si les vecteurs n'ont pas la même longueur ?
 

```r
vec2 <- tableau[1:2,1]
vec3 <- tableau[1:3,1]
vec4 <- tableau[1:4,2]

prodsum(vec2, vec4)
```

```
## [1]  0.06884491 -1.84655983  0.06770967  0.89932250
```

```r
prodsum(vec3, vec4)
```

```
## Warning in x * y: la taille d'un objet plus long n'est pas multiple de la
## taille d'un objet plus court
```

```
## Warning in x + y: la taille d'un objet plus long n'est pas multiple de la
## taille d'un objet plus court
```

```
## [1]  0.06884491 -1.84655983  0.37083259  0.06354351
```

Avec ces deux exemples ont découvre une propriété particulière du langage R, le **recyclage**. 

---

# La construction d'une fonction

Le **recyclage** est une propriété des fonctions mathematiques de base du language R (e.g. `+`, `-`, `*` et `/`). Lorsque deux vecteurs sont de longueurs différentes, les valeurs du vecteur le plus court sont réutilisées, dans l'ordre, pour combler le nombre de valeurs manquantes entre les deux vecteurs. Cette propriété du langage R peut être très pratique mais aussi **générer beaucoup de problèmes**.

Comme on le voit dans l'exemple, un message d'avertissement est envoyé si la longueur du plus petit vecteur n'est pas un multiple du vecteur le plus long. Par contre, si le vecteur le plus court est un multiple du vecteur le plus long, aucun message d'avertissement est envoyé et ce même si le résultat n'a pas de sense. 

Comment faire pour régler ce problème ?

---

# Ajouter des trappes dans une fonction 

Pour régler le problème subtile présenté dans la diapositive précédente, on peut ajouter des trappes dans la fonction qui envoit un message d'erreur. Voici un exemple de l'ajout qu'on peut faire. 


```r
prodsum <- function(x, y){
  if(length(x) != length(y)){
    stop("'x' est de taille différente de 'y'")
  }
  res <- (x*y)/(x+y)
  return(res)
}
```

Les lignes de codes ajoutées mesure la longeur de `x` et `y` et lorsqu'ils sont d'une longueur différente, un message d'erreur est envoyé et le reste du code dans la fonction n'est pas évalué. 

---

# Ajouter des trappes dans une fonction 

Cette trappe permet de corriger le problème mentionné dans la diapositive précédente :
 

```r
prodsum(vec2,vec4)
```

```
## Error in prodsum(vec2, vec4): 'x' est de taille différente de 'y'
```

```r
prodsum(vec3,vec4)
```

```
## Error in prodsum(vec3, vec4): 'x' est de taille différente de 'y'
```

Notez que le message d'erreur envoyé est composé par le programmeur. Par contre, il est important que le message d'erreur soit court et précis.

---

# La construction d'une fonction

## Utilisons notre fonction avec des tableaux

Le language de programmation R permet de faire aussi le calcul sur des matrices
 

```r
tableau2 <- data.frame(x_2=rnorm(5)^2,y_2=rnorm(5)^2)
prodsum(tableau, tableau2)
```

```
##              x            y
## 1  0.066475488 2.818210e-01
## 2  0.005128657 6.267344e-02
## 3  0.187381214 6.266546e-01
## 4  0.007020300 8.209071e-02
## 5 -1.041098777 8.353242e-09
```

---

# La construction d'une fonction

## Utilisons notre fonction avec des tableaux

Le language de programmation R permet de faire aussi le calcul sur des matrices
 

```r
tableau2 <- data.frame(x_2=rnorm(5)^2,y_2=rnorm(5)^2)
prodsum(tableau, tableau2)
```

```
##             x          y
## 1 0.071928292  0.1494369
## 2 0.797734374  0.5968562
## 3 0.002325313  0.3876055
## 4 0.005063145  0.3938828
## 5 0.093314894 -0.1924349
```

---

# La sortie

Une fonction peut réaliser plusieurs opérations avec les mêmes éléments d'entrée et on peut souhaiter retourner ces arguments dans une liste :


```r
ma_fonction <- function(x) {
  res1 <- mean(x)
  res2 <- sd(x)
  res3 <- res2/res1
  return(list(moyenne = res1, ecart_type = res2, CV = res3))
}
test <- ma_fonction(rnorm(n = 100, mean = 1, sd = 0.5))
test
```

```
## $moyenne
## [1] 0.947505
## 
## $ecart_type
## [1] 0.4766888
## 
## $CV
## [1] 0.5030989
```

---

# Quelques règles utiles lorsqu'on construit une fonction
  - Tout ce qui se trouve à l'intérieur d'une fonction est **entièrement** indépendent dans ce qui se trouve à l'extérieur d'une fonction ;
  - Donner une nom représentatif à la fonction. Un nom qui résume ce que la fonction fait ;
  - Tous les arguments de la fonction doivent être utilisé en quelques part dans la fonction ;
  - Les arguments doivent avoir des noms représentatifs ;
  - Commentez les étapes du code ;
  - Prenez le temps de décrire les arguments sous forme de commentaires en début de fonction ;

--- .transition

# Exercice de fin de séance

---

# Abondances relatives

Toujours à partir du fichier [quadrats.csv](./donnees/quadrats.csv), calculer une fonction qui vous retournera les statistiques descriptives suivantes pour une série de données (une espèce en l'occurrence) : 

1. L'abondance moyenne
2. L'abondance totale
3. Le coefficent de variation de l'abondance
4. La densité maximale dans un quadrat
5. La densité minimale dans un quadrat

Ensuite, appliquez cette fonction sur l'ensemble des espèces au moyen de la fonction *apply()*
