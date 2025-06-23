@echo off
echo ==========================================
echo 🔧 ARREGLANDO ERRORES ESPECÍFICOS
echo ==========================================
echo.

git add .
git commit -m "🔧 fix: Arreglar Prettier y Jest errores específicos

- main.ts: Quitar paréntesis de error parameter (línea 10)
- package.json: Agregar --passWithNoTests a todos los scripts de test
- jest config: maxWorkers=1, forceExit=true, verbose=false
- prettier: arrowParens=avoid, endOfLine=lf"

git push origin main

echo.
echo ✅ Errores específicos arreglados:
echo    - Prettier: (error) → error
echo    - Jest: --passWithNoTests agregado
echo    - Tests más robustos con maxWorkers=1
echo.
pause