import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(process.env.PORT ?? 3000);
}

// Ejecutar bootstrap con manejo de errores para satisfacer ESLint
bootstrap().catch(error => {
  console.error('Error during bootstrap:', error);
  process.exit(1);
});
