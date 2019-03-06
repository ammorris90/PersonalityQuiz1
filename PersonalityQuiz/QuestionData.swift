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
struct Answer {
    var text: String
    var emperor: emperorType
}
enum emperorType : Character {
  case basil = "⚔️"
    case justinian = "👑"
    case komnenos = "👨‍👦‍👦"
    case constantineXI = "☦️"
    
    var emperorDescription: String {
        switch self {
        case .basil:
            return "You're Basil the 2nd! In every sense of you are practial and efficient, perhaps to the extreme. When you set your mind to a task you will complete it, no matter what it takes or what gets in the way. While your choices may be controversial at home and abroad, you don't let this stop from making major changes in the world"
        case .justinian:
            return "You're Justinian the Great! Above all maginficent and bold in ambition. You attracted great friends and exploit their talents. While grand in vision you tend to spend every penny you have and overtend yourself. However your actions and legacy will not be soon forgotten leaving the world a grander, more wonderous place"
        case .komnenos: return "You're Alexious Komnenos! The right person at the right time. A problem solver of the highest calibur and social mastermind of the highest calibur. While you may not shine in conflict, you certainly take the cake when it comes to finding a new solution. Devious and shrewd, you'll get your way, even if its through someone elses moves"
        case .constantineXI: return "You're Constantine the XI. You may be broke, and you're home a mere shadow of its former glory. But with danger looming at the gates, you're not one to turn and run. Braver than any man, an inspiration to those who would follow, and loyal to your home. While not always sucessful; you're a dangerous opponent to underestimate as you won't give them an inch without a fight. Perhaps you won't succeed but you stand as hero for throughout the ages, unquestioned in their bravery"
        }
    }
    
}
