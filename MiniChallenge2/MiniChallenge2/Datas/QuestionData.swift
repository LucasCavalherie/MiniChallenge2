//
//  QuestionData.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

final class DataQuestions{
    var sailingQuestions: [Question] = [
        Question(text: "Qual é o esporte em que se utiliza um barco com uma vela para se deslocar na água?", justification: "Vela - A vela é usada para se deslocar na água em esportes de vela, como o velejar.", category: Category.sports, answers: [Answer(text: "Canoagem", correct: false), Answer(text: "Vela", correct: true), Answer(text: "Natação", correct: false), Answer(text: "Remo", correct: false)]),

        Question(text: "O que impulsiona um barco à vela?", justification: "Ventos - Os ventos são a força principal que impulsiona um barco à vela.", category: Category.sports, answers: [Answer(text: "Remos", correct: false), Answer(text: "Motores", correct: false), Answer(text: "Ventos", correct: true), Answer(text: "Correntezas", correct: false)]),

        Question(text: "Qual é o termo usado para descrever a vela quando está completamente cheia de vento?", justification: "Içada - A vela está cheia de vento quando está totalmente içada.", category: Category.sports, answers: [Answer(text: "Vazia", correct: false), Answer(text: "Amassada", correct: false), Answer(text: "Içada", correct: true), Answer(text: "Dobrada", correct: false)]),

        Question(text: "Qual é o nome da parte do barco onde os velejadores ficam durante a corrida?", justification: "Convés - A parte do barco onde os velejadores ficam durante a corrida, geralmente no convés.", category: Category.sports, answers: [Answer(text: "Convés", correct: true), Answer(text: "Proa", correct: false), Answer(text: "Popa", correct: false), Answer(text: "Casco", correct: false)]),

        Question(text: "Em que esporte de vela os barcos competem em um circuito marcado por boias?", justification: "Vela de regata - Os barcos competem em um circuito marcado por boias em regatas de vela.", category: Category.sports, answers: [Answer(text: "Vela olímpica", correct: false), Answer(text: "Vela de recreio", correct: false), Answer(text: "Vela de regata", correct: true), Answer(text: "Vela de aventura", correct: false)]),

        Question(text: "O que é um 'vento de popa' na vela?", justification: "Vento que sopra por trás do barco - Um 'vento de popa na vela é quando o vento sopra por trás do barco.", category: Category.sports, answers: [Answer(text: "Vento que sopra da direção lateral do barco", correct: false), Answer(text: "Vento que sopra de frente para o barco", correct: false), Answer(text: "Vento que sopra na mesma direção do barco", correct: false), Answer(text: "Vento que sopra por trás do barco", correct: true)]),

        Question(text: "Qual é o nome da pessoa que controla as velas em um barco à vela?", justification: "Velejador - O velejador é a pessoa que controla as velas em um barco à vela.", category: Category.sports, answers: [Answer(text: "Capitão", correct: false), Answer(text: "Timoneiro", correct: false), Answer(text: "Marinheiro", correct: false), Answer(text: "Velejador", correct: true)]),

        Question(text: "Qual é a parte do barco que está submersa na água e contrabalança a força do vento nas velas?", justification: "Quilha - A quilha está submersa na água e ajuda a contrabalançar a força do vento nas velas.", category: Category.sports, answers: [Answer(text: "Proa", correct: false), Answer(text: "Popa", correct: false), Answer(text: "Quilha", correct: true), Answer(text: "Convés", correct: false)]),

        Question(
            text: "Quando a popa de um barco passa pela linha do vento, qual é o termo náutico usado?",
            justification: "Arribar -  'arribar é o termo náutico usado quando a popa (parte traseira de um barco á vela, onde se encontra a parte final da embarcação) de um barco passa pela linha do vento.",
            category: Category.sports,
            answers: [
                Answer(text: "Orçar", correct: true),
                Answer(text: "Abarloar", correct: false),
                Answer(text: "Adernar", correct: false),
                Answer(text: "Arribar", correct: false)
            ]),

        Question(
            text: "O que é 'lascar' no contexto da vela?",
            justification: "Quebrar uma vela de propósito - 'Lascar' no contexto da vela significa danificar uma vela de propósito.",
            category: Category.sports,
            answers: [
                Answer(text: "Quebrar uma vela de propósito", correct: false),
                Answer(text: "Uma manobra arriscada", correct: true),
                Answer(text: "Deixar a vela solta demais", correct: false),
                Answer(text: "Colocar muita pressão nas velas", correct: false)
            ]),
        
        
        Question(
                text: "O que é 'lascar' no contexto da vela?",
                justification: "Quebrar uma vela de propósito",
                category: Category.sports,
                answers: [
                    Answer(text: "Quebrar uma vela de propósito", correct: true),
                    Answer(text: "Uma manobra arriscada", correct: false),
                    Answer(text: "Deixar a vela solta demais", correct: false),
                    Answer(text: "Colocar muita pressão nas velas", correct: false)
                ]
            ),
        
        Question(
            text: "Qual é o instrumento usado para medir a velocidade do vento em um barco à vela?",
            justification: "Anemômetro - O anemômetro é usado para medir a velocidade do vento em um barco à vela.",
            category: Category.sports,
            answers: [
                Answer(text: "Bússola", correct: false),
                Answer(text: "Anemômetro", correct: true),
                Answer(text: "Sextante", correct: false),
                Answer(text: "Radar", correct: false)
            ]
        ),
        
        Question(
                text: "O que significa 'dar uma bolina' na vela?",
                justification: "Ajustar as velas para navegar contra o vento - 'Dar uma bolina' na vela significa ajustar as velas para navegar contra o vento.",
                category: Category.sports,
                answers: [
                    Answer(text: "Virar o barco de lado", correct: false),
                    Answer(text: "Ajustar as velas para navegar contra o vento", correct: true),
                    Answer(text: "Fazer uma manobra de emergência", correct: false),
                    Answer(text: "Parar o barco abruptamente", correct: false)
                ]
            ),
            Question(
                text: "Qual é o nome da linha que separa o casco de um barco em duas metades, a parte superior e a parte inferior?",
                justification: "Linha de flutuação - A linha de flutuação separa o casco de um barco em duas metades, a parte superior e a parte inferior.",
                category: Category.sports,
                answers: [
                    Answer(text: "Linha de flutuação", correct: true),
                    Answer(text: "Linha de costura", correct: false),
                    Answer(text: "Linha de demarcação", correct: false),
                    Answer(text: "Linha de equilíbrio", correct: false)
                ]
            ),
            Question(
                text: "O que é uma 'regata' no contexto da vela?",
                justification: "Uma corrida de barcos à vela - Uma 'regata' no contexto da vela é uma corrida de barcos à vela.",
                category: Category.sports,
                answers: [
                    Answer(text: "Uma corrida de barcos à vela", correct: true),
                    Answer(text: "Um tipo de vela especial", correct: false),
                    Answer(text: "Uma manobra de emergência", correct: false),
                    Answer(text: "Um termo usado para descrever o casco de um barco", correct: false)
                ]
            ),
            Question(
                text: "Qual é o nome da vela dianteira em um barco à vela, geralmente menor que a vela principal?",
                justification: "Vela de proa - A vela dianteira em um barco à vela, geralmente menor que a vela principal, é chamada de 'vela de proa'.",
                category: Category.sports,
                answers: [
                    Answer(text: "Mastro", correct: false),
                    Answer(text: "Vela mestra", correct: false),
                    Answer(text: "Vela de proa", correct: true),
                    Answer(text: "Vela de popa", correct: false)
                ]
            )
    ]
    
    let swimmingQuestions: [Question] = [
        Question(
            text: "Qual é o estilo de natação mais rápido?",
            justification: "Crawl - O Crawl é o estilo de natação mais rápido devido à sua eficiência.",
            category: Category.sports,
            answers: [
                Answer(text: "Borboleta", correct: false),
                Answer(text: "Peito", correct: false),
                Answer(text: "Crawl", correct: true),
                Answer(text: "Costas", correct: false)
            ]
        ),
        Question(
            text: "Qual é a distância de uma piscina olímpica em metros?",
            justification: "50 metros - A distância de uma piscina olímpica é de 50 metros.",
            category: Category.sports,
            answers: [
                Answer(text: "25 metros", correct: false),
                Answer(text: "50 metros", correct: true),
                Answer(text: "100 metros", correct: false),
                Answer(text: "200 metros", correct: false)
            ]
        ),
        Question(
            text: "Qual parte do corpo é usada principalmente no estilo crawl?",
            justification: "Braços - Os braços são usados principalmente no estilo crawl.",
            category: Category.sports,
            answers: [
                Answer(text: "Pernas", correct: false),
                Answer(text: "Braços", correct: true),
                Answer(text: "Cabeça", correct: false),
                Answer(text: "Costas", correct: false)
            ]
        ),
        Question(
            text: "Quantas voltas um nadador completa em uma prova de 1500 metros livre?",
            justification: "30 voltas - Um nadador completa 30 voltas em uma prova de 1500 metros livre.",
            category: Category.sports,
            answers: [
                Answer(text: "15 voltas", correct: false),
                Answer(text: "30 voltas", correct: true),
                Answer(text: "60 voltas", correct: false),
                Answer(text: "150 voltas", correct: false)
            ]
        ),
        Question(
            text: "Qual é o nome do equipamento utilizado para treinar a resistência na natação?",
            justification: "Pull Buoy - O equipamento utilizado para treinar a resistência na natação é o Pull Buoy.",
            category: Category.sports,
            answers: [
                Answer(text: "Nadadeira", correct: false),
                Answer(text: "Pull Buoy", correct: true),
                Answer(text: "Touca", correct: false),
                Answer(text: "Óculos de natação", correct: false)
            ]
        ),
        Question(
            text: "Qual é a primeira parte do corpo que entra em contato com a água no início de uma virada na natação de crawl?",
            justification: "Braços - Os braços são a primeira parte do corpo que entra em contato com a água no início de uma virada na natação de crawl.",
            category: Category.sports,
            answers: [
                Answer(text: "Cabeça", correct: false),
                Answer(text: "Pernas", correct: false),
                Answer(text: "Braços", correct: true),
                Answer(text: "Peito", correct: false)
            ]
        ),
        Question(
            text: "Qual é o nome da técnica de natação em que o nadador nada de costas?",
            justification: "Costas - A técnica de natação em que o nadador nada de costas é chamada de Costas.",
            category: Category.sports,
            answers: [
                Answer(text: "Crawl", correct: false),
                Answer(text: "Peito", correct: false),
                Answer(text: "Costas", correct: true),
                Answer(text: "Borboleta", correct: false)
            ]
        ),
        Question(
            text: "Quantos nadadores compõem uma equipe de revezamento 4x100 metros livre?",
            justification: "4 nadadores - Uma equipe de revezamento 4x100 metros livre é composta por 4 nadadores.",
            category: Category.sports,
            answers: [
                Answer(text: "1 nadador", correct: false),
                Answer(text: "2 nadadores", correct: false),
                Answer(text: "3 nadadores", correct: false),
                Answer(text: "4 nadadores", correct: true)
            ]
        ),
        Question(
            text: "Qual é o evento de natação mais longo nos Jogos Olímpicos?",
            justification: "1500 metros livre - O evento de natação mais longo nos Jogos Olímpicos é o 1500 metros livre.",
            category: Category.sports,
            answers: [
                Answer(text: "100 metros livre", correct: false),
                Answer(text: "200 metros medley", correct: false),
                Answer(text: "400 metros livre", correct: false),
                Answer(text: "1500 metros livre", correct: true)
            ]
        ),
        Question(
            text: "Qual é o nome da competição de natação que envolve várias provas diferentes em um curto período de tempo?",
            justification: "Decatlo - O nome da competição de natação que envolve várias provas diferentes em um curto período de tempo é Decatlo.",
            category: Category.sports,
            answers: [
                Answer(text: "Ironman", correct: false),
                Answer(text: "Pentatlo", correct: false),
                Answer(text: "Heptatlo", correct: false),
                Answer(text: "Decatlo", correct: true)
            ]
        ),
        Question(
            text: "Qual é o nome da técnica de natação em que o nadador faz movimentos simultâneos com as pernas, semelhantes a um sapo?",
            justification: "Peito - A técnica de natação em que o nadador faz movimentos simultâneos com as pernas, semelhantes a um sapo, é o estilo Peito.",
            category: Category.sports,
            answers: [
                Answer(text: "Borboleta", correct: false),
                Answer(text: "Crawl", correct: false),
                Answer(text: "Peito", correct: true),
                Answer(text: "Costas", correct: false)
            ]
        ),
        Question(
            text: "Qual é a distância de uma piscina de natação em estilo olímpico?",
            justification: "50 metros - Uma piscina de natação em estilo olímpico tem 50 metros de distância.",
            category: Category.sports,
            answers: [
                Answer(text: "25 metros", correct: false),
                Answer(text: "50 metros", correct: true),
                Answer(text: "100 metros", correct: false),
                Answer(text: "200 metros", correct: false)
            ]
        ),
        Question(
            text: "Qual é a parte da piscina onde os nadadores geralmente fazem suas viradas durante as provas de estilo livre?",
            justification: "Parede - Os nadadores geralmente fazem suas viradas durante as provas de estilo livre na parede da piscina.",
            category: Category.sports,
            answers: [
                Answer(text: "Canto", correct: false),
                Answer(text: "Meio da piscina", correct: false),
                Answer(text: "Parede", correct: true),
                Answer(text: "Raia", correct: false)
            ]
        ),
        Question(
            text: "Qual é o nome da competição de natação de longa distância que ocorre em águas abertas, geralmente em mar aberto?",
            justification: "Maratona aquática - A competição de natação de longa distância que ocorre em águas abertas, geralmente em mar aberto, é chamada de Maratona Aquática.",
            category: Category.sports,
            answers: [
                Answer(text: "Triatlo", correct: false),
                Answer(text: "Maratona aquática", correct: true),
                Answer(text: "Polo aquático", correct: false),
                Answer(text: "Saltos ornamentais", correct: false)
            ]
        )
    ]

}

