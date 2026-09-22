<?php

namespace Database\Seeders;

use App\Models\Categorie;
use App\Models\Question;
use Illuminate\Database\Seeder;

class QuizSeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            'Histoire',
            'Cinéma',
            'Sport',
            'Géographie',
        ];

        foreach ($categories as $name) {
            Categorie::firstOrCreate(['categorie' => $name]);
        }

        $questions = [
            'Histoire' => [
                [
                    'question' => 'En quelle année a eu lieu la Révolution française ?',
                    'reponses' => ['1789', '1776', '1804', '1848', '1492', '1914', '1871', '1765', '1723', '1701'],
                ],
                [
                    'question' => 'Qui a été le premier homme à marcher sur la Lune ?',
                    'reponses' => ['Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'John Glenn', 'Alan Shepard', 'Michael Collins', 'Valentina Tereshkova', 'Gus Grissom', 'Sultan bin Salman', 'Charles Duke'],
                ],
                [
                    'question' => 'Quel empire a construit le Colisée ?',
                    'reponses' => ['L’Empire romain', 'L’Empire byzantin', 'L’Empire ottoman', 'L’Empire mongol', 'L’Empire carolingien', 'L’Empire gaulois', 'L’Empire aztèque', 'L’Empire persan', 'L’Empire inca', 'L’Empire sakha'],
                ],
                [
                    'question' => 'Qui était le roi de France pendant la guerre de 1914 ?',
                    'reponses' => ['Georges V', 'Louis XVI', 'Napoléon Bonaparte', 'Henri IV', 'Charles de Gaulle', 'Philippe VI', 'François Ier', 'Louis XIV', 'Charles X', 'Albert Ier'],
                ],
                [
                    'question' => 'En quelle année a été signé le traité de Versailles ?',
                    'reponses' => ['1919', '1914', '1925', '1939', '1905', '1923', '1889', '1945', '1867', '1830'],
                ],
                [
                    'question' => 'Qui a dirigé la campagne d’Égypte et de Syrie sous le Premier Empire ?',
                    'reponses' => ['Napoléon Bonaparte', 'Jules César', 'Louis XIV', 'Charles Martel', 'Frédéric II', 'Henri IV', 'Gengis Khan', 'Alexandre le Grand', 'Catherine II', 'Vercingétorix'],
                ],
                [
                    'question' => 'Quel peuple a construit Machu Picchu ?',
                    'reponses' => ['Les Incas', 'Les Romains', 'Les Vikings', 'Les Mayas', 'Les Égyptiens', 'Les Grecs', 'Les Gaulois', 'Les Mongols', 'Les Aztèques', 'Les Perses'],
                ],
                [
                    'question' => 'Quelle ville a été la capitale de l’Empire romain d’Orient ?',
                    'reponses' => ['Constantinople', 'Rome', 'Athènes', 'Alexandrie', 'Milan', 'Paris', 'Berlin', 'Venise', 'Nîmes', 'Carthage'],
                ],
                [
                    'question' => 'Qui était le dernier empereur de l’Empire romain d’Occident ?',
                    'reponses' => ['Romulus Augustule', 'Jules César', 'Néron', 'Auguste', 'Tibère', 'Caligula', 'Clovis', 'Trajan', 'Dioclétien', 'Hadrien'],
                ],
                [
                    'question' => 'Quel événement marque la fin de la Seconde Guerre mondiale en Europe ?',
                    'reponses' => ['La capitulation de l’Allemagne', 'Le bombardement de Pearl Harbor', 'La prise de la Bastille', 'Le traité de Tordesillas', 'La bataille d’Angleterre', 'La révolution russe', 'La chute de Berlin', 'Le couronnement de Charlemagne', 'Le Concordat', 'L’armistice de 1918'],
                ],
            ],
            'Cinéma' => [
                [
                    'question' => 'Quel film a remporté l’Oscar du meilleur film en 1994 ?',
                    'reponses' => ['Forrest Gump', 'Pulp Fiction', 'Le Roi lion', 'Le Silence des agneaux', 'La Liste de Schindler', 'Titanic', 'Braveheart', 'Le Dernier Samouraï', 'Le Client', 'Dances with Wolves'],
                ],
                [
                    'question' => 'Qui a réalisé Inception ?',
                    'reponses' => ['Christopher Nolan', 'James Cameron', 'Martin Scorsese', 'Ridley Scott', 'Denis Villeneuve', 'Quentin Tarantino', 'David Fincher', 'Spielberg', 'Coppola', 'Wes Anderson'],
                ],
                [
                    'question' => 'Dans quel film le personnage principal est Woody ?',
                    'reponses' => ['Toy Story', 'Shrek', 'Cars', 'Les Indestructibles', 'Le Roi lion', 'Frozen', 'Bambi', 'Zootopie', 'Ratatouille', 'Mon voisin Totoro'],
                ],
                [
                    'question' => 'Quel acteur joue le rôle de Jack Dawson dans Titanic ?',
                    'reponses' => ['Leonardo DiCaprio', 'Brad Pitt', 'Tom Cruise', 'Matt Damon', 'Johnny Depp', 'Tom Hanks', 'Keanu Reeves', 'George Clooney', 'Mel Gibson', 'Ryan Gosling'],
                ],
                [
                    'question' => 'Quelle saga met en scène Harry Potter ?',
                    'reponses' => ['Harry Potter', 'Le Seigneur des anneaux', 'Star Wars', 'Narnia', 'Hunger Games', 'Twilight', 'Percy Jackson', 'The Witcher', 'Le Hobbit', 'Matrix'],
                ],
                [
                    'question' => 'Quel film est connu pour la scène d’attaque des drones dans un rêve ?',
                    'reponses' => ['Inception', 'Interstellar', 'Dune', 'The Matrix', 'Arrival', 'Blade Runner', 'Tenet', 'Minority Report', 'Memento', 'Source Code'],
                ],
                [
                    'question' => 'Qui joue le rôle principal dans Le Grand Bleu ?',
                    'reponses' => ['Jean Reno', 'Alain Delon', 'Gérard Depardieu', 'Vincent Cassel', 'Jean-Pierre Bacri', 'Daniel Auteuil', 'François Cluzet', 'Benoît Poelvoorde', 'Marion Cotillard', 'Jamel Debbouze'],
                ],
                [
                    'question' => 'Quel film célèbre a pour titre un prénom féminin inspiré d’une princesse ?',
                    'reponses' => ['La Belle et la Bête', 'Mulan', 'Cinderella', 'Sofia', 'Alice', 'Rapunzel', 'Elsa', 'Fée Clochette', 'Moana', 'Bébé Bop'],
                ],
                [
                    'question' => 'Dans quel film le personnage principal s’appelle Neo ?',
                    'reponses' => ['Matrix', 'Avatar', 'Jurassic Park', 'Mad Max', 'Inception', 'Terminator', 'Se7en', 'E.T.', 'Predator', 'Memento'],
                ],
                [
                    'question' => 'Quel film de 2023 a mis en scène Paul Atreides ?',
                    'reponses' => ['Dune : Deuxième Partie', 'Oppenheimer', 'The Batman', 'Wonka', 'The Flash', 'Avatar 2', 'Barbie', 'The Menu', 'Napoléon', 'Killers of the Flower Moon'],
                ],
            ],
            'Sport' => [
                [
                    'question' => 'Quelle équipe a gagné la Coupe du monde de football en 2018 ?',
                    'reponses' => ['France', 'Allemagne', 'Brésil', 'Argentine', 'Espagne', 'Portugal', 'Belgique', 'Croatie', 'Italie', 'Uruguay'],
                ],
                [
                    'question' => 'Combien de joueurs composent une équipe de football sur le terrain ?',
                    'reponses' => ['11', '9', '10', '7', '12', '8', '15', '13', '6', '5'],
                ],
                [
                    'question' => 'Dans quel sport utilise-t-on une raquette ?',
                    'reponses' => ['Le tennis', 'Le rugby', 'Le golf', 'Le saut à la perche', 'La boxe', 'L’athlétisme', 'Le handball', 'Le hockey', 'Le cyclisme', 'Le curling'],
                ],
                [
                    'question' => 'Quel pays a remporté le plus de titres de Coupe du monde ?',
                    'reponses' => ['Brésil', 'Allemagne', 'Italie', 'Argentine', 'France', 'Espagne', 'Pays-Bas', 'Uruguay', 'Angleterre', 'Portugal'],
                ],
                [
                    'question' => 'Quel sport est associé au terme “slam dunk” ?',
                    'reponses' => ['Le basket-ball', 'Le tennis', 'Le cricket', 'Le baseball', 'La natation', 'Le golf', 'Le hockey sur glace', 'Le volley-ball', 'Le rugby', 'L’athlétisme'],
                ],
                [
                    'question' => 'Quelle distance court-on au marathon ?',
                    'reponses' => ['42,195 km', '41,195 km', '39,5 km', '30 km', '10 km', '50 km', '21 km', '25 km', '45 km', '35 km'],
                ],
                [
                    'question' => 'Qui est surnommé “The King” dans le monde du sport ?',
                    'reponses' => ['LeBron James', 'Cristiano Ronaldo', 'Usain Bolt', 'Michael Jordan', 'Roger Federer', 'Kylian Mbappé', 'Muhammad Ali', 'Tom Brady', 'Neymar', 'Lionel Messi'],
                ],
                [
                    'question' => 'Dans quel sport pratique-t-on les “coupures” et les “crosses” ?',
                    'reponses' => ['Le golf', 'Le basket', 'Le tennis', 'L’athlétisme', 'Le rugby', 'Le ski', 'Le boxe', 'Le badminton', 'Le surf', 'L’escrime'],
                ],
                [
                    'question' => 'Quel pays organise les Jeux olympiques d’été en 2024 ?',
                    'reponses' => ['France', 'Japon', 'Brésil', 'Chine', 'Allemagne', 'Italie', 'Espagne', 'Etats-Unis', 'Canada', 'Australie'],
                ],
                [
                    'question' => 'Quel club de football est connu sous le nom de “Les Bleus” ?',
                    'reponses' => ['L’équipe de France', 'Le Real Madrid', 'Liverpool', 'Manchester United', 'Barcelone', 'Juventus', 'Bayern Munich', 'PSG', 'Inter Milan', 'Chelsea'],
                ],
            ],
            'Géographie' => [
                [
                    'question' => 'Quelle est la capitale du Japon ?',
                    'reponses' => ['Tokyo', 'Kyoto', 'Osaka', 'Sapporo', 'Nagoya', 'Fukuoka', 'Hiroshima', 'Yokohama', 'Nara', 'Matsuyama'],
                ],
                [
                    'question' => 'Quel est le plus grand océan du monde ?',
                    'reponses' => ['L’océan Pacifique', 'L’océan Atlantique', 'L’océan Indien', 'L’océan Arctique', 'L’océan Austral', 'La mer Méditerranée', 'L’océan Nord', 'La mer Rouge', 'L’océan de Chine', 'Le golfe du Mexique'],
                ],
                [
                    'question' => 'Quelle ville est appelée la ville lumière ?',
                    'reponses' => ['Paris', 'Londres', 'Berlin', 'Rome', 'Madrid', 'Amsterdam', 'New York', 'Tokyo', 'Moscou', 'Lisbonne'],
                ],
                [
                    'question' => 'Quel pays est connu pour ses pyramides de Gizeh ?',
                    'reponses' => ['L’Égypte', 'La Grèce', 'L’Italie', 'Le Pérou', 'Le Mexique', 'Le Maroc', 'L’Arabie saoudite', 'Le Kenya', 'La Turquie', 'La Tunisie'],
                ],
                [
                    'question' => 'Quel est le plus haut sommet du monde ?',
                    'reponses' => ['L’Everest', 'Le K2', 'Le Mont Blanc', 'Le Fuji', 'Le Kilimandjaro', 'Le Denali', 'Le Matterhorn', 'Le Mont Elbrouz', 'Le Annapurna', 'Le Aconcagua'],
                ],
                [
                    'question' => 'Dans quel continent se trouve le désert du Sahara ?',
                    'reponses' => ['Afrique', 'Asie', 'Europe', 'Amérique du Sud', 'Océanie', 'Amérique du Nord', 'Antarctique', 'Amérique centrale', 'Europe de l’Est', 'Afrique du Sud'],
                ],
                [
                    'question' => 'Quelle est la capitale de l’Italie ?',
                    'reponses' => ['Rome', 'Milan', 'Venise', 'Naples', 'Florence', 'Turin', 'Bologne', 'Palerme', 'Gênes', 'Bari'],
                ],
                [
                    'question' => 'Quel fleuve traverse Paris ?',
                    'reponses' => ['La Seine', 'Le Rhône', 'La Loire', 'Le Danube', 'La Garonne', 'Le Rhin', 'Le Nil', 'Le Tibre', 'Le Mississippi', 'Le Volga'],
                ],
                [
                    'question' => 'Quel pays est bordé par le plus grand nombre de frontières ?',
                    'reponses' => ['La Russie', 'La Chine', 'Le Canada', 'Les États-Unis', 'La France', 'Le Brésil', 'L’Argentine', 'L’Allemagne', 'L’Inde', 'Le Kazakhstan'],
                ],
                [
                    'question' => 'Quel est le plus grand désert chaud du monde ?',
                    'reponses' => ['Le Sahara', 'Le Kalahari', 'Le Gobi', 'Le Namib', 'Le Sonora', 'Le Thar', 'Le Negev', 'Le Mojave', 'Le Atacama', 'Le Gibson'],
                ],
            ],
        ];

        foreach ($questions as $categoryName => $categoryQuestions) {
            foreach ($categoryQuestions as $entry) {
                Question::firstOrCreate([
                    'categorie' => $categoryName,
                    'question' => $entry['question'],
                ], [
                    'reponse1' => $entry['reponses'][0],
                    'reponse2' => $entry['reponses'][1],
                    'reponse3' => $entry['reponses'][2],
                    'reponse4' => $entry['reponses'][3],
                    'reponse5' => $entry['reponses'][4],
                    'reponse6' => $entry['reponses'][5],
                    'reponse7' => $entry['reponses'][6],
                    'reponse8' => $entry['reponses'][7],
                    'reponse9' => $entry['reponses'][8],
                    'reponse10' => $entry['reponses'][9],
                ]);
            }
        }
    }
}
