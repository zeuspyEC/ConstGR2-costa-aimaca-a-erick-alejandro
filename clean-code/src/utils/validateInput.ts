export function validate(value: string): number {
  const num = parseFloat(value);
  if (isNaN(num) || num < 0) throw new Error(`Valor inválido: "${value}"`);
  return num;
}
