//
//  QuestionBank.swift
//  itest
//
//  Created by admin on 26/06/19.
//  Copyright © 2019 professional. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Question]()
    init(){
        list.append(Question(questionText: "Which of the following countries has agreed to accept the payment of export of oil and petroleum products to India, in rupee terms instead of dollar or any other currency?", choiceA: "Kuwait", choiceB: "UAE", choiceC: "Iran", choiceD: "Iraq", answer: 3))
        list.append(Question(questionText: "As per the newspaper reports Government of India has finally agreed to purchase advanced MRMRs for its naval forces. What are these MRMRs?", choiceA: "Aircrafts", choiceB: "Warships", choiceC: "Submarines", choiceD: "Radar Systems ", answer: 1))
        list.append(Question(questionText: "Which of the following countries approved a new constitution of the country in a referendum through secret voting held in February 2012? ", choiceA: "Libya", choiceB: "Iraq", choiceC: "Iran", choiceD: "Syria", answer: 4))
        list.append(Question(questionText: "Which of the following countries has signed a 'Non-Aggression Pact' with Sudan? ", choiceA: "Uganda", choiceB: "South Sudan ", choiceC: "Ethiopia", choiceD: "Kenya", answer: 2))
        list.append(Question(questionText: "The sensitive index of National Stock Exchange of India is popularly known as.... ", choiceA: "SENSEX", choiceB: "CRIS", choiceC: "NIFTY", choiceD: "MCS", answer: 3))
    }
}
