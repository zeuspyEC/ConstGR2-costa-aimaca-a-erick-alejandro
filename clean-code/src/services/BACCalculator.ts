import { UserData } from '../models/UserData';

export class BACCalculator {
  static calculateBAC(user: UserData): number {
    const r = user.gender === 'male' ? 0.73 : 0.66;
    const bac = (user.alcoholGrams / (user.weightKg * r)) * 100 - 0.015 * user.hoursSinceDrink;
    return parseFloat(bac.toFixed(3));
  }

  static canExercise(bac: number): boolean {
    return bac < 0.03;
  }
}
