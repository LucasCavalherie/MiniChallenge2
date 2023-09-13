//
//  GoalView.swift
//  MiniChallenge2
//
//  Created by Jady Torralvo on 06/09/23.
//

import SwiftUI

struct GoalView: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    @ObservedObject var quizController = QuizController.shared
    
    var body: some View {
        VStack {
            NavBarQuiz()
            
            Spacer()
            
            VStack (spacing: 48) { // titulo <-> botao
                VStack (spacing: 24){ // subtítulo <-> pódio
                    VStack (spacing: 8) { //título <-> subtitulo
                        Text("Metas da partida")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Black"))
                        
                        HStack (spacing: 4){ // subtitulo
                            Text("Tente vencê-los para subir no")
                                .font(.callout)
                            .foregroundColor(Color("DarkGray"))
                            
                            Text("ranking")
                                .font(.callout)
                                .fontWeight(.bold)
                            .foregroundColor(Color("DarkGray"))
                        }
                        .padding(.bottom)
                        
                        VStack (spacing: 16){ // premio1 <-> premio 2
                            VStack (spacing: 8){ // ilustraçao <-> legenda
                                Image("PrêmioOuro")
                                
                                HStack (spacing: 6){ // ícone <-> qnt acertos
                                    HStack {
                                        Image(systemName: "medal")
                                            .font(.callout)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("Yellow"))
                                        
                                        HStack (spacing: 4) { // qnt acertos
                                            Text("8")
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("Black"))
                                            Text("acertos")
                                                .font(.subheadline)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("Black"))
                                        }
                                    }
                                }
                            }
                            
                            HStack (spacing: 24) {
                                VStack (spacing: 8){
                                    Image("PrêmioPrata")
                                    
                                    HStack (spacing: 6){
                                        HStack {
                                            Image(systemName: "medal")
                                                .font(.callout)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("DarkGray"))
                                            
                                            HStack (spacing: 4) {
                                                Text("7")
                                                    .font(.subheadline)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("Black"))
                                                Text("acertos")
                                                    .font(.subheadline)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("Black"))
                                            }
                                        }
                                    }
                                }
                                VStack (spacing: 8){
                                    Image("PrêmioBronze")
                                    
                                    HStack (spacing: 6){
                                        HStack {
                                            Image(systemName: "medal")
                                                .font(.callout)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("Bronze"))
                                            
                                            HStack (spacing: 4) {
                                                Text("6")
                                                    .font(.subheadline)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("Black"))
                                                Text("acertos")
                                                    .font(.subheadline)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("Black"))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Button {
                        SoundController.shared.play(sound: .cardClick)
                        let quiz = championshipController.currentChampionship.quiz
                        let sport = championshipController.currentChampionship.sport
                        quizController.changeQuiz(quiz: quiz, sport: sport)
                        routerController.addKeyToViewStack(viewKey: "Quiz")
                    } label: {
                        Text("Iniciar quiz")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("White"))
                            .padding()
                            .frame(maxWidth: .infinity)
                    }.background(Color("Green"))
                        .cornerRadius(10)

                }
                .padding(24)
                .background(Color("White"))
                .cornerRadius(10)
            }.padding(.horizontal, 28)
            
            Spacer()
            
        }
        .background(Color("Blue"))
    }
}
    



struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
