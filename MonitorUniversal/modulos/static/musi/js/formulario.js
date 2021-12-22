
/*
    este es un comentario multilinea
*/

//alert("pagina cargada!!!!!!!!");

//console.log("este es un mensaje en la consola");
/*
var nombre = "matusalen"
var edad = 80

console.log("Nombre=" + nombre +" Edad="+ edad)

if(edad >= 18 && edad <= 64) {
    console.log("es mayor de edad")
} else if(edad <= 0 || edad > 120) {
    console.log("la edad es incorrecta")
} else if(edad >= 65) {
    console.log("adulto mayor")
} else {
    console.log("es menor de edad")
}

var i = 0;

while(i < 10) {
    console.log(i)
    i++
}
console.log("--------------")
for(j=0;j<20;j++) {
    console.log(j)
}

var nombres = ["adrian", "javier", "lulu", "ramon", "matias"]

console.log(nombres[0])

nombres.forEach(function(item) {
    console.log(item)
})

var persona = {
    nombre: "roberto",
    edad: 30,
    altura: 1.8
}

console.log(persona)*/


//boton formulario entidad

var btnEnviar = document.getElementById("btnEnviar")

btnEnviar.addEventListener("click", function() {
    
    //traer los datos del formulario
    let nombre = document.getElementById("nombre").value
    let prefijo  = document.getElementById("correo").value
    let telefono = document.getElementById("telefono").value
    let de_cimex = document.getElementById("de_cimex").value
    let jefe_informatico = document.getElementById("jefe_informatico").value
    let admin_redes = document.getElementById("admin_redes").value
    let rango_inicial_ip = document.getElementById("rango_incial_ip").value
    let rango_final_ip = document.getElementById("rango_final_ip").value
    let provincia = document.getElementById("provincia").value
    let municipio = document.getElementById("municipio").value
    
    console.log(nombre)
    console.log(prefijo)
    console.log(telefono)
    console.log(de_cimex)
    console.log(jefe_informatico)
    console.log(admin_redes)
    console.log(rango_inicial_ip)
    console.log(rango_final_ip)
    console.log(provincia)
    console.log(municipio)
})

/* function validar_telefono(forms){
    var telefono = /^[0123456789]+$/;
    if(!)
} */

// boton formulario usuario