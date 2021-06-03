## Synopsis

| Syntax | Description |
| --- | --- |
| Cours | SEG 3503 |
| Travail | Lab 3 |
| Nom | Jean-Sébastien Demers |
| Numéro d'étudiant | 300115743 |
| Professeur | Andrew Forward, aforward@uottawa.ca |
| TA | Aymen Mhamdi, amham077@uottawa.ca |


Lien au repo: https://github.com/JSIT-20/seg3503_playground/tree/main/lab03

## Description du lab

Le lab 3 est composé de deux parties.

La première partie consiste de créer des tests cases additionnels pour la classe Date.java afin d'atteindre une meilleure couverture du code. Vous trouverez mes observations à ce sujet sous la section 'Date.java couverture de code avec Jacoco' ci-bas. Les test cases que j'ai ajouté se trouvent dans les fichiers DateNextDateExceptionTest.java, DateNextDateOkTest.java et DateTest.java. Tous ces fichiers se retrouvent sous /date/date/test. Il y a également des screenshots de la couverture finale et initiale de Date.java sous /assets.

Pour la partie 2 du lab, veuillez voir la section 'Refactoriser Date.java'. Pour la refactorisation, j'ai refactorisé deux fonctions dans le fichier Date.java trouvé sous /date/date/src.



## Date.java couverture de code avec Jacoco

Je ne crois pas qu'il est possible d'avoir une couverture de code de 100%. 
Certaines méthodes comme isEndOfMonth() contiennent des combinaisons d'arguments impossibles à atteindre.
Par exemple, le jours de la date ne peut pas être 31 et 30 en même temps, donc les combinaisons ou le jours est 31 et le jours est 30 sont impossibles à couvrir.

![isEndOfMonth()](assets/impossible_dates.PNG)

Initiallement, il y avait une couverture d'énoncés de 85% et une couverture de branches de 79%

![couverture initiale](assets/initial_jacoco_default.PNG)

En ajoutant une vingtaine de tests, j'ai réussi à monter la couverture d'énoncés à 100% et la couverture de branches à 98%.

Vous trouverez ci-dessous quelques exemples de tests ajoutés (certains paramétrisés, d'autres non). SVP voir les fichiers de tests si vous désirez voir les autres.

![couverture après tests ajoutés](assets/added_tests_jacoco_default.PNG)


![DateTest](assets/DateTestExample.PNG)
![DateNextDateOkExample](assets/DateNextDateOkExample.PNG)
![DateExceptionExample](assets/DateExceptionExample.PNG)

## Refactoriser Date.java

Pour refactoriser Data.java, modifié la fonction isEndOfMonth().

Pour isEndOfMonth, il était impossible que le jours soit égal à 30 et 31 en même temps.

J'ai donc séparé les clauses en plusieurs blocs conditionnels.

J'ai également réduit la clause 'day == 29 && leap' à seulement 'day ==29'. Il était impossible d'atteindre le cas (1,0) puisque si on essaie de créer une date le 29 février sur une année non leap, il y a une exception qui est lancée plus tôt.

![isEndOfMonth](assets/isEndOfMonth.PNG)

Ces modifications m'ont permis de monter ma couverture d'instructions à 100% et ma couverture de branches à 100%.

![refactor jacoco](assets/refactor_jacoco_2.PNG)

La couverture a monté puisque des branches qui ne pouvaient pas être couvertes auparavant sont maintenant couvertes.

