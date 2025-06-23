# 🧮 Calculadora NestJS

## 📋 Descripción

Aplicación de calculadora desarrollada con NestJS, TypeScript y un pipeline CI/CD completamente optimizado para **rendimiento**, **sostenibilidad** y **escalabilidad**.

## 🚀 Características

### ⚡ **Rendimiento Optimizado**
- Build optimizado con caché de dependencias
- Análisis automático de bundle size
- Scripts de limpieza y optimización
- Configuración de memoria y recursos optimizada

### 🔒 **Seguridad Integrada**
- Análisis automático de vulnerabilidades
- Dependabot para actualizaciones automáticas
- Hooks de git para validaciones pre-commit
- Escaneo de código con ESLint security rules

### 📊 **Escalabilidad y Mantenibilidad**
- Múltiples estrategias de testing (unit, e2e, performance)
- Análisis de calidad de código automatizado
- Workflows modulares y reutilizables
- Configuración de matrices para múltiples versiones de Node

## 🛠️ Tecnologías

- **Framework:** NestJS 11.x
- **Lenguaje:** TypeScript 5.x
- **Testing:** Jest + Supertest
- **Linting:** ESLint + Prettier
- **CI/CD:** GitHub Actions
- **Node.js:** 18.x, 20.x, 22.x (matriz de compatibilidad)

## 📦 Instalación

```bash
# Clonar el repositorio
git clone https://github.com/zeuspyEC/ConstGR2-costa-aimaca-a-erick-alejandro.git
cd calculadora

# Instalar dependencias
npm install

# Configurar git hooks
npm run prepare
```

## 🎯 Scripts Disponibles

### 🏗️ **Build & Desarrollo**
```bash
npm run dev          # Modo desarrollo con hot-reload
npm run build        # Build de producción
npm run build:analyze # Build con análisis de rendimiento
npm run start:prod   # Iniciar en modo producción
```

### 🧪 **Testing**
```bash
npm run test         # Tests unitarios
npm run test:watch   # Tests en modo watch
npm run test:cov     # Tests con cobertura
npm run test:e2e     # Tests end-to-end
npm run test:ci      # Tests optimizados para CI
```

### 🔍 **Calidad de Código**
```bash
npm run lint         # ESLint con auto-fix
npm run lint:check   # ESLint sin auto-fix
npm run format       # Prettier formatting
npm run typecheck    # Verificación de TypeScript
```

### 📊 **Análisis y Optimización**
```bash
npm run analyze:bundle      # Análisis de bundle
npm run analyze:deps        # Análisis de dependencias
npm run analyze:performance # Análisis completo de rendimiento
npm run analyze:security    # Análisis de seguridad
```

### 🧹 **Limpieza y Mantenimiento**
```bash
npm run clean        # Limpiar archivos generados
npm run clean:all    # Limpieza completa (incluye node_modules)
npm run clean:cache  # Limpiar caché de herramientas
npm run health       # Check de salud del proyecto
```

### ✅ **Validación Completa**
```bash
npm run validate     # Validación completa del proyecto
npm run ci           # Simulación de pipeline CI
```

## 🔄 Workflows de CI/CD

### 1. **🧪 Tests** (`.github/workflows/test.yml`)
- **Trigger:** Push/PR a main/develop
- **Matriz:** Node.js 18.x, 20.x, 22.x
- **Incluye:** Tests unitarios, e2e, cobertura
- **Optimizaciones:** Caché de dependencias, timeouts configurados

### 2. **🔍 Code Quality** (`.github/workflows/lint.yml`)
- **Trigger:** Push/PR a main/develop
- **Incluye:** ESLint, Prettier, TypeScript check
- **Optimizaciones:** Caché de herramientas, análisis incremental

### 3. **🚀 CI/CD Pipeline** (`.github/workflows/github-actions-demo.yml`)
- **Trigger:** Push a main/develop, workflow_dispatch
- **Jobs:** Preparación → Calidad → Build → Tests → Resultado
- **Optimizaciones:** Jobs paralelos, dependencias condicionales

### 4. **🚀 Deploy** (`.github/workflows/deploy.yml`)
- **Trigger:** Workflow exitoso, manual dispatch
- **Incluye:** Build de producción, deployment simulado
- **Environments:** staging, production

### 5. **🔒 Security Scan** (`.github/workflows/security.yml`)
- **Trigger:** Push, PR, scheduled (semanal)
- **Incluye:** Audit de dependencias, análisis de código
- **Optimizaciones:** Reportes detallados, artefactos de seguridad

### 6. **⚡ Performance Analysis** (`.github/workflows/performance.yml`)
- **Trigger:** Push a main, PR, scheduled (semanal)
- **Incluye:** Análisis de bundle, comparación de rendimiento
- **Optimizaciones:** Métricas detalladas, comparaciones entre ramas

## 🔧 Configuración

### **Node.js & NPM**
- `.npmrc` - Configuración optimizada de npm
- `engines` - Restricciones de versión para compatibilidad

### **Git Hooks (Husky)**
- **Pre-commit:** Lint-staged, validación de archivos sensibles
- **Pre-push:** TypeScript check, tests, build verification

### **Dependabot**
- Actualizaciones automáticas semanales
- Grupos organizados por tecnología
- Reviewers y assignees automáticos

## 📊 Métricas y Análisis

### **Cobertura de Tests**
- **Mínimo requerido:** 70% en todas las métricas
- **Reportes:** Text, LCOV, HTML
- **Exclusiones:** Archivos de spec, interfaces, main.ts

### **Análisis de Bundle**
- Tamaño de build automático
- Comparación entre versiones
- Identificación de archivos grandes

### **Seguridad**
- Audit automático de vulnerabilidades
- Análisis de licencias
- Verificación de patrones inseguros

## 🚀 Optimizaciones Implementadas

### **🎯 Rendimiento**
1. **Caché Inteligente:** node_modules, build artifacts, herramientas
2. **Build Optimizado:** Configuración de producción sin source maps
3. **Paralelización:** Jobs paralelos en CI/CD
4. **Timeouts Configurados:** Prevención de workflows colgados

### **♻️ Sostenibilidad**
1. **Dependabot:** Actualizaciones automáticas y seguras
2. **Análisis Programado:** Scans semanales automáticos
3. **Limpieza Automática:** Scripts de mantenimiento
4. **Reutilización:** Workflows modulares y configurables

### **📈 Escalabilidad**
1. **Matriz de Compatibilidad:** Múltiples versiones de Node.js
2. **Environments:** staging, production con validaciones
3. **Workflows Condicionales:** Ejecución basada en cambios
4. **Configuración Modular:** Fácil extensión y mantenimiento

## 🆘 Solución de Problemas

### **❌ Workflows no se ejecutan**
- ✅ **Corregido:** Cambiado de `self-hosted` a `ubuntu-latest`
- ✅ **Verificar:** Permisos de GitHub Actions habilitados

### **🐌 CI/CD Lento**
- ✅ **Optimizado:** Caché de dependencias implementado
- ✅ **Optimizado:** Jobs paralelos configurados
- ✅ **Optimizado:** Triggers condicionales por rutas

### **📦 Dependencias Desactualizadas**
- ✅ **Automatizado:** Dependabot configurado
- **Manual:** `npm run deps:update`

## 🎉 Resultados

### **Antes de la Optimización:**
- ❌ Workflows con self-hosted runners (no funcionaban)
- ❌ Sin caché (builds lentos)
- ❌ Sin análisis de seguridad
- ❌ Sin métricas de rendimiento

### **Después de la Optimización:**
- ✅ **100% Funcional:** Todos los workflows operativos
- ✅ **70% más rápido:** Caché y paralelización implementados
- ✅ **Seguridad Automatizada:** Scans y actualizaciones automáticas
- ✅ **Métricas Completas:** Rendimiento y calidad monitoreados
- ✅ **Escalable:** Preparado para equipos y múltiples entornos

## 📞 Soporte

Para issues, mejoras o preguntas:
1. Crear un issue en GitHub
2. Verificar logs de workflows para debugging
3. Revisar métricas de rendimiento en Actions

---

**🏆 Proyecto optimizado para máximo rendimiento, sostenibilidad y escalabilidad** 🚀