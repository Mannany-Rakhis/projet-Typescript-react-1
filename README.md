# Quiz Culture

Jeu de quiz avec un backend Laravel et un frontend React + TypeScript.

## Prerequis

- PHP 8 avec `pdo_mysql` active
- Composer
- Node.js et npm
- MySQL

## Installation du backend

Dans le dossier `back` :

```powershell
copy .env.example .env
composer install
php artisan key:generate
```

Ouvre ensuite `back/.env` et configure les acces MySQL de ton ordinateur :

```env
DB_DATABASE=quiz
DB_USERNAME=root
DB_PASSWORD=ton_mot_de_passe_mysql
```

Cree la base vide `quiz` dans MySQL, puis execute :

```powershell
php artisan migrate
php artisan db:seed
php artisan serve --host=127.0.0.1 --port=8000
```

Le backend sera accessible sur http://127.0.0.1:8000.

## Installation du frontend

Dans un autre terminal, dans `frontend` :

```powershell
npm install
copy .env.example .env
npm run dev -- --host 127.0.0.1 --port 5173
```

Le frontend sera accessible sur http://127.0.0.1:5173.

## Export de la base

Le fichier `back/quiz.sql` contient un export de la base `quiz` avec les categories et les questions. Pour le restaurer dans MySQL :

```powershell
mysql -u root -p < quiz.sql
```

L’URL de l’API peut être changee dans `frontend/.env` avec :

```env
VITE_API_URL=http://127.0.0.1:8000
```

## Fonctionnement

- La base contient plusieurs questions par categorie.
- Chaque partie prend 10 questions aleatoires.
- Chaque question affiche 4 reponses.
- `reponse1` est la bonne reponse dans les donnees Laravel.
- Le frontend affiche la bonne reponse en vert et une mauvaise reponse en rouge.
- Chaque question possede dix reponses en base ; quatre sont tirees aleatoirement et affichees.
- Chaque question dure trente secondes. Sans reponse, la question suivante est lancee automatiquement.
- L’interface est mobile-first et s’adapte aux grands ecrans.

## Endpoints de l’API

| Methode | Endpoint | Utilisation |
| --- | --- | --- |
| GET | `/api/categories` | Recuperer les categories |
| GET | `/api/questions` | Recuperer les questions et leurs reponses |
| POST | `/api/questions` | Ajouter une question |
| PUT | `/api/questions/{id}` | Modifier une question |
| DELETE | `/api/questions/{id}` | Supprimer une question |

## Choix techniques et architecture

- React + TypeScript : composants reutilisables et typage des donnees du quiz.
- Laravel/PHP : API REST, validation des formulaires et interface d’administration.
- MySQL : stockage relationnel durable des categories et questions.
- Vite : outil de developpement et de build du frontend React.
- `App.tsx` gere l’orchestration de la partie ; `components/` contient le logo, les cartes, le timer et les boutons de reponse.

## Repartition des missions

A completer par le groupe avant le rendu Moodle :

| Membre | Mission |
| --- | --- |
| Nom 1 | Frontend React, TypeScript et design |
| Nom 2 | API Laravel et base MySQL |
| Nom 3 | Questions, tests et documentation |

## Presentation orale

La presentation peut suivre cet ordre : choix graphique, endpoints API, choix de Laravel et MySQL, architecture React, demonstration du timer et du score, extrait de code, difficultes rencontrees et solutions.

Ne partage jamais les fichiers `.env`. Ils contiennent les mots de passe locaux. Partage uniquement `.env.example`.