# Description du projet
## Création et modélisation d'une base de donnée pour un système de réservation de places de cinéma.

- Etape 1 : Modelisation de la base de donné dans un diagram (méthode merise)
- Etape 2 : Retranscription des lignes de commande dans un fichier .sql utilisant un système de gestion de base de données relationnelles (SGBDR)
- Etape 3 : Retranscription du shéma physique en tables alimentées de données factice (utilisation de [Mockaroo](https://www.mockaroo.com/) )
- Etape 4 : Test des commandes dans [phpMyAdmin](https://www.phpmyadmin.net/)

## Permissions données à deux utilisateurs 
- "admin" a tout les droits sur la BDD
- "lambda" peut seulement lire la BDD

![alt text](/imgREADME/utilisateurs.PNG)

&nbsp;

# Ligne de commande (powershell) pour exporter entièrement la BDD

> mysqldump -u [username] [database] > [path/filename.sql] 


## Exemple :
>mysqldump -u root eval_cinema > C:\wamp64\mySqlbackup\dumpEvalcinema.sql

