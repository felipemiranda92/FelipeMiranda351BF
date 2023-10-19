//
//  main.swift
//  Desafio4_351BF
//
//  Created by Felipe Miranda Santos on 02/09/23.
//

// Desafios

/*
 
1) Crie uma classe chamada "Produto" com propriedades como "nome", "preço" e "estoque".
   Crie objetos dessa classe representando produtos diferentes.

*/

class Produto {
    var nome: String
    var preco: Double
    var estoque: Bool
    
    init(nome: String, preco: Double, estoque: Bool) {
        self.nome = nome
        self.preco = preco
        self.estoque = estoque
    }
}

var produto: Produto = Produto(nome: "Açai", preco: 19.99, estoque: true)
var produto1: Produto = Produto(nome: "Raquete", preco: 1500.51, estoque: false)

//print("O nome do produto é \(produto.nome) com valor de \(produto.preco) e é \(produto.estoque) que temos no estoque")


/*
 
2) Crie uma classe chamada "ContaBancaria" com propriedades como "saldo" e
 "titular". Implemente métodos para depositar e sacar dinheiro da conta.

 */

//class ContaBancaria {
//    var titular: String
//    var saldo: Double
//
//    func depositar() {
//        print("\(titular), o valor foi depositado e somado ao valor foi de \(saldo) ")
//    }
//
//    func sacar() {
//        print("\(titular) o valor foi saquado e subtraído ao valor foi de \(saldo) ")
//    }
//
//    init(titular: String, saldo: Double) {
//        self.titular = titular
//        self.saldo = saldo
//    }
//}
//
//var depositando: ContaBancaria = ContaBancaria(titular: "Felipe", saldo: 300)

//depositando.depositar()

/*
 
3) Crie uma classe base chamada "Veiculo" com propriedades como "marca" e
   "modelo". Em seguida, crie subclasses, como "Carro" e "Moto", que herdem de
   "Veiculo" e incluam propriedades específicas para cada tipo de veículo.

 */

class Veiculo {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
}

class Carro: Veiculo {
    var descansoDeBraco: Bool = true
    var quantidadeDePortas: Int = 4
}

class Moto: Veiculo {
    var capacete: Bool
    var pedaleira: Bool
    
    init(capacete: Bool, pedaleira: Bool, marca: String, modelo: String) {
        self.capacete = capacete
        self.pedaleira = pedaleira
        
        super.init(marca: marca, modelo: modelo)
    }
}

var carro: Carro = Carro(marca: "Toyota", modelo: "Corolla")
//print(carro.quantidadeDePortas)

var moto: Moto = Moto(capacete: true, pedaleira: true, marca: "Honda", modelo: "PCX")
//print(moto.marca)

/*
 
4) Crie uma função que aceite um parâmetro do tipo "Veiculo" e chame um
   método, como "acelerar", desse veículo. Pode passar diferentes valor para a
   função.

 */


/*
 
5) Implemente um método na classe "Produto" que calcule o valor total em
   estoque para esse produto (preço x estoque).

 */

class Produto1 {
    var quantidadeEstoque: Double
    var precoProduto: Double
    
    func valorEstoque() -> Double {
        return self.quantidadeEstoque * self.precoProduto
    }
    
    init(quantidadeEstoque: Double, precoProduto: Double) {
        self.quantidadeEstoque = quantidadeEstoque
        self.precoProduto = precoProduto
    }
}

var frutas: Produto1 = Produto1(quantidadeEstoque: 20.0, precoProduto: 5.0)
//print(frutas.valorEstoque())


/*
 
6) Crie uma classe base chamada "Animal" com propriedades como "nome" e
   "idade". Em seguida, crie duas subclasses, como "Cachorro" e "Gato", que
   herdem de "Animal" e incluam propriedades específicas para cada animal.

 */

//class Animal {
//    var nome: String
//    var idade: Int
//
//    init(nome: String, idade: Int) {
//        self.nome = nome
//        self.idade = idade
//    }
//}
//
//class Cachorro: Animal {
//    var latir: Bool = true
//}
//
//class Gato: Animal {
//    var miar: Bool
//    var cairDeitado:Bool
//
//    init(miar: Bool, cairDeitado: Bool, nome: String, idade: Int) {
//        self.miar = miar
//        self.cairDeitado = cairDeitado
//
//        super.init(nome: nome, idade: idade)
//    }
//}
//
//var garfield: Gato = Gato(miar: true, cairDeitado: true, nome: "Garfield", idade: 2)

/*
 
7) Refatore a classe "ContaBancaria" para tornar as propriedades "saldo" e
   "titular" privadas e adicione métodos públicos para acessá-las.

 */

class ContaBancaria {
    private var titular: String
    private var saldo: Double
    
    public func depositar() {
        print("\(titular), o valor foi depositado e somado ao valor foi de \(saldo) ")
    }
    
    public func sacar() {
        print("\(titular) o valor foi saquado e subtraído ao valor foi de \(saldo) ")
    }
    
    
    init(titular: String, saldo: Double) {
        self.titular = titular
        self.saldo = saldo
    }
}

var depositando: ContaBancaria = ContaBancaria(titular: "Felipe", saldo: 300)

/*
 
8) Implemente um método na classe base "Animal" que todos os animais
   possam usar, como "fazerBarulho". As classes filha devem sobrescrever esse
   método para cada animal fazer um som diferente

 */

class Animal {
    var nome: String
    var idade: Int
    
    func fazerBarulho() {
        print("O animal emite sons")
    }
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

class Cachorro: Animal {
    var latir: String = "O cachorro late"
    
    override func fazerBarulho() {
        print("O cachorro \(nome) late")
    }
}

class Gato: Animal {
    var miar: Bool
    var cairDeitado:Bool
    
    override func fazerBarulho() {
        print("O gato \(nome) mia")
    }
    
    init(miar: Bool, cairDeitado: Bool, nome: String, idade: Int) {
        self.miar = miar
        self.cairDeitado = cairDeitado
        
        super.init(nome: nome, idade: idade)
    }
}

var garfield: Gato = Gato(miar: true, cairDeitado: true, nome: "Garfield", idade: 2)
//garfield.fazerBarulho()

var cachorro: Cachorro = Cachorro(nome: "Max", idade: 2)
//cachorro.fazerBarulho()

/*
 
9) Crie um array de strings contendo nomes de cidades. Escreva um código para
   ordenar o array em ordem alfabética.

 */

var cidades: [String] = ["São Paulo", "Ubatuba", "Kiel", "Ashkelon", "Berlim", "Tel Aviv", "Roma"].sorted()

print(cidades)


/*
 
10) Crie um array de números inteiros e escreva um código para encontrar o valor
    máximo e mínimo no array.

 */

var idades: [Int] = [1, 14, 18, 90, 56, 71, 146, 1264, 2173, 12674, 21]

var idadeMaxima = idades.max() ?? 0
var idadeMinima = idades.min() ?? 0

print("A idade máxima é \(idadeMaxima) e a mínima \(idadeMinima)")

/*
 
11) Crie uma array contente varios nome de pessoas

 */

var nomes: [String] = ["Felipe", "Vinicius", "Larissa", "Rose", "Lucas", "Ji", "Rubens", "Luiza", "Eliza"]



