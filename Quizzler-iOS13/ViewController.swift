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
        ["Moscow is Russia", "True"],
        ["Oregon is Canada", "False"],
        ["China is the biggest country on territory basis", "False"]
    ]
    
    var questionNumber = 0
    
    
    func updateUI () {
        questionLabel.text = quiz[questionNumber][0] // question label
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    
    }

    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1] // answer from 2d Array
        
        
        if userAnswer == actualAnswer {
            print ("Right")
        } else {
            print ("Wrong")
        }
        
        // verification of the lenght of the Array with quiz data
        
        
        print ("Question Nr is ... \(questionNumber)")
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        //print ("Question Nr is ... \(questionNumber)")
        
        updateUI()
        
        }
    
    }
    
    

