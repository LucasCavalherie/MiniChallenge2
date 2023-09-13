//
//  ExpandableAnswer.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 11/09/23.
//

import SwiftUI

struct ExpandableAnswer: View {
    @ObservedObject var quizController = QuizController.shared
    
    let question : Question
    @State private var isDisclosed = false
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {isDisclosed.toggle()}
                } label: {
                    Image(systemName: isDisclosed ? "chevron.down" : "chevron.up")
                }
                .buttonStyle(.plain)
                
                Text(question.text)
                    
                Spacer()
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color("Black"))
            .frame(height: 16)
            
            Text("Resposta: " + question.justification)
            .foregroundColor(Color("DarkGray"))
            .padding(8)
            .frame(height: isDisclosed ? nil : 0, alignment: .top)
            .clipped()
        }
        .padding()
        .background(Color("Gray"))
        .cornerRadius(16)
    }
}

struct ExpandableAnswer_Previews: PreviewProvider {
    static var previews: some View {
        let question = Question(text: "Qual é o esporte em que se utiliza um barco com uma vela para se deslocar na água?", justification: "Vela - A vela é usada para se deslocar na água em esportes de vela, como o velejar.", category: Category.sports, answers: [Answer(text: "Canoagem", correct: false), Answer(text: "Vela", correct: true), Answer(text: "Natação", correct: false), Answer(text: "Remo", correct: false)])

        ExpandableAnswer(question: question)
    }
}
