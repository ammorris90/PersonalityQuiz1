//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Andrew Morris on 3/2/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import Foundation
struct Question {
    var text: String
    var type: responseType
    var answer: [Answer]
}
enum responseType {
    case single, multiple, range
}
struct  Answer {
    var text: String
    var emperor: emperorType
}
enum emperorType: String {
  case basil = "Basil the 2nd"
   case justinian = "Justinian the Great"
   case komnenos = "Alexious Komnenos"
    case constantineXI = "Constantine the XI"
    
    var emperorDescription: String {
        switch self {
        case .basil:
            return "You're practial and efficient, perhaps to the extreme. When you set your mind to a task you will complete it, no matter what it takes or what gets in the way. While your choices may be controversial at home and abroad, you don't let this stop from making major changes in the world"
        case .justinian: return
            "You're above all maginficent and bold in ambition. You attracted great friends and exploit their talents. While grand in vision you tend to spend every penny you have and overtend yourself. However your actions and legacy will not be soon forgotten leaving the world a grander, more wonderous place"
        case .komnenos: return
            "You're the right person at the right time. A problem solver of the highest calibur and social mastermind of the highest calibur. While you may not shine in conflict, you certainly take the cake when it comes to finding a new solution. Devious and shrewd, you'll get your way, even if its through someone elses moves"
        case .constantineXI: return
            " You may be broke, and you're home a mere shadow of past glory and have danger looming at the gates. But you're braver than anyone, an inspiration to those who would follow, and loyal to your home. While not always sucessfuly you're a dangerous opponent to underestimate, you won't give them an inch without a fight. Perhaps you won't succeed but you stand as hero for the ages unquestioned in bravery"
        }
    }
    
}
