//
//  ViewController.swift
//  SafariQuizApp
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    
    let questions: [QuestionModel] = [
        QuestionModel(image: UIImage(named: "lion")!, correctAnswer: 2, answer1: "Hippo", answer2: "Lion", answer3: "Antelope"),
        QuestionModel(image: UIImage(named: "giraffe")!, correctAnswer: 1, answer1: "giraffe", answer2: "Crocodile", answer3: "Elephant"),
        QuestionModel(image: UIImage(named: "buffalo")!, correctAnswer: 3, answer1: "Hippo", answer2: "Lion", answer3: "buffalo")
    ]
    
    var score = 0
    var currentQuestionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupQuestion()
    }
    
    func setupQuestion() {
        guard currentQuestionIndex <= questions.count - 1 else {
            print("we have reached the end of the quiz")
            return
        }
        
        let currentQuestion = questions[currentQuestionIndex]
        questionImageView.image = currentQuestion.image
        answer1Button.setTitle(currentQuestion.answer1, for: .normal)
        answer2Button.setTitle(currentQuestion.answer2, for: .normal)
        answer3Button.setTitle(currentQuestion.answer3, for: .normal)
    }
    
    @IBAction func answer1ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[currentQuestionIndex]
        if currentQuestion.correctAnswer == 1 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer is incorrect!")
        }
        currentQuestionIndex += 1
        setupQuestion()
    }
    
    @IBAction func answer2ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[currentQuestionIndex]
        if currentQuestion.correctAnswer == 2 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer is incorrect!")
        }
        currentQuestionIndex += 1
        setupQuestion()
    }
    
    @IBAction func answer3ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[currentQuestionIndex]
        if currentQuestion.correctAnswer == 3 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer is incorrect!")
        }
        currentQuestionIndex += 1
        setupQuestion()
    }
    
}

