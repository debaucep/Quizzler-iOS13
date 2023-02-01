//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by dmitry shcherba on 31.01.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    var text: String
    var answer: String
    
    init (q: String, a: String) {
        text = q
        answer = a
    }
}
