type TimerProps = {
  seconds: number
}

export default function Timer({ seconds }: TimerProps) {
  return <span className={`timer ${seconds <= 10 ? 'timer-warning' : ''}`}>⏱ {seconds}s</span>
}
