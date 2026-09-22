import { useEffect, useMemo, useState } from 'react'
import './App.css'

type Screen = 'home' | 'category' | 'quiz' | 'results'

type Category = {
  id: number
  categorie: string
}

type Question = {
  id: number
  categorie: string
  question: string
  reponse1: string
  reponse2: string
  reponse3: string
  reponse4: string
  reponse5: string
  reponse6: string
  reponse7: string
  reponse8: string
  reponse9: string
  reponse10: string
}

type QuizQuestion = {
  id: number
  categorie: string
  question: string
  correctAnswer: string
  options: string[]
}

const API_BASE_URL = 'http://localhost:8000/api'

const shuffleArray = <T,>(items: T[]) => [...items].sort(() => Math.random() - 0.5)

const buildQuizQuestion = (question: Question): QuizQuestion => {
  const answers = [
    question.reponse1,
    question.reponse2,
    question.reponse3,
    question.reponse4,
    question.reponse5,
    question.reponse6,
    question.reponse7,
    question.reponse8,
    question.reponse9,
    question.reponse10,
  ].filter(Boolean)

  const correctAnswer = question.reponse1
  const distractors = shuffleArray(answers.filter((answer) => answer !== correctAnswer)).slice(0, 3)

  return {
    id: question.id,
    categorie: question.categorie,
    question: question.question,
    correctAnswer,
    options: shuffleArray([correctAnswer, ...distractors]),
  }
}

function App() {
  const [screen, setScreen] = useState<Screen>('home')
  const [categories, setCategories] = useState<Category[]>([])
  const [selectedCategory, setSelectedCategory] = useState('')
  const [quizQuestions, setQuizQuestions] = useState<QuizQuestion[]>([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [timeLeft, setTimeLeft] = useState(30)
  const [score, setScore] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [isAnswerLocked, setIsAnswerLocked] = useState(false)
  const [isLoading, setIsLoading] = useState(false)

  useEffect(() => {
    const fetchCategories = async () => {
      try {
        const response = await fetch(`${API_BASE_URL}/categories`)
        const data = await response.json()
        setCategories(data)
      } catch (error) {
        console.error('Erreur lors du chargement des catégories', error)
      }
    }

    void fetchCategories()
  }, [])

  const currentQuestion = useMemo(
    () => quizQuestions[currentIndex] ?? null,
    [currentIndex, quizQuestions],
  )

  const startQuiz = async (category: string) => {
    setIsLoading(true)
    setSelectedCategory(category)

    try {
      const response = await fetch(`${API_BASE_URL}/questions?category=${encodeURIComponent(category)}`)
      const data: Question[] = await response.json()
      const preparedQuestions = (data.slice(0, 10) || []).map(buildQuizQuestion)

      setQuizQuestions(preparedQuestions)
      setCurrentIndex(0)
      setScore(0)
      setSelectedAnswer(null)
      setIsAnswerLocked(false)
      setTimeLeft(30)
      setScreen('quiz')
    } catch (error) {
      console.error('Erreur lors du chargement des questions', error)
    } finally {
      setIsLoading(false)
    }
  }

  const handleAnswer = (answer: string | null) => {
    if (!currentQuestion || isAnswerLocked) {
      return
    }

    const isCorrect = answer === currentQuestion.correctAnswer

    if (isCorrect) {
      setScore((previous) => previous + 1)
    }

    setSelectedAnswer(answer)
    setIsAnswerLocked(true)

    window.setTimeout(() => {
      if (currentIndex >= quizQuestions.length - 1) {
        setScreen('results')
        return
      }

      setCurrentIndex((previous) => previous + 1)
      setSelectedAnswer(null)
      setIsAnswerLocked(false)
      setTimeLeft(30)
    }, 1100)
  }

  useEffect(() => {
    if (screen !== 'quiz' || !currentQuestion || isAnswerLocked) {
      return
    }

    setTimeLeft(30)

    const timer = window.setInterval(() => {
      setTimeLeft((previous) => {
        if (previous <= 1) {
          window.clearInterval(timer)
          handleAnswer(null)
          return 0
        }

        return previous - 1
      })
    }, 1000)

    return () => window.clearInterval(timer)
  }, [screen, currentQuestion, isAnswerLocked, currentIndex])

  const handleReplay = () => {
    setScreen('category')
    setSelectedAnswer(null)
    setCurrentIndex(0)
    setScore(0)
    setTimeLeft(30)
    setIsAnswerLocked(false)
  }

  if (screen === 'home') {
    return (
      <main className="app-shell home-screen">
        <div className="brand-card home-card">
          <div className="brand-header">
            <div className="logo-mark" aria-label="Logo Culture Quiz">
              CQ
            </div>
            <div className="brand-meta">
              <span className="top-tag">Culture Quiz</span>
              <span className="brand-subtitle">Quiz de culture générale</span>
            </div>
          </div>

          <div className="hero-panel">
            <p className="eyebrow">Le défi du jour</p>
            <h1>Testez votre culture</h1>
            <p className="intro-text">
              Une session courte, claire et exigeante : histoire, cinéma, sport et géographie. Le bon
              réflexe suffit.
            </p>
          </div>

          <div className="stat-row" aria-label="Informations du quiz">
            <div>
              <strong>4</strong>
              <span>catégories</span>
            </div>
            <div>
              <strong>30s</strong>
              <span>par question</span>
            </div>
            <div>
              <strong>10</strong>
              <span>questions</span>
            </div>
          </div>

          <button className="primary-button" type="button" onClick={() => setScreen('category')}>
            Commencer un quiz
          </button>
        </div>
      </main>
    )
  }

  if (screen === 'category') {
    return (
      <main className="app-shell category-screen">
        <div className="panel">
          <p className="eyebrow">Sélection</p>
          <h2>Choisissez une catégorie</h2>
          <p className="section-caption">Lancez une série inspirée d’un thème précis.</p>

          {categories.length === 0 ? (
            <p className="empty-state">Chargement des catégories…</p>
          ) : (
            <div className="category-grid">
              {categories.map((category) => (
                <button
                  key={category.id}
                  type="button"
                  className="category-card"
                  onClick={() => {
                    void startQuiz(category.categorie)
                  }}
                  disabled={isLoading}
                >
                  <span>{category.categorie}</span>
                </button>
              ))}
            </div>
          )}
        </div>
      </main>
    )
  }

  if (screen === 'quiz' && currentQuestion) {
    return (
      <main className="app-shell quiz-screen">
        <div className="panel quiz-panel">
          <div className="quiz-topbar">
            <span className="pill">{selectedCategory}</span>
            <span className={`timer ${timeLeft <= 10 ? 'warning' : ''}`}>{timeLeft}s</span>
          </div>

          <p className="progress-label">
            Question {currentIndex + 1}/{quizQuestions.length}
          </p>
          <h2 className="question-title">{currentQuestion.question}</h2>

          <div className="answer-grid">
            {currentQuestion.options.map((option) => {
              const isCorrect = option === currentQuestion.correctAnswer
              const isSelected = selectedAnswer === option
              const isWrong = isSelected && !isCorrect

              const classes = [
                'answer-button',
                isAnswerLocked && isCorrect ? 'correct' : '',
                isAnswerLocked && isWrong ? 'wrong' : '',
                !isAnswerLocked && isSelected ? 'selected' : '',
              ]
                .filter(Boolean)
                .join(' ')

              return (
                <button
                  key={`${currentQuestion.id}-${option}`}
                  type="button"
                  className={classes}
                  onClick={() => handleAnswer(option)}
                  disabled={isAnswerLocked}
                >
                  {option}
                </button>
              )
            })}
          </div>
        </div>
      </main>
    )
  }

  return (
    <main className="app-shell result-screen">
      <div className="panel result-card">
        <p className="eyebrow">Résultat final</p>
        <h2>{score >= 7 ? 'Excellent !' : score >= 5 ? 'Bien joué !' : 'Encore un peu de travail !'}</h2>
        <div className="score-circle">
          <strong>{score}</strong>
          <span>/{quizQuestions.length}</span>
        </div>
        <p className="result-text">
          Tu as répondu correctement à {score} question{score > 1 ? 's' : ''} sur {quizQuestions.length}.
        </p>
        <button className="primary-button" type="button" onClick={handleReplay}>
          Rejouer
        </button>
      </div>
    </main>
  )
}

export default App
