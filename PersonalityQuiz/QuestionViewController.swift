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
    @IBOutlet weak var SingleStackview: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
  
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
     @IBOutlet weak var multiLabel3: UILabel!
     @IBOutlet weak var multiLabel4: UILabel!

    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    
    
    @IBOutlet weak var rangeStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangeSlider: UISlider!
    
    
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    //an array that stores answers
    var chosenAnswers: [Answer] = []
    
    //questions
    var questionIndex = 0
   var questions: [Question] = [
       Question(text:"You’ve just been anointed as emperor what do you do?", type: .single,
                answer:[
            Answer(text: "Start building the biggest temple", emperor: .justinian),
            Answer(text: "Go to war with your neighbors", emperor: .basil),
            Answer(text: "Reorganize the power structure", emperor: .komnenos),
            Answer(text: "Just try not to die", emperor: .constantineXI)
                        ]),
        Question(text: "Nuts, you’re out of money, how do you make more?", type: .single,
                 answer: [
            Answer(text: "Revamping the whole dang tax code", emperor: .justinian),
            Answer(text: "Start busting the super-rich to make them pay their fair share", emperor: .basil),
            Answer(text: "Make trade deals with your neighbors", emperor: .komnenos),
            Answer(text: "We never had any to begin with, damn it", emperor: .constantineXI),
                    ]),
        Question(text: "pick one or more options for your empire goals", type: .multiple,
                 answer: [
            Answer(text: "Expansion", emperor: .basil),
            Answer(text: "Protection", emperor: .constantineXI),
            Answer(text: "Building", emperor: .justinian),
            Answer(text: "Creating lines of nobility", emperor: .komnenos),
                        ]),
        Question(text: "How much time do you spend expanding your empire?", type: .range,
                 answer: [
            Answer(text: "None", emperor: .constantineXI),
            Answer(text: "If I get my neighbors to get it for me", emperor: .komnenos),
            Answer(text: "It's part of my restoration effort", emperor: .justinian),
            Answer(text: "ALL OF IT", emperor: .basil)
                        ]),
        Question(text: "what is the best line of defense?", type: .single,
                 answer: [
            Answer(text: "Politics and diplomacy", emperor: .komnenos),
            Answer(text: "An unstoppable army", emperor: .basil),
            Answer(text: "Money and Generals", emperor: .justinian),
            Answer(text: "The Walls and Chains of Constantinople", emperor: .constantineXI)
                        ]),
        Question(text: "Whats the most important to you?", type: .single,
                 answer: [
            Answer(text: "Revenge", emperor: .basil),
            Answer(text: "Glory", emperor: .justinian),
            Answer(text: "Strategy", emperor: .komnenos),
            Answer(text: "Heritage", emperor: .constantineXI)
                        ]),
        Question(text: "How worried are you that your neighbors will destroy you?", type: .range,
                 answer: [
            Answer(text: "not at all", emperor: .basil),
            Answer(text: "I gotta keep an eye out", emperor: .justinian),
            Answer(text: "I have to turn them against each other to keep us safe", emperor: .komnenos),
            Answer(text: "Entirely", emperor: .constantineXI)
                        ]),
        Question(text: "Pick a word to describe you", type: .single,
                 answer: [
            Answer(text: "Cunning", emperor: .komnenos),
            Answer(text: "Brutal", emperor: .basil),
            Answer(text: "Dynamic", emperor: .justinian),
            Answer(text: "Courageous", emperor: .constantineXI)
                    ])
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        SingleStackview.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswer = currentQuestion.answer
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1) "
        questionLabel.text = currentQuestion.text
        progressBar.setProgress(totalProgress, animated: true)
        
   
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswer)
        case .multiple:
            updateMultipleStack(using: currentAnswer)
        case .range:
            updateRangeStack(using: currentAnswer)
            
        }
    }
    func updateSingleStack(using answers: [Answer]) {
        SingleStackview.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangeStack(using answers: [Answer]) {
        rangeStackView.isHidden = false
        rangeSlider.setValue(0.5, animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }

    
    //connecting single stack to one control
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answer
        switch sender {
    case singleButton1:
        chosenAnswers.append(currentAnswers[0])
    case singleButton2:
        chosenAnswers.append(currentAnswers[1])
    case singleButton3:
        chosenAnswers.append(currentAnswers[2])
    case singleButton4:
            chosenAnswers.append(currentAnswers[3])
    default:
            break
    }
        nextQuestion()
    }
    
   
    @IBAction func mulitAnswerButtonPressed() {
        let currentAnswer = questions[questionIndex].answer
        
        if multiSwitch1.isOn {
            chosenAnswers.append(currentAnswer[0])
        }
        if multiSwitch2.isOn{
            chosenAnswers.append(currentAnswer[1])
        }
        if multiSwitch3.isOn {
            chosenAnswers.append(currentAnswer[2])
        }
        if multiSwitch4.isOn {
            chosenAnswers.append(currentAnswer[3])
        }
        
        nextQuestion()
    }
   /* @IBAction func multiAnswerButtonPressed() {
   let currentAnswer = questions[questionIndex].answer
        
        if multiSwitchToggle1.isOn {
            chosenAnswers.append(currentAnswer[0])
        }
        if multiSwitchToggle2.isOn {
            chosenAnswers.append(currentAnswer[1])
        }
        if multiSwitchToggle3.isOn {
            chosenAnswers.append(currentAnswer[2])
        }
        if multiSwitchToggle4.isOn {
            chosenAnswers.append(currentAnswer[3])
        }
        nextQuestion()
    } */
    
    
    @IBAction func sliderAnswerButtonPressed() {
    let currentAnswer = questions[questionIndex].answer
    let index = Int(round(rangeSlider.value * Float(currentAnswer.count - 1)))
        chosenAnswers.append(currentAnswer[index])
        nextQuestion()
    }
    
    
    
    // next question func
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        }
        else {
            performSegue(withIdentifier: "resultsSegue", sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = chosenAnswers
        }
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
