//
//  ViewController.swift
//  GuessThatMigo
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedMigo : String = ""
    var usedLyricsIndices : [Int] = []
    var audioBank : [String] = ["skrrt", "hey", "cookie", "skrrt2"]
    var audioPlayer : AVAudioPlayer!
    var currentQuestion = Question(text: "", correctAnswer: "")
    var questionIndex : Int = 0
    var score : Int = 0
    var soundIndex : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        soundIndex = Int(arc4random_uniform(UInt32(audioBank.count)))
        
        let soundURL = Bundle.main.url(forResource: audioBank[soundIndex], withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
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
        
//        while(!usedLyricsIndices.contains(questionIndex))
//        {
//            questionIndex = Int(arc4random_uniform(UInt32(allQuestions.list.count)))
//            if(!usedLyricsIndices.contains(questionIndex))
//            {
//                usedLyricsIndices.append(questionIndex)
//                break;
//            }
//        }
        questionIndex += 1
        
        nextQuestion()

    }
    
    
    func updateUI() {
      
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questionIndex+1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionIndex + 1)
    }
    

    func nextQuestion() {
        
        print(questionIndex)
        if(questionIndex < allQuestions.list.count)
        {
            currentQuestion = allQuestions.list[questionIndex]
            print(currentQuestion)
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
