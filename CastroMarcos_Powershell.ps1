<#
Ejercicio 1. Número primo. FUNCIÓN
#>

function numeroPrimo{
    if($numero % 2 -eq 0){
        Write-Host "El número " $numero " no es un número primo."
    } else{
        Write-Host "El número " $numero " es un número primo."
    }
}

<#
Ejercicio 2. Juego de adivinanza. FUNCIÓN
#>

function juegoAdivinanza{
    $inferior = Read-Host "Introduce el número inferior"
    $superior = Read-Host "Introduce el número superior"

    $numAleatorio = Get-Random -Minimum $inferior -Maximum $superior

    $intentos = 0

    while ($respuesta -ne $numAleatorio){
        $respuesta = Read-Host "Adivina el número: "

        $intentos++

        if ($respuesta -lt $numAleatorio){
            Write-Host "El número secreto es MAYOR"
        } elseif ($respuesta -gt $numAleatorio){
            Write-Host "El número secreto es MENOR"
        }
    }

    Write-Host "¡CORRECTO! El número era " $numAleatorio ". Lo has adivinado en " $intentos " intentos."
}

<#
Ejercicio 3. Lista de números. FUNCIÓN
#>
function listaNumeros{
    $lNumeros = @()

    while ($numero -ne 0){
        $numero = Read-Host "Ingresa un número (escribe 0 para detener la entrada): "

        if ($numero -ne 0){
            $lNumeros += $numero
        }
    }
    $lNumOrdenados = $lNumeros | Sort-Object

    Write-Host "La lista ordenada es: " $lNumOrdenados
}











<#
Ejercicio 1. Número primo.
#>

do{
    $numero = Read-Host "Introduce un número: "
    $resultado = numeroPrimo
    $salir = Read-Host "Quieres salir de esta función? (0 para salir, 1 para continuar)"
}while ($salir -eq 1)

<#
Ejercicio 2. Juego de adivinanza.
#>

juegoAdivinanza

<#
Ejercicio 3. Lista de números.
#>

listaNumeros

