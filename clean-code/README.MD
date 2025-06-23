# Calculadora BAC - Proyecto Web con TypeScript y Express

## Conceptos aplicados y ubicación en el proyecto

### 1. **Clean Code**

- **Variables claras y descriptivas**  
  Usadas en todo el proyecto, por ejemplo en `src/controllers/bac.controller.ts` y `src/services/BACCalculator.ts`.

- **Funciones pequeñas y con una sola responsabilidad**  
  Ejemplo:  
  - `calculateBAC` y `canExercise` en `src/services/BACCalculator.ts`.  
  - `renderForm` y `calculateBAC` en `src/controllers/bac.controller.ts`.

- **Comentarios mínimos pero útiles**  
  Solo donde es necesario para explicar lógica compleja, por ejemplo en `BACCalculator.ts`.

- **Formateo consistente**  
  Aplicado a todo el código con uso de Prettier (si se usa) o manualmente.

---

### 2. **Estructura y Organización**

- **Separación de responsabilidades (SRP - SOLID)**  
  - Modelos en `src/models/` (ejemplo: `UserData.ts`)  
  - Lógica de negocio en `src/services/` (ejemplo: `BACCalculator.ts`)  
  - Controladores en `src/controllers/` manejan las peticiones HTTP  
  - Rutas en `src/routes/` para organizar endpoints  
  - Vistas en `src/views/` con archivos EJS para la presentación

- **Inversión de dependencias (D - SOLID)**  
  - Controladores dependen de servicios abstractos (clases con métodos estáticos en este caso).

---

### 3. **Manejo de errores y validación**

- Validación y control de errores en `src/utils/validateInput.ts` y su uso en el controlador (`bac.controller.ts`).

---

### 4. **Modularidad y reutilización**

- Código modular con clases y funciones exportadas/importadas usando ESModules y TypeScript.

---

### 5. **Buenas prácticas**

- Uso de TypeScript para tipado estático y evitar errores en tiempo de compilación.  
- Separación clara de carpetas para mantener la escalabilidad.  
- Uso de middleware en Express para parsear formularios y servir contenido estático.

---

## Cómo ejecutar el proyecto

1. Instalar dependencias:  
   ```bash
   npm install
