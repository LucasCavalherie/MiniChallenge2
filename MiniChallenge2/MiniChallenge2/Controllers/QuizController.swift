//
//  QuizController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

class QuizController: ObservableObject {
    static var shared: QuizController = {
        let instance = QuizController()
        return instance
    }()
    
    private init() {
        self.generateFirstQuestion()
    }
    
    @Published var quiz : Quiz = Quiz(total: 0, corrects: 0, errors: 0, answered: false, questions: [])
    @Published var question: Question = DataQuestions().questions.randomElement()!
    @Published var dataQuestions: [Question] = DataQuestions().questions
    
    @Published var timer = 0
    @Published var totalTime = 30
    @Published var timeFinished = false
    let waitTime: TimeInterval = 1.0
    
    func answeringTheQuestion(answer: Answer) {
        Timer.scheduledTimer(withTimeInterval: waitTime, repeats: false) { [self] _ in
            if !dataQuestions.isEmpty{
                question = dataQuestions.randomElement()!
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
                dataQuestions.remove(at: dataQuestions.firstIndex(of: question)!)
            }
        }
    }
    
    func changeQuiz(quiz: Quiz) {
        self.quiz = quiz
    }
    
    func generateFirstQuestion() {
        self.question = self.dataQuestions.randomElement()!
        self.dataQuestions.remove(at: self.dataQuestions.firstIndex(of: self.question)!)
    }
}
