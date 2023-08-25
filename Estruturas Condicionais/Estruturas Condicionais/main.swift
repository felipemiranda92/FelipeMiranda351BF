//
//  main.swift
//  Estruturas Condicionais
//
//  Created by Felipe Miranda Santos on 24/08/23.
//

// MARK: - ESTRUTURAS CONDICIONAIS

// if -> Significa "SE"
// Tudo oque está na frente do "if" significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO

//if 1 + 1 == 2 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//}

// Porem, não podemos prever sempre casos verdadeiros pois existe os casos FALSOS. Com isso utilizamos uma palavra reservada chamada ELSE

//if 1 + 1 == 3 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//    print("Realmente, a condição é verdadeira")
//} else {
//    // se entrar no segundo bloco, significa que a condição é FALSA
//    print("Realmente, a condição é falsa")
//}


func validaMaiorIdade(idade: Int) {
    if idade >= 18 {
        print("Eita, agora pode ir preso em")
    } else {
        print("Continue estudando...")
    }
}

//validaMaiorIdade(idade: 18)

//func valorIngresso(eSocio: Bool) -> Int {
//    if eSocio == true {
//        return 300
//    } else {
//       return 500
//    }
//}
//
//var valorDoIngresso: Int = valorIngresso(eSocio: true)
//print(valorDoIngresso)

// Quem é sócio é 300 quem não 500

//func valorIngressoEmGrupo(quantidadeDePessoas: Int, quantidadeSocio: Int) -> Int {
//    if quantidadeSocio > quantidadeDePessoas {
//        return 0
//    } else {
//        let quantidadeNaoSocias: Int = quantidadeDePessoas - quantidadeSocio
//        let total = (quantidadeSocio * 300) + (quantidadeNaoSocias * 500)
//        return total
//    }
//}
//
//var valorDoIngresso: Int = valorIngressoEmGrupo(quantidadeDePessoas: 100, quantidadeSocio: 50)
//print(valorDoIngresso)

// Validações compostas

// && -> E -> todas as validações tem que ser verdadeiras
// || -> OU -> se uma das validações forem verdadeiras ele retorna true caso contrario false


// Neste metodo verificamos se o usuario tem carteira de motorista E tem o valor do carro de no minimo 10000.
// Caso alguma das condições sejam falsa não podemos comprar o veiculo. Para comprar TODAS DEVEM SER VERDADEIRAS

func vouComprarCarro(carteiraMotorista: Bool, valor: Double) -> Bool {
    if carteiraMotorista == true && valor >= 10000 {
        return true
    } else {
        return false
    }
}

var comprarCarro: Bool = vouComprarCarro(carteiraMotorista: true, valor: 20000)
//print(comprarCarro)


// Se o usuario gastou mais de 1000 reais OU ele tem o cartão fidelidade então ele tem desconto, caso contrario, sem desconto

func descontoLoja(valorTotal: Double, cartaoFidelidade: Bool) -> Bool {
    if valorTotal > 1000 || cartaoFidelidade == true {
        return true
    } else {
        return false
    }
}

var vouTerDesconto: Bool = descontoLoja(valorTotal: 5000, cartaoFidelidade: false)
//print(vouTerDesconto)


// Desafios feitos na aula

// Desafio 1

func resultado (nota1: Double, nota2: Double) -> String {
    var mediaNotas: Double = (nota1 + nota2) / 2
    
    if (mediaNotas >= 7) {
        return "Aluno Aprovado"
    } else {
        return "Aluno Reprovado"
    }
}

var resultadoProva = resultado(nota1: 7.5, nota2: 3.1)
//print(resultadoProva)

// Desafio 3

func semaforo(sinalizacao: String) -> String {
    if (sinalizacao == "vermelho") {
        return "PARE"
    }
    else if (sinalizacao == "amarelo") {
        return "ATENÇÃO"
    }
    else if (sinalizacao == "verde") {
        return "SIGA EM FRENTE"
    } else {
        return "PARAMETRO INVÁLIDO"
    }
}

var resultadoSemaforo: String = semaforo(sinalizacao: "vermelho")
//print(resultadoSemaforo)

// Desafio 4

func programacaoFinalDeSemanda (eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if (eFimDeSemana == true && tenhoDinheiro == true) {
        print("VAMOS PASSEAR!")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}

//programacaoFinalDeSemanda(eFimDeSemana: true, tenhoDinheiro: true)


// Desafio 2

func desconto (total: Double) -> Double {
    if (total < 100.00) {
        return total * 0.9
    }
    else if (total <= 200.00) {
        return total * 0.85
    } else {
        return total * 0.8
    }
    
}

var valorDesconto: Double = desconto(total: 10000)
//print(valorDesconto)

// Desafio 5

func verificacaoParOuImpar (numero: Int) -> Bool {
    if (numero % 2 == 0) {
        return true
    } else {
        return false
    }
}

var parOuImpar: Bool = verificacaoParOuImpar(numero: 7)
//print(parOuImpar)

// Desafio 6

func verificaMaiorNumero (num1: Double, num2: Double) -> String {
    if(num1 > num2) {
        return "BOLA"
    } else {
        return "BANANA"
    }
}

var numero: String = verificaMaiorNumero(num1: 7.0, num2: 7.1)
//print(numero)


// DESAFIO 7

func conviteFesta (foiConvidado: Bool) {
    if (foiConvidado == true) {
        print("Liberado pra festa")
    } else {
        print("Infelizmente você não foi convidado")
    }
}

//conviteFesta(foiConvidado: true)












