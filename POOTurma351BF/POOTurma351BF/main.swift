//
//  main.swift
//  POOTurma351BF
//
//  Created by Felipe Miranda Santos on 29/08/23.
//

import Foundation

// Classe
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE

// Como criar uma classe?
// Utilizamos a palavra reservada class e na sequencia seu nome SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {
    
    var potenciaMotor: Int = 400
    var marca: String = "Porsche"
    var desembacadorDeVidroTraseiro: Bool = true
    var quantidadeDePortas: Int = 2
    var cor: String = "Preta"
    var conversivel: Bool = true
    var eEletrico: Bool = true
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
    func estaAcelerando() {
        print("O carro está acelerando")
    }
    
    func abrirCapota() {
        print("A capota está aberta")
    }
    
}

// A partir do momento que instanciamos uma classe ela se torna um objeto
var porsche: Automovel = Automovel()

//print(porsche.cor)
//
//porsche.cor = "Chumbo"
//
//print(porsche.cor)
//
//porsche.cor = "Verde"
//
//print(porsche.cor)

// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    var temCabelo: Bool = true
    var esmalte: Bool?
    
    init(nome: String, idade: Int, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
    }
    
    func correr() {
        print("o \(nome) está correndo")
    }
    
    func eCareca() {
        print("o \(nome) ele tem cabelo: \(temCabelo)")
    }
}

var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)


// Reference Type

var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)

caio = felipe

print(caio.nome)
print(caio.idade)

caio.idade = 40

print(caio.idade)
print(felipe.idade)


//class Casa {
//
//    var quantidadePortas: Int = 6
//    var temChurrasqueira: Bool = true
//    var corCasa: String = "Amarela"
//
//    func abrirPorta() {
//        print("Abir a porta.")
//    }
//
//    func abrirJanela() {
//        print("Abrir janela.")
//    }
//}
//
//class Animal {
//
//    var especie: String = "Inseto"
//    var quantidadeDePatas: Int = 6
//    var voa: Bool = true
//
//    func comer() {
//        print("O animal come")
//    }
//
//    func voar() {
//        print("O animal voa")
//    }
//}
//
//class Computador {
//
//    var modelo: String = "Macbook air"
//    var cor: String = "Prata"
//    var memoriaRam: Int = 16
//
//    func ligar() {
//        print("O computador está ligando")
//    }
//
//    func tirarFoto() {
//        print("O computador tira foto")
//    }
//}

// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

//class Pessoa {
//    var nome: String
//    var idade: Int
//    var peso: Double
//    var temCabelo: Bool = true
//
//    init(nome: String, idade: Int, peso: Double) {
//        self.nome = nome
//        self.idade = idade
//        self.peso = peso
//    }
//}
//
//var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
//
//print(caio.nome)
//print(caio.idade)
//
//var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)
//
//print(felipe.nome)
//print(felipe.idade)
//
//var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)



// Desafios em Aula

//class Televisao {
//
//    var polegadas: Double
//    var imagem: String
//    var borda: Bool
//
//    func ligarTV() {
//        print("A TV tem uma imagem \(imagem)")
//    }
//
//    func diminuirImagem() {
//        print("A TV reajustou o tamanho da imagem para modo full, de \(polegadas)")
//    }
//
//    init(polegadas: Double, imagem: String, borda: Bool) {
//        self.polegadas = polegadas
//        self.imagem = imagem
//        self.borda = borda
//    }
//}
//
//
//class Estadio {
//    var nome: String
//    var capacidade: Int
//    var tetoRetratil: Bool
//
//    func abrirTeto() {
//        print("O teto retrátil está abrindo \(tetoRetratil)")
//    }
//
//    func lotacaoMaxima() {
//        print("Estádio \(nome) com lotação máxima de \(capacidade) foi atingido")
//    }
//
//    init(nome: String, capacidade: Int, tetoRetratil: Bool) {
//        self.nome = nome
//        self.capacidade = capacidade
//        self.tetoRetratil = tetoRetratil
//    }
//}
//
//class Ventilador {
//    var rpm: Int = 100
//    var modoTurbo: Bool
//    var tamanho: Double
//
//    func aumentarVelocidade() {
//        print("O ventilador funciona a \(rpm) rotações por minutos")
//    }
//
//    func deligaModoTurbo() {
//        print("O modo turbo está ligado? \(modoTurbo)")
//    }
//
//    init(modoTurbo: Bool, tamanho: Double) {
//        self.modoTurbo = modoTurbo
//        self.tamanho = tamanho
//    }
//}


// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

class Carro {
    
    var quantidadeDePortas: Int
    var sensorDere: Bool
    var fabricante: String
    
    func acelerar() {
        print("O carro está acelerando")
    }
    
    func ligarMotor() {
        print("O motor está ligado")
    }
    
    init(quantidadeDePortas: Int, sensorDere: Bool, fabricante: String) {
        self.quantidadeDePortas = quantidadeDePortas
        self.sensorDere = sensorDere
        self.fabricante = fabricante
    }
}

class Citroen: Carro {
    
    var logoCitroen: String = "Logo Citroen"
    var potenciaCitroen: Double = 120.0
    var ligaLeveCitroen: Bool = true
    
}

class Pegeout: Carro {
    
    var logoLeao: Bool
    var painel3D: Bool
    var revioesConcessionaria: String
    
    init(logoLeao: Bool, painel3D: Bool, revioesConcessionaria: String, quantidadeDePortas: Int, sensorDere: Bool, fabricante: String) {
        self.logoLeao = logoLeao
        self.painel3D = painel3D
        self.revioesConcessionaria = revioesConcessionaria
        
        super.init(quantidadeDePortas: quantidadeDePortas, sensorDere: sensorDere, fabricante: fabricante)
    }
}

var citroen: Citroen = Citroen(quantidadeDePortas: 4, sensorDere: true, fabricante: "Citroen")

citroen.ligarMotor()
print(citroen.logoCitroen)

var pegeout: Pegeout = Pegeout(logoLeao: true, painel3D: true, revioesConcessionaria: "Green", quantidadeDePortas: 4, sensorDere: true, fabricante: "Pegeout")

pegeout.acelerar()
