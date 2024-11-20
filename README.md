# Nom du projet

Une brève description de ce que fait ton application. Par exemple, une application de gestion de ressources ou un projet de blog.

## Prérequis

Avant de commencer à utiliser ce projet, assurez-vous que vous avez les éléments suivants installés sur votre machine :

- **Ruby** 
- **Rails** 
- **SQLite3** 
- **Git** 

## Étapes pour exécuter le projet en local

### 1. Cloner le projet depuis GitHub

Tout d'abord, vous devez cloner le projet sur votre machine locale.

1. Ouvrez un terminal.
2. Clonez ce projet en utilisant Git :

   ```bash
   git clone https://github.com/etheocledk/irawo-app.git
   cd irawo-app
   
3. Installer les dépendances :

   ```bash
   bundle install

4. Configurer la base de données :

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed

5. Lancer le serveur local :

   ```bash
   rails server

