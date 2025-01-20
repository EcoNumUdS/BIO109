# Exercices supplémentaires

## Un maniaque !


1. On jette en face de vous 5 lettres d'un jeu de scrabble

2. Un maniaque vous demande d'écrire un programme qui ordonne les 5 lettres

Prenez le temps de distinguer les étapes que vous réalisez lorsque vous triez les lettres. Vous devez les écrire sous forme de pseudo-code.

Note : vous pouvez assumer que l'ordinateur sait que 'A' vient avant 'B'.


## Le nombre entier

Écrivez un pseudo-code pour déterminer si un nombre entier donné est premier ou non. Un nombre est premier s'il est divisible uniquement par 1 et lui-même.

```
Définir la fonction "est_premier(n)" qui prend en entrée un nombre entier n

Si n est égal à 1:
    Retourner False

Pour i allant de 2 à n - 1:
    Si n est divisible par i:
        Retourner False

Retourner True

Demander à l'utilisateur de saisir un nombre entier x
Appeler la fonction "est_premier" avec x en entrée
Afficher "Le nombre x est premier" si la fonction retourne True, sinon afficher "Le nombre x n'est pas premier"
```