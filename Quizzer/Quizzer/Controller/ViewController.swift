//
//  ViewController.swift
//  Quizzer
//
//  Created by Milan Garain on 18/08/24.
//

import UIKit

class ViewController: UIViewController {
    var quizBrain = QuizBrain()
    
    //MARK: IBOutlets and IBActions
    @IBOutlet weak var questionLebel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let selectedAnswer = sender.currentTitle!
        let isAnswerCorrect = quizBrain.checkAnswer(selectedAnswer)
        if isAnswerCorrect {
            print("Correct answer")
            sender.backgroundColor = UIColor.green
        } else {
            print("Wrong answer")
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        questionLebel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
    }

}

