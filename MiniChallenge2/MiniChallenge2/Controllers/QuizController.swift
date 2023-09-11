//
//  QuizController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation
import SwiftUI

class QuizController: ObservableObject {
    var championshipController = ChampionshipController.shared
    
    static var shared: QuizController = {
        let instance = QuizController()
        return instance
    }()
    
    private init() {
//        self.generateFirstQuestion()
    }
    
    @Published var quiz : Quiz = Quiz(total: 0, corrects: 0, errors: 0, answered: false, questions: [])
    @Published var question: Question = DataQuestions().questions.randomElement()!
    @Published var dataQuestions: [Question] = DataQuestions().questions
    let initialTime = 30
    
    @Published var timer = 0
    @Published var totalTime = 30
    @Published var timeFinished = false
    let waitTime: TimeInterval = 1.0
    
    @Published var answerDelayBlock = false
    
    func answeringTheQuestion(answer: Answer) {
        Timer.scheduledTimer(withTimeInterval: waitTime, repeats: false) { [self] _ in
            blockAnswering(block: false)
            if answer.correct{
                timer -= 5
                if timer < 0{
                    timer = 0
                }
                quiz.corrects += 1
            }else{
                timer += 3
                if timer > totalTime{
                    timer = totalTime
                }
                quiz.errors += 1
            }
            quiz.total += 1
            if !dataQuestions.isEmpty{
                question = dataQuestions.randomElement()!
                dataQuestions.remove(at: dataQuestions.firstIndex(of: question)!)
            }
            else {
                finishTime()
            }
        }
    }
    
    func changeQuiz(quiz: Quiz) {
        self.quiz = quiz
    }
    
    func generateFirstQuestion() {
        timer = 0
        totalTime = initialTime
        timeFinished = false
        dataQuestions = quiz.questions
        question = dataQuestions.randomElement()!
        answerDelayBlock = false
        dataQuestions.remove(at: self.dataQuestions.firstIndex(of: self.question)!)
    }
    
    func finishTime() {
        championshipController.finishChampionship()
        timeFinished = true
    }
    
    func blockAnswering(block: Bool) {
        answerDelayBlock = block
    }
}
