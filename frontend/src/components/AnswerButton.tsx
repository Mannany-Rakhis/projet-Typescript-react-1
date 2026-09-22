type AnswerButtonProps = {
  answer: string
  state: 'idle' | 'correct' | 'incorrect' | 'disabled'
  onClick: () => void
}

export default function AnswerButton({ answer, state, onClick }: AnswerButtonProps) {
  return <button className={`answer-btn ${state !== 'idle' ? state : ''}`} disabled={state !== 'idle'} onClick={onClick}>{answer}</button>
}
