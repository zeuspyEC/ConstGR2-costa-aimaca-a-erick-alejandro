export class UserData {
  constructor(
    public weightKg: number,
    public alcoholGrams: number,
    public gender: 'male' | 'female',
    public hoursSinceDrink: number
  ) {}
}
