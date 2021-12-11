// Finished working version

//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ewelina on 06/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], ra: String){
        self.text = q
        self.answers = a
        self.rightAnswer = ra
    }
    
}
