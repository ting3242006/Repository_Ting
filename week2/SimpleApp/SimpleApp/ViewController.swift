//
//  ViewController.swift
//  SimpleApp
//
//  Created by Ting on 2022/4/3.
//

import UIKit

class ViewController: UIViewController {

    //
    let backgroundColor = BackgroundColor()
    let funFact = FunFacts()
   
    @IBOutlet weak var changeTextLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changePage() {
        let randomColor = backgroundColor.randomColor()
        let randomText = funFact.randomText()
        view.backgroundColor = randomColor
        changeButton.tintColor = randomColor
        changeTextLabel.text = randomText
        
    }
    
}

