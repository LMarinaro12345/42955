# 42955
Analizador
# Analizador Léxico y Sintáctico con ANTLR4 + JavaScript

Este proyecto implementa un analizador léxico y sintáctico utilizando ANTLR4 y JavaScript, basado en una gramática EBNF adaptada para reconocer una estructura similar a instrucciones de control tipo `switch-case`.

---

## 📦 Requisitos

Antes de empezar, asegurate de tener instalados los siguientes componentes:

- **Node.js** (versión 14 o superior)
- **Java JDK** (recomendado JDK 8 o superior)
- **ANTLR4** (versión 4.9.3 o similar)

---

## 🔧 Instalación y configuración

### 1. Instalar ANTLR4 (una sola vez)

Primero descargá el `.jar` de ANTLR:

```bash
curl -O https://www.antlr.org/download/antlr-4.13.0-complete.jar

export CLASSPATH=".:./antlr-4.13.0-complete.jar:$CLASSPATH"
alias antlr4='java -jar ./antlr-4.13.0-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

Inicializar proyecto con Node.js

npm init -y
npm install antlr4


📁 Estructura del proyecto
.
├── antlr-4.13.0-complete.jar
├── Lenguaje.g4            # Archivo de gramática principal
├── input.txt              # Archivo de entrada con el código a analizar
├── index.js               # Script principal para ejecutar el parser
├── package.json
└── README.md


🛠️ Generar el parser con ANTLR
antlr4 -Dlanguage=JavaScript Lenguaje.g4

▶️ Ejecutar el analizador
node index.js

📥 input.txt
Este archivo contiene el código fuente que querés analizar.