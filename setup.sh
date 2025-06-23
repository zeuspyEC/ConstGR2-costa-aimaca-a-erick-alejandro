#!/bin/bash

# ==========================================
# 🚀 SCRIPT DE CONFIGURACIÓN INICIAL
# ==========================================

echo "🚀 Configurando proyecto optimizado..."
echo ""

# Verificar Node.js
echo "🔍 Verificando Node.js..."
if ! command -v node &> /dev/null; then
    echo "❌ Node.js no está instalado"
    echo "   Instala Node.js 18.x o superior desde: https://nodejs.org"
    exit 1
fi

NODE_VERSION=$(node --version | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js $NODE_VERSION no es compatible"
    echo "   Se requiere Node.js 18.x o superior"
    exit 1
fi

echo "✅ Node.js $(node --version) OK"

# Verificar npm
echo "🔍 Verificando npm..."
if ! command -v npm &> /dev/null; then
    echo "❌ npm no está disponible"
    exit 1
fi
echo "✅ npm $(npm --version) OK"

# Navegar al directorio del proyecto
cd calculadora

echo ""
echo "📦 Instalando dependencias..."
npm ci --prefer-offline --no-audit --no-fund

echo ""
echo "🔧 Configurando git hooks..."
if command -v git &> /dev/null && [ -d "../.git" ]; then
    npm run prepare
    echo "✅ Git hooks configurados"
else
    echo "⚠️ Git no disponible o no es un repositorio git"
fi

echo ""
echo "🧹 Limpiando cache..."
npm run clean:cache

echo ""
echo "✅ Verificando configuración..."
npm run health

echo ""
echo "🎉 ¡Configuración completada!"
echo ""
echo "📋 Próximos pasos:"
echo "   1. cd calculadora"
echo "   2. npm run dev          # Iniciar desarrollo"
echo "   3. npm run test         # Ejecutar tests"
echo "   4. npm run build        # Build de producción"
echo ""
echo "📊 Scripts útiles:"
echo "   npm run validate        # Validación completa"
echo "   npm run analyze:bundle  # Análisis de rendimiento"
echo "   npm run analyze:security # Análisis de seguridad"
echo ""
echo "🔗 Workflows disponibles en .github/workflows/"
echo "   - test.yml              # Tests automatizados"
echo "   - lint.yml              # Calidad de código"
echo "   - github-actions-demo.yml # Pipeline principal"
echo "   - deploy.yml            # Deployment"
echo "   - security.yml          # Análisis de seguridad"
echo "   - performance.yml       # Análisis de rendimiento"
echo ""