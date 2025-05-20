import LenguajeLexer from './generated/LenguajeLexer.js';
import LenguajeParser from './generated/LenguajeParser.js';

import antlr4 from 'antlr4';
import fs from 'fs';
import readline from 'readline';

async function main() {
    let input;

    try {
        input = fs.readFileSync('input.txt', 'utf8');
    } catch (err) {
        input = await leerCadena();
        console.log(input);
    }

    const chars = antlr4.CharStreams.fromString(input);
    const lexer = new LenguajeLexer(chars);
    const tokens = new antlr4.CommonTokenStream(lexer);
    const parser = new LenguajeParser(tokens);

    const tree = parser.programa();

    // Verifica errores de sintaxis
    if (parser._syntaxErrors > 0) {
        console.error("\nSe encontraron errores de sintaxis.");
    } else {
        console.log("\nEntrada válida.");
        const cadena_tree = tree.toStringTree(parser.ruleNames);
        console.log(`Árbol de derivación: ${cadena_tree}`);
    }
}

function leerCadena() {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    return new Promise(resolve => {
        rl.question("Ingrese una cadena: ", (answer) => {
            rl.close();
            resolve(answer);
        });
    });
}

main();
