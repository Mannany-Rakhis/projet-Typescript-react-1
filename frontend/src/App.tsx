import { useEffect, useState } from 'react'
import AnswerButton from './components/AnswerButton'
import CategoryCard from './components/CategoryCard'
import Logo from './components/Logo'
import Timer from './components/Timer'

type Question = { id: number; question: string; answers: string[]; correctAnswer: string }
type Category = { id: number; name: string; color: string; questions: Question[] }
type ApiQuestion = Record<string, string | number | undefined>

// URL de base de l'API Laravel.
const API_BASE = `${import.meta.env.VITE_API_URL || 'http://127.0.0.1:8000'}/api`
// Palette utilisée pour chaque catégorie.
const colors = ['#ffcc00', '#ff5edb', '#4dff88', '#4dd7ff']
const fallbackQuestions = [
  [
    ['Quelle est la capitale du Japon ?', 'Tokyo', 'Berlin', 'Madrid', 'Paris'],
    ['Quel est le plus grand océan ?', 'Pacifique', 'Atlantique', 'Indien', 'Arctique'],
    ['Quel pays a pour capitale Berlin ?', 'Allemagne', 'Autriche', 'Belgique', 'Suisse'],
    ['Quelle rivière traverse Paris ?', 'Seine', 'Loire', 'Rhin', 'Garonne'],
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
  [
    ['Qui a réalisé Inception ?', 'Christopher Nolan', 'James Cameron', 'Peter Jackson', 'Steven Spielberg'],
    ['Dans quel film voit-on Woody ?', 'Toy Story', 'Shrek', 'Cars', 'Bambi'],
    ['Qui joue Jack Sparrow ?', 'Johnny Depp', 'Brad Pitt', 'Tom Cruise', 'Leonardo DiCaprio'],
    ['Quel film suit le robot WALL-E ?', 'Wall-E', 'Ratatouille', 'Cars', 'Monstres & Cie'],
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
  [
    ['Quelle nation a remporté l’Euro 2016 de football ?', 'Portugal', 'France', 'Allemagne', 'Espagne'],
    ['Quel tournoi de tennis se joue sur gazon ?', 'Wimbledon', 'Roland-Garros', 'US Open', 'Open d’Australie'],
    ['Quel sport utilise une balle orange ?', 'Basket', 'Handball', 'Volley', 'Tennis'],
    ['Quel sport est associé aux JO en hiver ?', 'Ski', 'Tennis', 'Football', 'Rugby'],
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
  [
    ['Qui a peint la Joconde ?', 'Da Vinci', 'Van Gogh', 'Picasso', 'Monet'],
    ['Quel traité a officiellement créé l’Union européenne ?', 'Traité de Maastricht', 'Traité de Rome', 'Traité de Versailles', 'Traité de Lisbonne'],
    ['Quelle planète est appelée la planète rouge ?', 'Mars', 'Vénus', 'Jupiter', 'Mercure'],
    ['Quel est le symbole chimique de l’eau ?', 'H2O', 'CO2', 'O2', 'NaCl'],
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
].map((questions) => questions.map(([question, correctAnswer, ...answers], id) => ({
  id,
  question,
  answers: [correctAnswer, ...answers],
  correctAnswer,
})))

// Données de secours si l'API est indisponible.
function makeFallback(): Category[] {
  return ['Géographie', 'Cinéma', 'Sport', 'Culture Générale'].map((name, categoryIndex) => ({
    id: categoryIndex + 1,
    name,
    color: colors[categoryIndex],
    questions: Array.from({ length: 10 }, (_, index) => {
      const item = fallbackQuestions[categoryIndex][index % fallbackQuestions[categoryIndex].length]
      return { ...item, id: categoryIndex * 10 + index }
    }),
  }))
}

// Mélange un tableau pour afficher les réponses dans un ordre aléatoire.
function shuffle<T>(items: T[]): T[] {
  return [...items].sort(() => Math.random() - 0.5)
}

// Transforme une question récupérée depuis l'API en objet utilisé par le jeu.
function apiQuestion(raw: ApiQuestion, index: number): Question {
  const answers = Array.from({ length: 10 }, (_, answerIndex) => String(raw[`reponse${answerIndex + 1}`] ?? '').trim()).filter(Boolean)
  const correctAnswer = String(raw.reponse1 ?? answers[0] ?? '')
  const distractors = answers.filter((answer) => answer !== correctAnswer)
  const displayedAnswers = [correctAnswer, ...shuffle(distractors).slice(0, 3)]
  return { id: Number(raw.id ?? index), question: String(raw.question ?? 'Question indisponible'), answers: shuffle(displayedAnswers), correctAnswer }
}

async function loadCategories(): Promise<Category[]> {
  try {
    const [categoryResponse, questionResponse] = await Promise.all([
      fetch(`${API_BASE}/categories`, { cache: 'no-store' }),
      fetch(`${API_BASE}/questions`, { cache: 'no-store' }),
    ])
    if (!categoryResponse.ok || !questionResponse.ok) throw new Error('API indisponible')
    const categories = await categoryResponse.json() as Array<{ id?: number; categorie?: string }>
    const questions = await questionResponse.json() as ApiQuestion[]
    const fallback = makeFallback()
    if (!categories.length) return fallback
    return categories.map((category, categoryIndex) => {
      const name = String(category.categorie ?? '')
      const items = questions.filter((question) => String(question.categorie ?? '').toLowerCase() === name.toLowerCase())
      return { id: Number(category.id ?? categoryIndex), name, color: colors[categoryIndex % colors.length], questions: items.length ? items.map(apiQuestion) : fallback[categoryIndex % fallback.length].questions }
    })
  } catch {
    return makeFallback()
  }
}

function App() {
  // État principal du jeu.
  const [categories, setCategories] = useState<Category[]>([])
  const [categoryIndex, setCategoryIndex] = useState(0)
  const [questionIndex, setQuestionIndex] = useState(0)
  const [activeQuestions, setActiveQuestions] = useState<Question[]>([])
  const [score, setScore] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null)
  const [timeLeft, setTimeLeft] = useState(30)
  const [screen, setScreen] = useState<'home' | 'question' | 'result'>('home')

  useEffect(() => { void loadCategories().then(setCategories) }, [])

  const category = categories[categoryIndex]
  // Gère le timer pendant une question.
  useEffect(() => {
    if (!category || screen !== 'question' || selectedAnswer !== null) return

    const questionsForCurrentGame = activeQuestions.length ? activeQuestions : category.questions.slice(0, 10)

    setTimeLeft(30)
    const timer = window.setInterval(() => {
      setTimeLeft((value) => Math.max(value - 1, 0))
    }, 1000)
    const timeout = window.setTimeout(() => {
      if (questionIndex + 1 >= questionsForCurrentGame.length) setScreen('result')
      else {
        setQuestionIndex((value) => value + 1)
        setSelectedAnswer(null)
      }
    }, 30000)

    return () => {
      window.clearInterval(timer)
      window.clearTimeout(timeout)
    }
  }, [activeQuestions, category, questionIndex, screen, selectedAnswer])

  if (!categories.length) return <main className="screen loading">Chargement du quiz...</main>

  const questionsForGame = activeQuestions.length ? activeQuestions : category.questions.slice(0, 10)
  const question = questionsForGame[questionIndex]

  // Vérifie la bonne réponse et augmente le score.
  const chooseAnswer = (answerIndex: number) => {
    if (selectedAnswer !== null) return
    setSelectedAnswer(answerIndex)
    if (question.answers[answerIndex] === question.correctAnswer) setScore((value) => value + 1)
  }

  // Passe à la question suivante.
  const nextQuestion = () => {
    if (questionIndex + 1 >= questionsForGame.length) setScreen('result')
    else { setQuestionIndex((value) => value + 1); setSelectedAnswer(null) }
  }

  // Lance une partie pour la catégorie sélectionnée.
  const startGame = () => { setActiveQuestions(shuffle(category.questions).slice(0, 10)); setQuestionIndex(0); setScore(0); setSelectedAnswer(null); setTimeLeft(30); setScreen('question') }
  const selectCategory = (index: number) => { setCategoryIndex(index); setActiveQuestions([]); setQuestionIndex(0); setSelectedAnswer(null) }
  const goHome = () => { setActiveQuestions([]); setSelectedAnswer(null); setScreen('home') }

  if (screen === 'home') return <main className="screen"><div className="brand-row"><Logo compact /><span>YNOV CAMPUS</span></div><header><small>ARCADE CHALLENGE</small><h1>Culture Quiz</h1><p>Choisis une catégorie et réponds vite !</p></header><section className="category-grid">{categories.map((item, index) => <CategoryCard color={item.color} key={item.id} name={item.name} selected={index === categoryIndex} onSelect={() => selectCategory(index)} />)}</section><button className="primary-btn home-start-btn" onClick={startGame}>Jouer</button></main>

  if (screen === 'result') return <main className="screen result"><small>RÉSULTAT</small><h1>{score}/{questionsForGame.length}</h1><p>Tu as obtenu {Math.round(score / questionsForGame.length * 100)}% !</p><div><button className="primary-btn" onClick={startGame}>Rejouer</button><button className="secondary-btn" onClick={goHome}>Changer de catégorie</button></div></main>

  return <main className="screen"><nav><button className="secondary-btn small" onClick={goHome}>Retour</button><Timer seconds={timeLeft} /><span className="progress">{questionIndex + 1} / {questionsForGame.length}</span></nav><article style={{ '--accent': category.color } as React.CSSProperties}><small>{category.name}</small><h2>{question.question}</h2></article><section className="answers-grid">{question.answers.slice(0, 4).map((answer, index) => { const isCorrect = answer === question.correctAnswer; const state = selectedAnswer === null ? 'idle' : isCorrect ? 'correct' : selectedAnswer === index ? 'incorrect' : 'disabled'; return <AnswerButton answer={answer} key={answer} state={state} onClick={() => chooseAnswer(index)} /> })}</section><button className={`primary-btn next-btn ${selectedAnswer === null ? 'hidden' : ''}`} onClick={nextQuestion}>Question suivante</button></main>
}

export default App