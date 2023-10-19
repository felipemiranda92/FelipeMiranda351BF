//
//  main.swift
//  Desafio3 - iOSBootcamp
//
//  Created by Felipe Miranda Santos on 28/08/23.
//

/*
---------------------Desafio 03 turma 351BF---------------------
*/

/*
 
- Escreva um programa que calcule o índice de massa corporal (IMC) de uma pessoa. Peça ao usuário para inserir o peso em kg e a altura em metros, e calcule o IMC usando a fórmula: IMC = peso / (altura * altura).
 
- Crie uma função que simule um dado de seis faces. Gere um número entre 1 e 6 e mostre apenas um print com diferentes nomes em cada um
 
- Desenvolva um conversor de unidades simples. Peça ao usuário para inserir uma quantidade em metros e converta essa quantidade para centímetros.
 
- Crie uma função que determine se um número é par ou ímpar. insera um número e mostre um print indicando se é impar ou par.
 
- Escreva uma função que verifique se um número é positivo, negativo ou zero. Insera um número e mostre print com uma mensagem correspondente.
 
- Crie uma função que verifique se um número inserido pelo usuário é primo ou não. (Um número primo é aquele que é divisível apenas por 1 e por ele mesmo.)
 
- Desenvolva um conversor de temperatura que converta de Celsius para Fahrenheit. Peça ao usuário para inserir a temperatura em graus Celsius e mostre o equivalente em Fahrenheit.
A fórmula de conversão é: Fahrenheit = (Celsius * 9/5) + 32.
 
- Crie uma função que recebe dois números como parame e uma operação (+,
-, *, /) como argumentos e retorna o resultado da operação aplicada aos
números.

 */


//- Escreva um programa que calcule o índice de massa corporal (IMC) de uma pessoa. Peça ao usuário para inserir o peso em kg e a altura em metros, e calcule o IMC usando a fórmula: IMC = peso / (altura * altura).

func calcIMC (peso: Double, altura: Double) -> Double {
    let IMC: Double = peso / (altura * altura)
    return IMC
}

var IMC = calcIMC(peso: 75.3, altura: 1.78)
//print(IMC)


//- Desenvolva um conversor de unidades simples. Peça ao usuário para inserir uma quantidade em metros e converta essa quantidade para centímetros.

func conversorUnidades(numeroMetro: Double) -> Double {
    return numeroMetro * 100
}

var metragem = conversorUnidades(numeroMetro: 1.78)
//print("O número em centímetros é igual a \(metragem) cm")

//- Crie uma função que determine se um número é par ou ímpar. insera um número e mostre um print indicando se é impar ou par.

func verificacaoParOuImpar (numero: Int) -> Bool {
    if (numero % 2 == 0) {
        return true
    } else {
        return false
    }
}

var parOuImpar: Bool = verificacaoParOuImpar(numero: 7)
//print(parOuImpar)


//- Escreva uma função que verifique se um número é positivo, negativo ou zero. Insera um número e mostre print com uma mensagem correspondente.

func verificaNumero(numero: Double) -> String {
    if numero == 0 {
        return "Número igual a zero"
    }
    else if numero > 0 {
        return "Número positivo"
    } else {
        return "Número negativo"
    }
}

var numero = verificaNumero(numero: 0.0)
//print(numero)

//- Crie uma função que verifique se um número inserido pelo usuário é primo ou não. (Um número primo é aquele que é divisível apenas por 1 e por ele mesmo.)

func verificaPrimo(numero: Int) -> Bool {
    var i = 1
    var contador = 0
    
    while i <= numero {
        if numero % i == 0 {
            contador = contador + 1
            i = i + 1
        } else {
            i = i + 1
        }
    }
    
    if contador == 2 {
        return true
    } else {
        return false
    }
}

var numeroPrimoOuNao = verificaPrimo(numero: 97)
//print(numeroPrimoOuNao)


//- Desenvolva um conversor de temperatura que converta de Celsius para Fahrenheit. Peça ao usuário para inserir a temperatura em graus Celsius e mostre o equivalente em Fahrenheit.
//A fórmula de conversão é: Fahrenheit = (Celsius * 9/5) + 32.

func converteTemperatura(temperaturaCelsius: Double) -> Double {
    return (temperaturaCelsius * 9/5) + 32
}

var temperatura = converteTemperatura(temperaturaCelsius: 23.3)
//print("\(temperatura) graus Fahrenheit")

//- Crie uma função que recebe dois números como parame e uma operação (+,-, *, /) como argumentos e retorna o resultado da operação aplicada aos números.

func operacoesLogicas(numero1: Double, numero2: Double, operacao: String) -> Double {
    if operacao == "+" {
        return numero1 + numero2
    }
    else if operacao == "-" {
        return numero1 - numero2
    }
    else if operacao == "*" {
       return  numero1 * numero2
    }
    else if operacao == "/" {
        return numero1 / numero2
    } else {
        return 0.0
    }
}

var resultadoConta = operacoesLogicas(numero1: 7, numero2: 4, operacao: "*")
//print(resultadoConta)
