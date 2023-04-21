# Présentation

Le programme principale est dans le fichier *recuit.ml*. Il inclut cependant d'autres fichiers de données (data.ml) et de stucture (city.ml).

# Exécution
Nous avons un fichier Makefile pour faciliter l'exécution du programme. Notons que nous ne générons pas de fichier exécutable mais nous exacution directement le script. Le makefile a 4 targets:

- **make**: permet d'exécuter le programme avec des les deux jeux de données présents dans le fichier "data1.ml" et "data2.ml". Le script s'exécutera d'abord avec le premier et ensuite avec le second.
- **make run**: permet d'exécuter le porgramme avec les données présents dans le fichiers "data1.ml" uniquement. Il s'agit des données utilisées pour la présentation des résultats dans le rapport.
- **make test**: permet d'exécuter le script avec les données présents dans le fichier "data2.ml". Ce fichier est pour les tests divers. Vous pouvez modifier les valeurs (suivant la structure de données définie) afin de tester avec vos propres données.
- **make clean**: permet de supprimer les fichiers générés au cours de l'éxécution du programme. Nous générons uniquement un fichier "out.txt" qui contient la succéssion des valeurs enregistrées lors de l'exécution du programme. Il est utile pour l'analyse de la convergence de la solution obtenue.
