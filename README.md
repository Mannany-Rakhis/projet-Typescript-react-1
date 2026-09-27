# Quiz Culture

Projet de quiz culturel développé en React + TypeScript avec une API Laravel et une base MySQL.

## Objectif

Créer une application de quiz rapide, visuelle et mobile-first, avec :
- choix de catégorie,
- affichage des questions une par une,
- timer de 30 secondes,
- calcul du score,
- affichage aléatoire des réponses.

Le cœur fonctionnel de l’application est le frontend, qui gère l’expérience utilisateur et la logique du jeu. Le backend sert de source de données et de support pour la récupération des questions et catégories.

---

## Stack technique

- Frontend : React + TypeScript + Vite
- Backend : Laravel + PHP
- Base de données : MySQL
- Style : CSS personnalisé

---

## Prérequis

- Node.js et npm
- PHP 8
- Composer
- MySQL
- Une base nommée `quiz` disponible localement

---

## Installation

### 1) Backend Laravel

Dans le dossier `back` :

```powershell
composer install
php artisan key:generate
php artisan migrate
php artisan serve --host=127.0.0.1 --port=8000
```

Vérifie que le fichier `back/.env` contient bien les bonnes informations de connexion MySQL :

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=quiz
DB_USERNAME=root
DB_PASSWORD=
```

Si la base n’existe pas encore, crée-la dans MySQL avant de lancer les migrations.

### 2) Frontend React

Dans le dossier `frontend` :

```powershell
npm install
npm run dev -- --host 127.0.0.1 --port 5173
```

Le frontend sera alors accessible sur :

```text
http://127.0.0.1:5173
```

L’API Laravel est attendue sur :

```text
http://127.0.0.1:8000
```

---

## Lancement du projet

Ouvrir deux terminaux :

1. Backend :
```powershell
cd back
php artisan serve --host=127.0.0.1 --port=8000
```

2. Frontend :
```powershell
cd frontend
npm run dev -- --host 127.0.0.1 --port 5173
```

---

## Fonctionnement

- L’utilisateur choisit une catégorie.
- Une partie démarre avec 10 questions tirées aléatoirement.
- Chaque question affiche 4 réponses mélangées.
- Le timer est de 30 secondes pour chaque question.
- Le score augmente si la bonne réponse est sélectionnée.
- L’écran final affiche le résultat final.
- Le front mélange les réponses pour éviter que la bonne réponse soit toujours en position fixe.

---

## API Laravel

Routes principales :

| Méthode | Endpoint | Description |
| --- | --- | --- |
| GET | `/api/categories` | Récupère les catégories |
| GET | `/api/questions` | Récupère les questions |
| POST | `/api/questions` | Ajoute une question |
| PUT | `/api/questions/{id}` | Modifie une question |
| DELETE | `/api/questions/{id}` | Supprime une question |

---

## Structure du projet

```text
Tp_Quiz/
├── back/               # API Laravel
├── frontend/           # Application React
├── README.md           # Documentation du projet
├── .gitignore
└── ...
```

---

## Points importants

- La logique de jeu est principalement côté frontend.
- Le backend est utilisé pour récupérer les données du quiz.
- Les réponses sont affichées dans un ordre aléatoire pour éviter le biais de la “bonne réponse toujours en première position”.
- Une base MySQL fonctionnelle est nécessaire au bon fonctionnement de l’API.

---

## Difficultés rencontrées

- Gestion des données de quiz depuis l’API.
- Alignement entre données Laravel et affichage React.
- Mélange des réponses pour garantir un comportement équitable.
- Synchronisation entre le front et les catégories disponibles.

---

## Présentation orale

La présentation peut suivre cet ordre :
1. Choix techniques
2. Interface utilisateur
3. Logique du quiz
4. Gestion des catégories et des questions
5. Intégration avec l’API
6. Difficultés rencontrées et solutions

---

## Sécurité / bonne pratique

- Ne pas partager les fichiers `.env` contenant les identifiants locaux.
- Ne publie que les fichiers `.env.example` ou les informations non sensibles.

---

## Auteur / équipe

Projet réalisé dans le cadre du module de développement web / application interactive.

---

## Remarques

Le projet est fonctionnel localement et prêt à être utilisé en mode développement. Il peut être amélioré davantage côté backend avec une vraie modélisation des catégories, validation des données et protection des routes de modification.