//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Andrew Morris on 3/2/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    //outlets

    
    var questionIndex = 0
    var questions: [Question] = [
        Question(text:"You’ve just been anointed as emperor what do you do?", type: .single, answer:[
            Answer(text: "Start building EVERYTHING", emperor: .justinian),
            Answer(text: "Go to war with your neighbors", emperor: .basil),
            Answer(text: "Reorganize the power structure", emperor: .komnenos),
            Answer(text: "Just try not to die", emperor: .constantineXI)
            ]),
        Question(text: "Nuts, you’re out of money, how do you make more?", type: .single, answer: [
            Answer(text: "Revamping the whole dang tax code", emperor: .justinian),
            Answer(text: "Start busting the super-rich who to make them pay their fair share", emperor: .basil),
             Answer(text: "Make trade deals with your neighbors", emperor: .komnenos),
              Answer(text: "We never had any to begin with, damn it", emperor: .constantineXI),
            ]),
        Question(text: "pick one or more options for your empire goals?", type: .multiple, answer: [
            Answer(text: "Expansion", emperor: .basil),
            Answer(text: "Protection", emperor: .constantineXI),
            Answer(text: "Building", emperor: .justinian),
            Answer(text: "Creating lines of nobility", emperor: .komnenos),
            ]),
        Question(text: "How much time do spend expanding your empire?", type: .range, answer: [
            Answer(text: "I can barely hold a city", emperor: .constantineXI),
            Answer(text: "If I get my neighbors to get it for me", emperor: .komnenos),
            Answer(text: "It part of my restoration effort", emperor: .justinian),
            Answer(text: "I live on the battefront", emperor: .basil)
            ]),
        Question(text: "what’s best line of defense?", type: .single, answer: [
            Answer(text: "Shrewd politics", emperor: .komnenos),
            Answer(text: "An unstoppable army", emperor: .basil),
            Answer(text: "Money and Belasarius", emperor: .justinian),
            Answer(text: "The Walls and Chains of Constantinople", emperor: .constantineXI)
            ]),
        Question(text: "Whats the most important to you?", type: .single, answer: [
            Answer(text: "Revenge", emperor: .basil),
            Answer(text: "Glory", emperor: .justinian),
            Answer(text: "Strategy", emperor: .komnenos),
            Answer(text: "Heritage", emperor: .constantineXI)
            ]),
        Question(text: "How worried your neighbors will destroy you?", type: .range, answer: [
            Answer(text: "They don't have a chance", emperor: .basil),
            Answer(text: "I gotta keep an eye out", emperor: .justinian),
            Answer(text: "I have to turn them against each other to keep us safe?", emperor: .komnenos),
            Answer(text: "It'll happen any day now", emperor: .constantineXI)
            ]),
        Question(text: "Pick a word to describe you?", type: .single, answer: [
            Answer(text: "Cunning", emperor: .komnenos),
            Answer(text: "Brutal", emperor: .basil),
            Answer(text: "Dynamic", emperor: .justinian),
            Answer(text: "Courageous", emperor: .constantineXI)
            ])
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
