// Un callback es una funcion que es enviada como argumento a otra.
function primero(segundo) {
  segundo();
}

function segundo() {
  console.log("hello world");
}

primero(segundo);
