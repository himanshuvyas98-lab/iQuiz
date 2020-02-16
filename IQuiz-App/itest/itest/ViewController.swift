//
//  ViewController.swift
//  itest
//
//  Created by admin on 26/06/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    
    
   
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }


    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("coreect")
            score += 1
            
            
            
        } else {
       print("wrong")
        }
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion() {
        
        if questionNumber <= allQuestions.list.count + 1 {
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
        selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "End of the Quiz do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {ACTION in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        
        
    }
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    
}

