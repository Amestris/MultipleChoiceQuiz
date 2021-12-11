// Finished working version

//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var opt1Button: UIButton!
    @IBOutlet weak var opt2Button: UIButton!
    @IBOutlet weak var opt3Button: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizLogic = QuizLogic()
    
    
    override func viewDidLoad() {
        //questionLabel.text = quiz[questionNumber].answer
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = 0
        updateUI()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let senderAnswear = sender.currentTitle!
        
        let answearOutput: Bool = quizLogic.checkAnswer(senderAnswear)
        
        sender.backgroundColor =  (answearOutput ? UIColor.green : UIColor.red)
        
        quizLogic.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizLogic.getQuizLabel()
        opt1Button.setTitle(quizLogic.getQuizAnswerLabel(0), for: .normal)
        opt2Button.setTitle(quizLogic.getQuizAnswerLabel(1), for: .normal)
        opt3Button.setTitle(quizLogic.getQuizAnswerLabel(2), for: .normal)
        opt1Button.backgroundColor = UIColor.clear
        opt2Button.backgroundColor = UIColor.clear
        opt3Button.backgroundColor = UIColor.clear
        
        scoreLabel.text = "Score \(quizLogic.getScore())"
        progressBar.setProgress(quizLogic.getQuizProgress(), animated: true)
    }
    
}

