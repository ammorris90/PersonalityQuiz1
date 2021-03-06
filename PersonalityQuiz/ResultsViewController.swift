//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Andrew Morris on 3/2/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefinition: UILabel!
    
    var responses: [Answer]!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
calculatePersonalityResult()
        // Do any additional setup after loading the view.
    navigationItem.hidesBackButton = true
    }
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [emperorType:Int] = [:]
        let responseTypes = responses.map { $0.emperor }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultLabel.text = "\(mostCommonAnswer.rawValue)"
        resultDefinition.text = mostCommonAnswer.emperorDescription
    }

  /*  func calculatePersonalityResult() {
        var frequencyOfAnswers: [emperorType : Int] = [:]
        let responseTypes = responses.map {$0.emperor}
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
       let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) -> Bool in return pair1.value > pair2.value }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
   resultLabel.text = "You are \(mostCommonAnswer.rawValue)"
        resultDefinition.text = mostCommonAnswer.emperorDescription
    } */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
