//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedMigo : String = ""
    
    var currentQuestion = Question(text: "", correctAnswer: "")
    var questionIndex : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        
        if sender.tag == 1{
            pickedMigo = "Offset"
        }
        else if sender.tag == 2{
            pickedMigo = "Takeoff"
        }
        else if sender.tag == 3{
            pickedMigo = "Quavo"
        }
        
        
        checkAnswer()
        questionIndex += 1
        nextQuestion()

    }
    
    
    func updateUI() {
      
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questionIndex+1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionIndex + 1)
    }
    

    func nextQuestion() {
        
        if(questionIndex < allQuestions.list.count)
        {
            currentQuestion = allQuestions.list[questionIndex]
            questionLabel.text = currentQuestion.questionText
            
            updateUI()
            
        }
        else{
            
            let alert = UIAlertController(title: "End of Quiz!", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = currentQuestion.answer
            
            if correctAnswer == pickedMigo{
                ProgressHUD.showSuccess("Holy whiskers you go sisters!")
                score += 1
            }
            else{
                ProgressHUD.showError("Aw man, maybe next time!")
                
            }
        
        }
        

    
    
    func startOver() {
        questionIndex = 0
        score = 0
        nextQuestion()
        
    }
    

    
}