# Introduction à la programmation scientifique

[![Build html](https://github.com/EcoNumUdS/BIO109/workflows/Build%20html/badge.svg)](https://github.com/EcoNumUdS/BIO109/actions) [![Build pdf](https://github.com/EcoNumUdS/BIO109/workflows/Build%20pdf/badge.svg)](https://github.com/EcoNumUdS/BIO109/actions)


(1 crédit; 15 heures)

**Enseignant:** Victor Cameron

## Plan de cours

- [PDF du plan de cours](https://github.com/EcoNumUdS/BIO109/raw/master/syllabus/syllabus.pdf)

## Séance 1: Introduction

[![](https://img.shields.io/badge/HTML-Pr%C3%A9sentation-blue)](https://econumuds.github.io/BIO109/cours1) [![](https://img.shields.io/badge/PDF-Pr%C3%A9sentation-yellow)](https://econumuds.github.io/BIO109/cours1/cours1.pdf)

- Présentation du plan de cours
- Historique et motivation au calcul scientifique
- Le pseudo-code
- Bonnes pratiques de programmation
- Installation de R Studio

## Séance 2: Introduction au language R

[![](https://img.shields.io/badge/HTML-Pr%C3%A9sentation-blue)](https://econumuds.github.io/BIO109/cours2) [![](https://img.shields.io/badge/PDF-Pr%C3%A9sentation-yellow)](https://econumuds.github.io/BIO109/cours2/cours2.pdf)

- Interagir avec R
- Lire et écrire des fichiers
- Le script R
- Manipulation des objets

## Séance 3: Les fonctions

[![](https://img.shields.io/badge/HTML-Pr%C3%A9sentation-blue)](https://econumuds.github.io/BIO109/cours3) [![](https://img.shields.io/badge/PDF-Pr%C3%A9sentation-yellow)](https://econumuds.github.io/BIO109/cours3/cours3.pdf)

- Opérations mathématiques
- L'anatomie d'une fonction
- Automatisation d'une série d'opérations

## Séance 4: Algorithmique I

[![](https://img.shields.io/badge/HTML-Pr%C3%A9sentation-blue)](https://econumuds.github.io/BIO109/cours4) [![](https://img.shields.io/badge/PDF-Pr%C3%A9sentation-yellow)](https://econumuds.github.io/BIO109/cours4/cours4.pdf)

- Boucles
- Opérateurs logiques

## Séance 5: Algorithmique II

[![](https://img.shields.io/badge/HTML-Pr%C3%A9sentation-blue)](https://econumuds.github.io/BIO109/cours5) [![](https://img.shields.io/badge/PDF-Pr%C3%A9sentation-yellow)](https://econumuds.github.io/BIO109/cours5/cours5.pdf)

- Simulations de Monte Carlo
- Optimisation des scripts


## Compiler les présentations localement

Avant la première compilation, il est recommandé d'installer les dépendances necessaires:

```bash
make install
```

Pour générer tous les présentations, il suffit juste de taper:

```bash
make
```

Ce commande là va nous compiler les fichiers `html` que ne sont pas à jours avec leur respecives fichers `.Rmd`.

Pour compiler une seule présentation, il faut spécifier le nom du bloc du cours envisagé:

```bash
# compiler premier cours
make -C cours1
```

### Workflow

Pour chaque bloc de présentation, `make` va vérifier s'il y a des fichers `.Rmd`
avec des editions plus recentes que la présentation compilé (`index.html`).
Si oui, il va fusionner tous les `.Rmd` en un seul ficher `index.Rmd`, pour finalement compiler la présentation
`html` avec le package `rmarkdown`. Vous pouvez enfin accéder à la présentation
avec le fichier `index.html`.


## Mise en ligne des cours

Notre ami robot, [GitHub Actions](https://github.com/features/actions) est en charge de la mise en ligne des cours sur internet. Il y a deux [workflows](https://github.com/EcoNumUdS/BIO500/tree/master/.github/workflows) capables d'automatiser la compilation et déploiement des présentation a chaque push. Le première (`build.yml`) compile les les fichers `.Rmd` en html, et télécharge les présentations html sur la branche `gh-pages`. Le deuxième utilise [`Decktape`](https://github.com/astefanutti/decktape) pour exporter les html en format pdf, et aussi les télécharger sur la branche `gh-pages`.
