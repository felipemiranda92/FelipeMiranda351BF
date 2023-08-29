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

//
//print("Por favor, insira seu peso em Kg")
//
//let pesoInformado = readLine()
//let pesoInformadoTratado = Double(pesoInformado ?? "0.0")
//
//print("Por favor, insira sua altura em Metros")
//
//let alturaInformado = readLine()
//let alutraInformadoTratado = Double(alturaInformado ?? "0.0")

func calcIMC (peso: Double, altura: Double) -> Double {
    let IMC: Double = peso / (altura * altura)
    return IMC
}

calcIMC(peso: pesoInformadoTratado!, altura: alutraInformadoTratado!)
