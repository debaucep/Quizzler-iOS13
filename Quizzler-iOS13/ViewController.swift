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
    
    
    func updateUI () {
        questionLabel.text = quiz[questionNumber].text // question label
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
        } else {
            print ("Wrong")
        }
        
        // verification of the lenght of the Array with quiz data
        
        
        // print ("Question Nr is ... \(questionNumber)")
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        //print ("Question Nr is ... \(questionNumber)")
        
        updateUI()
        
        }
    
    }
    
    

