import { Request, Response } from 'express';
import { UserData } from '../models/UserData';
import { BACCalculator } from '../services/BACCalculator';
import { validate } from '../utils/validateInput';

export function renderForm(req: Request, res: Response) {
  res.render('index', { result: null });
}

export function calculateBAC(req: Request, res: Response) {
  try {
    const weight = validate(req.body.weight);
    const alcohol = validate(req.body.alcohol);
    const gender = req.body.gender as 'male' | 'female';
    const hours = validate(req.body.hours);

    const user = new UserData(weight, alcohol, gender, hours);
    const bac = BACCalculator.calculateBAC(user);
    const advice = BACCalculator.canExercise(bac)
      ? '✅ Puedes hacer ejercicio con precaución.'
      : '🚫 No se recomienda hacer ejercicio aún.';

    res.render('index', { result: `Tu BAC es ${bac}. ${advice}` });
  } catch (error) {
    res.render('index', { result: `❌ Error: ${(error as Error).message}` });
  }
}
