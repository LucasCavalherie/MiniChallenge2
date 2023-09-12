//
//  QuestionData.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

final class DataQuestions{
    var questions: [Question] = [
        Question(text: "Qual é o esporte em que se utiliza um barco com uma vela para se deslocar na água?", justification: "Vela - A vela é usada para se deslocar na água em esportes de vela, como o velejar.", category: Category.sports, answers: [Answer(text: "Canoagem", correct: false), Answer(text: "Vela", correct: true), Answer(text: "Natação", correct: false), Answer(text: "Remo", correct: false)]),

        Question(text: "O que impulsiona um barco à vela?", justification: "Ventos - Os ventos são a força principal que impulsiona um barco à vela.", category: Category.sports, answers: [Answer(text: "Remos", correct: false), Answer(text: "Motores", correct: false), Answer(text: "Ventos", correct: true), Answer(text: "Correntezas", correct: false)]),

        Question(text: "Qual é o termo usado para descrever a vela quando está completamente cheia de vento?", justification: "Içada - A vela está cheia de vento quando está totalmente içada.", category: Category.sports, answers: [Answer(text: "Vazia", correct: false), Answer(text: "Amassada", correct: false), Answer(text: "Içada", correct: true), Answer(text: "Dobrada", correct: false)]),

        Question(text: "Qual é o nome da parte do barco onde os velejadores ficam durante a corrida?", justification: "Convés - A parte do barco onde os velejadores ficam durante a corrida, geralmente no convés.", category: Category.sports, answers: [Answer(text: "Convés", correct: true), Answer(text: "Proa", correct: false), Answer(text: "Popa", correct: false), Answer(text: "Casco", correct: false)]),

        Question(text: "Em que esporte de vela os barcos competem em um circuito marcado por boias?", justification: "Vela de regata - Os barcos competem em um circuito marcado por boias em regatas de vela.", category: Category.sports, answers: [Answer(text: "Vela olímpica", correct: false), Answer(text: "Vela de recreio", correct: false), Answer(text: "Vela de regata", correct: true), Answer(text: "Vela de aventura", correct: false)]),

        Question(text: "O que é um 'vento de popa' na vela?", justification: "Vento que sopra por trás do barco - Um 'vento de popa na vela é quando o vento sopra por trás do barco.", category: Category.sports, answers: [Answer(text: "Vento que sopra da direção lateral do barco", correct: false), Answer(text: "Vento que sopra de frente para o barco", correct: false), Answer(text: "Vento que sopra na mesma direção do barco", correct: false), Answer(text: "Vento que sopra por trás do barco", correct: true)]),

        Question(text: "Qual é o nome da pessoa que controla as velas em um barco à vela?", justification: "Velejador - O velejador é a pessoa que controla as velas em um barco à vela.", category: Category.sports, answers: [Answer(text: "Capitão", correct: false), Answer(text: "Timoneiro", correct: false), Answer(text: "Marinheiro", correct: false), Answer(text: "Velejador", correct: true)]),

        Question(text: "Qual é a parte do barco que está submersa na água e contrabalança a força do vento nas velas?", justification: "Quilha - A quilha está submersa na água e ajuda a contrabalançar a força do vento nas velas.", category: Category.sports, answers: [Answer(text: "Proa", correct: false), Answer(text: "Popa", correct: false), Answer(text: "Quilha", correct: true), Answer(text: "Convés", correct: false)]),

        Question(text: "Quando a popa de um barco passa pela linha do vento, qual é o termo náutico usado?", justification: "Arribar -  'arribar é o termo náutico usado quando a popa (parte traseira de um barco á vela, onde se encontra a parte final da embarcação) de um barco passa pela linha do vento.", category: Category.sports, answers: [Answer(text: "Orçar", correct: true), Answer(text: "Abarloar", correct: false), Answer(text: "Adernar", correct: false), Answer(text: "Arribar", correct: false)]),

        Question(text: "O que é 'lascar' no contexto da vela?", justification: "Quebrar uma vela de propósito - 'Lascar' no contexto da vela significa danificar uma vela de propósito.", category: Category.sports, answers: [Answer(text: "Quebrar uma vela de propósito", correct: false), Answer(text: "Uma manobra arriscada", correct: true), Answer(text: "Deixar a vela solta demais", correct: false), Answer(text: "Colocar muita pressão nas velas", correct: false)])
    ]
}

