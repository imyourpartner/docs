//  Rest  operator permite recibir multiples "parametros" sin la necesidad de declararlos explicitamente
console.log("Como usar Rest operator '...' en parametros");
console.log("");
console.log("Ejemplo N# 1:");
const RecibirParametros = function (valor1, valor2, ...rest) {
  console.log(`Imprimiendo rest operator:  ${rest}`);
  console.log(`Valor1:  ${valor1}`);
  console.log(`Valor2:  ${valor2}`);
  var tipo = typeof rest;
  console.log(`el operador rest es del tipo ${tipo}`);
  console.log("parametro[1] es: " + rest[1]);
  console.log("??: " + rest.length);
};
RecibirParametros("moises", "antonio", "aguiar", "ibarra");

console.log("");
console.log("Ejemplo N# 2:");

const Sumar = function (valor1, valor2, ...n) {
  let resultado = null;
  resultado = valor1 + valor2;

  n.forEach(function (elemento, index) {
    resultado = elemento + resultado;
  });
  return console.log(` El resultado de ma suma es: ${resultado}`);
};

Sumar(1, 2);
Sumar(1, 2, 3);
Sumar(1, 2, 3, 4);
Sumar(1, 2, 3, 4, 5);
Sumar(1, 2, 3, 4, 5, 6);

console.log("");
console.log("Ejemplo N# 3:");

function xyz(x, y, ...z) {
  console.log(x, " ", y); // hey hello

  console.log(z); // ["wassup", "goodmorning", "hi", "howdy"]
  console.log(z[0]); // wassup
  console.log(z.length); // 4
}

xyz("hey", "hello", "wassup", "goodmorning", "hi", "howdy");
