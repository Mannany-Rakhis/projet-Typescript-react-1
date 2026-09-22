type LogoProps = {
  compact?: boolean
}

export default function Logo({ compact = false }: LogoProps) {
  return (
    <div className={`quiz-logo ${compact ? 'quiz-logo-compact' : ''}`} aria-label="Logo Quiz Culture">
      <span className="quiz-logo-icon">?</span>
      <span className="quiz-logo-text">QUIZ !!!!!</span>
    </div>
  )
}
