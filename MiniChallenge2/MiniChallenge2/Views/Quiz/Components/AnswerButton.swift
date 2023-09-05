//
//  Answer.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct AnswerButton: View {
    @ObservedObject var quizController = QuizController.shared
    
    @Binding var answer: Answer
    @State var clicked: Bool = false
    var onClickInstant: () -> Void
    var onClickDelayed: () -> Void
    
    var body: some View {
        Button {
            withAnimation(.easeIn) {
                onClickInstant()
                clicked = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                onClickDelayed()
            }
        } label: {
            Text(answer.text)
                .foregroundColor(corFont())
                .fontWeight(weightFont())
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(corButton())
                .cornerRadius(8)
        }
        .disabled(quizController.answerDelayBlock)
    }
    
    func corButton() -> Color{
        if clicked{
            if answer.correct{
                return Color("Green")
            }else{
                return Color("Red")
            }
        }
        else if quizController.answerDelayBlock && answer.correct {
            return Color("Green")
        }
        else{
            return Color("Gray")
        }
    }
    
    func corFont() -> Color{
        if clicked{
            return Color("White")
        }else{
            return Color("Black")
        }
    }
    
    func weightFont() -> Font.Weight{
        if clicked{
            return .bold
        }else{
            return .regular
        }
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(answer: .constant(Answer(text: "43 caracteres maximo", correct: false)),
            onClickInstant: {
                print("Instant")
            },
            onClickDelayed: {
                print("a")
            }
        )
    }
}
