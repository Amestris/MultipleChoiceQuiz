// Finished working version

//  QuizLogic.swift
//  Quizzler-iOS13
//
//  Created by Ewelina on 06/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizLogic{
    let quiz = [
        Question(q: "A slug's blood is green.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 3"),
                Question(q: "Approximately one quarter of human bones are in the feet.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1"),
                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 2"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 3"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: ["Option 1", "Option 2", "Option 3"], ra: "Option 1")

    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        
        if quiz[questionNumber].rightAnswer == userAnswer {
            self.score += 1
            return true
        }else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if self.questionNumber < quiz.count-1 {
            self.questionNumber += 1
            
        }else {
            self.score = 0
            self.questionNumber = 0
            
        }
    }
    
    func getScore() -> Int{
        return self.score
    }
     func getQuizLabel() -> String{
         
        return quiz[questionNumber].text
    }
    func getQuizAnswerLabel(_ answerNumber: Int) -> String{
        
        return quiz[questionNumber].answers[answerNumber]
   }
    func getQuizProgress() -> Float{
        return Float(questionNumber+1)/Float(quiz.count)
    }
}
