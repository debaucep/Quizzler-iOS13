//
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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(q: "Moscow is Russia", a: "True"),
        Question(q: "Oregon is Canada", a: "False"),
        Question(q: "China is the biggest country on territory basis", a: "False"),
        Question(q: "Moscow was founded in 1247", a: "False"),
        Question(q: "Gorbachev was the first and they only one president of the USSR", a: "True")
    ]
    
    
    
    var questionNumber = 0
    var timer = Timer()
    
    @objc func updateUI () {
        questionLabel.text = quiz[questionNumber].text // question label
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = Float (questionNumber + 1) / Float (quiz.count)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer // answer from ex. 2d Array. Now comes from updated [Question] array.
        
        
        if userAnswer == actualAnswer {
            print ("Right")
            sender.backgroundColor = .green
        } else {
            print ("Wrong")
            sender.backgroundColor = .orange
        }
        
        // verification of the lenght of the Array with quiz data
        // print ("Question Nr is ... \(questionNumber)")
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            progressBar.progress = 0.0
        }
        
        //print ("Question Nr is ... \(questionNumber)")
        //delay 2.0
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    
}
