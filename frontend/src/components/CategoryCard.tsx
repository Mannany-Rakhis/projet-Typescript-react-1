type CategoryCardProps = {
  name: string
  color: string
  selected: boolean
  onSelect: () => void
}

export default function CategoryCard({ name, color, selected, onSelect }: CategoryCardProps) {
  return (
    <button className={`category-card ${selected ? 'selected' : ''}`} onClick={onSelect} style={{ '--accent': color } as React.CSSProperties}>
      <strong>{name}</strong>
    </button>
  )
}
