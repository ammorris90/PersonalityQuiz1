//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Andrew Morris on 3/2/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "StartQuiz", sender: nil)
    }
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue) {
        
    }
}

