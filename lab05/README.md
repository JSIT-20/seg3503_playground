## Synopsis

| Syntax | Description |
| --- | --- |
| Cours | SEG 3503 |
| Travail | Lab 5 |
| Nom | Jean-Sébastien Demers |
| Numéro d'étudiant | 300115743 |
| Professeur | Andrew Forward, aforward@uottawa.ca |
| TA | Aymen Mhamdi, amham077@uottawa.ca |


Lien au repo: https://github.com/JSIT-20/seg3503_playground/tree/main/lab04

## Description du lab

Le but du lab 5 est de se familiariser avec les stubs et mocks.

Le lab fait l'utilisation d'un projet 'grades' et d'un autre projet relié à twitter.

Le but du lab 4 est de faire du Test Driven Development. Pour ce lab, j'ai choisi de faire l'option fizzbuzz (en java).

Mes commits sont regroupés en 6 groupes. Dans chaque groupe, il y a les éléments suivants:

- L'ajout d'un test
- La preuve que le test ne fonctionne pas
- Modification du code pour faire fonctionner le test
- Preuve que les tests fonctionne après la modification
- Refactorisation du code
- Preuve que les tests fonctionnent après la modification

Des images sont fournies pour chaque groupe de commit. Le code est disponible dans le folder /fizzbuzz_java. Les instructions pour compiler et exécuter le code sur un ordinateur windows sont dans le folder /fizzbuzz_java/bin.



## Partie 1 - Grades

En utilisant le code créé pour le devoir 2, l'erreur suivante est générée en cliquant sur le bouton calculate.

![error message](assets/error_grades.PNG)

Cette erreur semble être due au fait que les variables données à la fonction letter_grade sont en String, mais la fonction utilise des int. Alors, quand la fonction fait des opérations arithmétiques, une erreur va être lancée.

Pour régler cette erreur, il faudrait convertir les données en int.

Pour le stub, j'ai simplement fait que les fonctions retournent un chiffre statique.

![grades.calculator stub](assets/stub_code.PNG)

Le résultat attendu est trouvé. Quand je clique le bouton calculate, je recois l'output suivant:

![grades stub output](assets/stub.PNG)

Au besoin, vous pouvez trouver le fichier utilisant ma solution du devoir 2 sous grades/grades/lib/grades.ex

Vous trouverez aussi la version avec le stub sous grades/grades/lib/grades/calculator_stub.ex

## Partie 2 - Twitter

Ajout d'un test

![Test2](assets/CommitGroup2/Test2.PNG)

Preuve que test ne fonctionne pas

![Test2](assets/CommitGroup2/TestNotWorking2.PNG)

Modification du code

![Mod2](assets/CommitGroup2/Modification2.PNG)

Preuve que les tests fonctionnent après la modification

![Mod2](assets/CommitGroup2/TestWorkingAfterModification2.PNG)

Refactorisation

![Refactor2](assets/CommitGroup2/Refactor2.PNG)

Preuve que les tests fonctionnent après la modification

![Refactor2](assets/CommitGroup2/TestWorkingAfterRefactor2.PNG)
