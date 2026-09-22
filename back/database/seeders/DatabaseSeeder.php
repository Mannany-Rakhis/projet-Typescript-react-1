<?php

namespace Database\Seeders;

use App\Models\Categorie;
use App\Models\Question;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $questions = [
            'Géographie' => [
                ['Quelle est la capitale du Japon ?', 'Tokyo', 'Berlin', 'Madrid', 'Paris'],
                ['Quel est le plus grand océan ?', 'Pacifique', 'Atlantique', 'Indien', 'Arctique'],
                ['Quel pays a pour capitale Berlin ?', 'Allemagne', 'Autriche', 'Belgique', 'Suisse'],
                ['Quelle rivière traverse Paris ?', 'Seine', 'Loire', 'Rhin', 'Garonne'],
                ['Quelle est la capitale de l’Italie ?', 'Rome', 'Milan', 'Venise', 'Naples'],
                ['Dans quel continent se trouve le Brésil ?', 'Amérique du Sud', 'Afrique', 'Asie', 'Europe'],
                ['Quel pays est le pays du soleil levant ?', 'Japon', 'Chine', 'Corée du Sud', 'Thaïlande'],
                ['Quelle est la capitale du Canada ?', 'Ottawa', 'Toronto', 'Vancouver', 'Montréal'],
                ['Quel désert est situé en Afrique ?', 'Sahara', 'Gobi', 'Atacama', 'Mojave'],
                ['Quel pays a pour capitale Madrid ?', 'Espagne', 'Portugal', 'Mexique', 'Argentine'],
                ['Quelle est la capitale de la Grèce ?', 'Athènes', 'Rome', 'Sofia', 'Tirana'],
                ['Quel est le plus haut sommet du monde ?', 'Everest', 'Kilimandjaro', 'Mont Blanc', 'K2'],
                ['Quel pays a pour capitale Lisbonne ?', 'Portugal', 'Espagne', 'Italie', 'Brésil'],
                ['Sur quel continent se trouve l’Égypte ?', 'Afrique', 'Asie', 'Europe', 'Océanie'],
                ['Quelle mer sépare l’Europe et l’Afrique ?', 'Méditerranée', 'Baltique', 'Mer du Nord', 'Caraïbes'],
                ['Quelle est la capitale de l’Australie ?', 'Canberra', 'Sydney', 'Melbourne', 'Perth'],
                ['Quel fleuve traverse Londres ?', 'La Tamise', 'La Seine', 'Le Danube', 'Le Tage'],
                ['Quel pays a la forme d’une botte ?', 'Italie', 'Espagne', 'Grèce', 'Croatie'],
                ['Quelle est la capitale de la Norvège ?', 'Oslo', 'Stockholm', 'Helsinki', 'Copenhague'],
                ['Quelle île est la plus grande du monde ?', 'Groenland', 'Madagascar', 'Islande', 'Bornéo'],
            ],
            'Cinéma' => [
                ['Qui a réalisé Inception ?', 'Christopher Nolan', 'James Cameron', 'Peter Jackson', 'Steven Spielberg'],
                ['Dans quel film voit-on Woody ?', 'Toy Story', 'Shrek', 'Cars', 'Bambi'],
                ['Quel film met en scène Harry Potter ?', 'Harry Potter', 'Le Seigneur des Anneaux', 'Star Wars', 'Twilight'],
                ['Quel film est connu pour Simba ?', 'Le Roi lion', 'Aladdin', 'Mulan', 'Bambi'],
                ['Qui joue Jack Sparrow ?', 'Johnny Depp', 'Brad Pitt', 'Tom Cruise', 'Leonardo DiCaprio'],
                ['Dans quel film apparaît Pandora ?', 'Avatar', 'Interstellar', 'Dune', 'Matrix'],
                ['Quel film suit le robot WALL-E ?', 'Wall-E', 'Ratatouille', 'Cars', 'Monstres & Cie'],
                ['Qui joue Wolverine ?', 'Hugh Jackman', 'Ryan Reynolds', 'Christian Bale', 'Patrick Stewart'],
                ['Quel film a gagné beaucoup d’Oscars ?', 'Titanic', 'Avatar', 'La La Land', 'Gladiator'],
                ['Quel réalisateur a fait Matrix ?', 'The Wachowskis', 'Quentin Tarantino', 'David Fincher', 'Ridley Scott'],
                ['Quel film raconte la vie de Forrest ?', 'Forrest Gump', 'The Truman Show', 'Rain Man', 'Philadelphia'],
                ['Quel super-héros porte un bouclier étoilé ?', 'Captain America', 'Iron Man', 'Thor', 'Hulk'],
                ['Dans quel film trouve-t-on le personnage Nemo ?', 'Le Monde de Nemo', 'Cars', 'Shrek', 'Vaiana'],
                ['Qui joue Neo dans Matrix ?', 'Keanu Reeves', 'Brad Pitt', 'Matt Damon', 'Will Smith'],
                ['Quel film se déroule à Jurassic Park ?', 'Jurassic Park', 'King Kong', 'Godzilla', 'Avatar'],
                ['Quel acteur joue Batman dans The Dark Knight ?', 'Christian Bale', 'Ben Affleck', 'George Clooney', 'Michael Keaton'],
                ['Quel film d’animation met en scène Rémy le rat ?', 'Ratatouille', 'Coco', 'Up', 'Cars'],
                ['Quel est le premier film de la saga Star Wars ?', 'Un nouvel espoir', 'L’Empire contre-attaque', 'Le Retour du Jedi', 'La Menace fantôme'],
                ['Qui a réalisé E.T. ?', 'Steven Spielberg', 'James Cameron', 'Tim Burton', 'Christopher Nolan'],
                ['Quel film suit un boxeur nommé Rocky ?', 'Rocky', 'Creed', 'Raging Bull', 'Million Dollar Baby'],
            ],
            'Sport' => [
                ['Quelle nation a remporté l’Euro 2016 de football ?', 'Portugal', 'France', 'Allemagne', 'Espagne'],
                ['Quel tournoi de tennis se joue sur gazon ?', 'Wimbledon', 'Roland-Garros', 'US Open', 'Open d’Australie'],
                ['Quel pays a remporté la Coupe du monde 2018 ?', 'France', 'Brésil', 'Allemagne', 'Argentine'],
                ['Combien de minutes dure un match de football ?', '90', '60', '75', '120'],
                ['Quel sport est associé aux JO en hiver ?', 'Ski', 'Tennis', 'Football', 'Rugby'],
                ['Quel est le célèbre tour cycliste français ?', 'Tour de France', 'Tour d’Italie', 'La Vuelta', 'Paris-Roubaix'],
                ['Dans quel sport marque-t-on un touchdown ?', 'Football américain', 'Rugby', 'Basket', 'Baseball'],
                ['Quel sport utilise une balle orange ?', 'Basket', 'Handball', 'Volley', 'Tennis'],
                ['Quelle équipe joue au Stade de France ?', 'France', 'Espagne', 'Italie', 'Portugal'],
                ['Quel sport est pratiqué sur un tapis ?', 'Gymnastique', 'Natation', 'Cyclisme', 'Aviron'],
                ['Combien de paniers y a-t-il sur un terrain de basket ?', '2', '1', '4', '6'],
                ['Quel pays accueille Wimbledon ?', 'Angleterre', 'France', 'États-Unis', 'Australie'],
                ['Quelle est la distance d’un marathon ?', '42,195 km', '40 km', '50 km', '21 km'],
                ['Quel sport pratique-t-on à Roland-Garros ?', 'Tennis', 'Golf', 'Rugby', 'Boxe'],
                ['Combien de couleurs composent les anneaux olympiques ?', '5', '4', '6', '7'],
                ['Quel sport utilise un volant ?', 'Badminton', 'Tennis', 'Squash', 'Hockey'],
                ['Quelle pièce protège le but au football ?', 'Gardien', 'Attaquant', 'Arbitre', 'Capitaine'],
                ['Quel pays est célèbre pour le sumo ?', 'Japon', 'Chine', 'Corée', 'Mongolie'],
                ['Dans quel sport utilise-t-on des clubs ?', 'Golf', 'Basket', 'Volley', 'Natation'],
                ['Quel sport se joue avec une mêlée ?', 'Rugby', 'Football', 'Tennis', 'Handball'],
            ],
            'Culture Générale' => [
                ['Quel est le symbole chimique de l’eau ?', 'H2O', 'CO2', 'O2', 'NaCl'],
                ['Quel traité a officiellement créé l’Union européenne ?', 'Traité de Maastricht', 'Traité de Rome', 'Traité de Versailles', 'Traité de Lisbonne'],
                ['Qui a peint la Joconde ?', 'Léonard de Vinci', 'Van Gogh', 'Picasso', 'Monet'],
                ['Quel animal est le plus grand ?', 'Baleine bleue', 'Éléphant', 'Girafe', 'Rhinocéros'],
                ['Quelle planète est appelée la planète rouge ?', 'Mars', 'Vénus', 'Jupiter', 'Mercure'],
                ['Quel est le plus grand mammifère ?', 'Baleine bleue', 'Éléphant', 'Dauphin', 'Hippopotame'],
                ['Combien de côtés a un hexagone ?', '6', '5', '7', '8'],
                ['Qui a écrit Les Misérables ?', 'Victor Hugo', 'Balzac', 'Zola', 'Molière'],
                ['Quelle langue est parlée au Brésil ?', 'Portugais', 'Espagnol', 'Français', 'Italien'],
                ['Quel est le nom de la lune de la Terre ?', 'Luna', 'Titan', 'Europe', 'Io'],
                ['Combien de continents y a-t-il généralement ?', '7', '5', '6', '8'],
                ['Quel organe pompe le sang ?', 'Cœur', 'Poumon', 'Foie', 'Rein'],
                ['Quelle est la couleur obtenue avec du bleu et du jaune ?', 'Vert', 'Orange', 'Violet', 'Rose'],
                ['Combien font 9 fois 9 ?', '81', '72', '90', '99'],
                ['Quel métal est attiré par un aimant ?', 'Fer', 'Or', 'Argent', 'Cuivre'],
                ['Quelle saison vient après le printemps ?', 'Été', 'Automne', 'Hiver', 'Janvier'],
                ['Quel instrument possède des touches noires et blanches ?', 'Piano', 'Violon', 'Flûte', 'Trompette'],
                ['Quel gaz les humains respirent-ils principalement ?', 'Oxygène', 'Hydrogène', 'Hélium', 'Méthane'],
                ['Combien de lettres compte l’alphabet français ?', '26', '24', '28', '30'],
                ['Quel est le contraire de rapide ?', 'Lent', 'Grand', 'Fort', 'Tôt'],
            ],
        ];

        $additionalQuestions = [
            'Géographie' => [
                ['Quelle est la capitale de l’Espagne ?', 'Madrid', 'Lisbonne', 'Rome', 'Paris'],
                ['Quel pays possède la ville de New York ?', 'États-Unis', 'Canada', 'Australie', 'Mexique'],
                ['Quel est le plus grand continent ?', 'Asie', 'Afrique', 'Europe', 'Amérique'],
                ['Quelle est la capitale de l’Allemagne ?', 'Berlin', 'Munich', 'Hambourg', 'Francfort'],
                ['Quel océan borde la côte ouest de la France ?', 'Atlantique', 'Pacifique', 'Indien', 'Arctique'],
                ['Quel pays est traversé par le Nil ?', 'Égypte', 'Maroc', 'Kenya', 'Nigeria'],
                ['Quelle est la capitale de la Belgique ?', 'Bruxelles', 'Amsterdam', 'Luxembourg', 'Lille'],
                ['Dans quel pays se trouve la ville de Kyoto ?', 'Japon', 'Chine', 'Corée du Sud', 'Vietnam'],
                ['Quel est le plus grand pays du monde ?', 'Russie', 'Canada', 'Chine', 'États-Unis'],
                ['Quelle chaîne de montagnes sépare la France et l’Espagne ?', 'Pyrénées', 'Alpes', 'Carpates', 'Andes'],
            ],
            'Cinéma' => [
                ['Qui joue Hermione Granger ?', 'Emma Watson', 'Natalie Portman', 'Keira Knightley', 'Anne Hathaway'],
                ['Dans quel film Shrek doit-il empêcher le mariage de Fiona avec le prince Charmant ?', 'Shrek 2', 'Shrek', 'Shrek le troisième', 'Shrek 4'],
                ['Qui a réalisé Titanic ?', 'James Cameron', 'Steven Spielberg', 'Christopher Nolan', 'Tim Burton'],
                ['Quel acteur joue Iron Man ?', 'Robert Downey Jr.', 'Chris Evans', 'Chris Hemsworth', 'Mark Ruffalo'],
                ['Quel film raconte l’histoire d’un jeune sorcier ?', 'Harry Potter', 'Avatar', 'Gladiator', 'Rocky'],
                ['Quel film d’animation se déroule à Monstropolis ?', 'Monstres & Cie', 'Toy Story', 'Cars', 'Coco'],
                ['Qui joue le personnage de Forrest Gump ?', 'Tom Hanks', 'Jim Carrey', 'Will Smith', 'Matt Damon'],
                ['Quel film met en scène une voiture appelée Flash McQueen ?', 'Cars', 'Turbo', 'Herbie', 'Grease'],
                ['Quel réalisateur est associé au film Pulp Fiction ?', 'Quentin Tarantino', 'Martin Scorsese', 'Ridley Scott', 'Alfred Hitchcock'],
                ['Quel film raconte l’histoire d’Elsa et Anna ?', 'La Reine des neiges', 'Raiponce', 'Vaiana', 'Mulan'],
            ],
            'Sport' => [
                ['Combien de joueurs y a-t-il dans une équipe de basket sur le terrain ?', '5', '6', '7', '11'],
                ['Quel sport se joue à Roland-Garros ?', 'Tennis', 'Golf', 'Rugby', 'Boxe'],
                ['Quel pays est célèbre pour le sumo ?', 'Japon', 'Chine', 'Corée', 'Mongolie'],
                ['Combien de tours compte généralement un Grand Prix de Formule 1 ?', 'Cela dépend du circuit', '10', '50 exactement', '100 exactement'],
                ['Quel sport utilise un ballon ovale ?', 'Rugby', 'Tennis', 'Golf', 'Natation'],
                ['Quel athlète est associé au sprint jamaïcain ?', 'Usain Bolt', 'Michael Phelps', 'Roger Federer', 'Zinedine Zidane'],
                ['Quel sport pratique-t-on sur un ring ?', 'Boxe', 'Ski', 'Cyclisme', 'Aviron'],
                ['Quelle compétition oppose les meilleures équipes européennes de football ?', 'Ligue des champions', 'Tour de France', 'Roland-Garros', 'Wimbledon'],
                ['Quel sport se pratique avec un volant ?', 'Badminton', 'Basket', 'Hockey', 'Cricket'],
                ['Quel est le nom du célèbre tournoi de tennis britannique ?', 'Wimbledon', 'US Open', 'Davis Cup', 'Masters de Paris'],
            ],
            'Culture Générale' => [
                ['Combien de pattes a une araignée ?', '8', '6', '10', '12'],
                ['Quel est le satellite naturel de la Terre ?', 'La Lune', 'Mars', 'Titan', 'Le Soleil'],
                ['Quel est le contraire de chaud ?', 'Froid', 'Rapide', 'Lourd', 'Clair'],
                ['Combien de minutes y a-t-il dans une heure ?', '60', '30', '90', '100'],
                ['Quel animal est connu pour sa mémoire légendaire ?', 'Éléphant', 'Chat', 'Lapin', 'Renard'],
                ['Quel scientifique a formulé les lois du mouvement et de la gravitation ?', 'Isaac Newton', 'Albert Einstein', 'Galilée', 'Nicolas Copernic'],
                ['Quel organe permet principalement de respirer ?', 'Poumons', 'Cœur', 'Estomac', 'Cerveau'],
                ['Quelle couleur obtient-on en mélangeant rouge et blanc ?', 'Rose', 'Vert', 'Orange', 'Violet'],
                ['Quel jour vient après vendredi ?', 'Samedi', 'Dimanche', 'Jeudi', 'Lundi'],
                ['Quel instrument possède six cordes le plus souvent ?', 'Guitare', 'Piano', 'Flûte', 'Batterie'],
            ],
        ];

        foreach ($additionalQuestions as $categoryName => $categoryQuestions) {
            $questions[$categoryName] = array_merge($questions[$categoryName], $categoryQuestions);
        }

        Question::whereIn('question', [
            'Quel film met en scène le personnage de Shrek ?',
            'Combien de joueurs composent une équipe de football ?',
            'Dans quel sport utilise-t-on une raquette ?',
            'Combien de jours compte une semaine ?',
            'Quel est le résultat de 12 + 8 ?',
        ])->delete();

        $answerPools = [
            'Géographie' => ['Lisbonne', 'Athènes', 'Oslo', 'Canberra', 'Le Caire', 'Moscou', 'Vienne', 'Dublin', 'Prague'],
            'Cinéma' => ['Robert De Niro', 'Meryl Streep', 'The Godfather', 'Pulp Fiction', 'Gladiator', 'Coco', 'Interstellar', 'Joker', 'Avatar'],
            'Sport' => ['Natation', 'Athlétisme', 'Golf', 'Badminton', 'Rugby', 'Boxe', 'Volley', 'Handball', 'Cyclisme'],
            'Culture Générale' => ['Bleu', 'Paris', 'Victor Hugo', 'Oxygène', 'Piano', 'Newton', 'Lundi', 'Atlantique', '81'],
        ];

        foreach ($questions as $categoryName => $categoryQuestions) {
            Categorie::firstOrCreate(['categorie' => $categoryName]);

            foreach ($categoryQuestions as $questionData) {
                $question = $questionData[0];
                $answers = array_values(array_unique(array_merge(array_slice($questionData, 1), $answerPools[$categoryName])));
                $answers = array_slice($answers, 0, 10);

                while (count($answers) < 10) {
                    $answers[] = 'Choix '.(count($answers) + 1);
                }

                Question::updateOrCreate(
                    ['question' => $question],
                    [
                    'categorie' => $categoryName,
                    'question' => $question,
                    'reponse1' => $answers[0],
                    'reponse2' => $answers[1],
                    'reponse3' => $answers[2],
                    'reponse4' => $answers[3],
                    'reponse5' => $answers[4],
                    'reponse6' => $answers[5],
                    'reponse7' => $answers[6],
                    'reponse8' => $answers[7],
                    'reponse9' => $answers[8],
                    'reponse10' => $answers[9],
                    ]
                );
            }
        }

        foreach (Question::all() as $storedQuestion) {
            $answers = [];

            foreach (range(1, 10) as $answerIndex) {
                $answer = trim((string) $storedQuestion->{'reponse'.$answerIndex});
                if ($answer !== '') {
                    $answers[] = $answer;
                }
            }

            $answers = array_values(array_unique(array_merge(
                $answers,
                $answerPools[$storedQuestion->categorie] ?? ['Option A', 'Option B', 'Option C', 'Option D', 'Option E', 'Option F', 'Option G', 'Option H', 'Option I']
            )));

            while (count($answers) < 10) {
                $answers[] = 'Choix '.(count($answers) + 1);
            }

            $storedQuestion->update(array_combine(
                array_map(function ($index) { return 'reponse'.$index; }, range(1, 10)),
                array_slice($answers, 0, 10)
            ));
        }
    }
}
