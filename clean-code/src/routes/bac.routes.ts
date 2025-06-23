import { Router } from 'express';
import { renderForm, calculateBAC } from '../controllers/bac.controller';

const router = Router();

router.get('/', renderForm);
router.post('/calculate', calculateBAC);

export default router;
