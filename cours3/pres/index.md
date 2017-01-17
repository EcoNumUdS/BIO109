---
title       : "Séance 2: Introduction au langage R"
subtitle    : "https://econumuds.github.io/BIO109/cours2/"
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

# Les fonctions

---

# Qu'est-ce qu'une fonction ?

Une fonction contient une série de commandes (i.e. lignes de code) qui sont exécutées lorsque la fonction est appelée.

---

# Un simple exemple


```r
ma_fonction <- function(argument1, argument2) {

  # Ce que l'on veut que la fonction fasse
  resultat <- argument1 * argument2

  # Optionnel. Si l'on veut acceder au resultat de la fonction
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
## [1] 2.1
```

---

# La construction d'une fonction

Si on souhaite faire la même opération pour toutes les pairs de chiffres dans le tableau suivant, comment fait-on ?


```r
tableau <- data.frame(x=rnorm(5),y=rnorm(5))
tableau
##            x            y
## 1 -0.9031970 -0.016655535
## 2  0.5244600  0.075919314
## 3 -1.1451098  0.545564607
## 4  0.7385754 -0.007128769
## 5 -1.0672939  1.091048358
```

À noter qu'en ayant différents chiffres, la formule vue dans la diapositive précédente devient un peu plus générale :

$$
\dfrac{x\times y}{x+y}
$$

---

# La construction d'une fonction

## L'approche longue, pas efficace, mais qui marche...




```r
(tableau[1,1]*tableau[1,2])/(tableau[1,1]+tableau[1,2])
(tableau[2,1]*tableau[2,2])/(tableau[2,1]+tableau[2,2])
(tableau[3,1]*tableau[3,2])/(tableau[3,1]+tableau[3,2])
(tableau[4,1]*tableau[4,2])/(tableau[4,1]+tableau[4,2])
(tableau[5,1]*tableau[5,2])/(tableau[5,1]+tableau[5,2])
## [1] -0.01635396
## [1] 0.06631915
## [1] 1.042009
## [1] -0.007198247
## [1] -49.02114
```

Problème: Ce n'est vraiment pas pratique si on a beaucoup de données ou si le format du tableau change.
