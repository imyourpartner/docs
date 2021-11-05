//  Spread  operator: nos permite expandir elementos.
console.log("Como usar spread operator '...' argumento ");
console.log("");
console.log("Ejemplo N# 1:");

console.log(" Agregar elementos a una matriz existente");
let a = ["Argentina", "Colombia"];
let b = [...a, "USA"];
console.log("esto es el valor de a");
console.log(a);
console.log("esto es el valor de B");
console.log(b);

console.log("");
console.log("Ejemplo N# 2:");
console.log("Copiar matrices");
let arr = [1, 2, 3];
let arr2 = [...arr];
console.log("arr:");
console.log(arr);
console.log("arr2");
console.log(arr2);

console.log("");
console.log("Ejemplo N# 3:");
console.log("Pasar elementos de una matriz a una función como argumentos separados");
const argumentos = [1, 2, 3];
function add(a, b, c) {
  console.log(a + b + c);
}
add(...argumentos);

console.log("");
console.log("Ejemplo N# 4:");
console.log("Con un objeto:");
const user = {
  email: "admin@admin.com",
  password: "abc123",
};

const otroCampo = {
  ...user,
  name: "Japon",
};

console.log(otroCampo);
