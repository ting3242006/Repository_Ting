//
//  ViewController.swift
//  Log-in & Sign-up Page
//
//  Created by Ting on 2022/4/7.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var logInSegmentControl: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    //改變segment顏色
    func changeSegmentedColor(){
        logInSegmentControl.selectedSegmentTintColor = .black
        logInSegmentControl.layer.backgroundColor = UIColor.white.cgColor
        logInSegmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
        logInSegmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeSegmentedColor()
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        
        // Log in 狀態的顏色變化
        if sender.selectedSegmentIndex == 0 {
            changeSegmentedColor()
            checkTextField.isUserInteractionEnabled = false
            checkTextField.backgroundColor = .gray
            checkLabel.textColor = .lightGray
        } else {
            // Sign Up 狀態的顏色變化
            changeSegmentedColor()
            checkTextField.isUserInteractionEnabled = true
            checkTextField.backgroundColor = .white
            checkLabel.textColor = .black
        }
    }
    
    //按下button的反應
    @IBAction func resultButton(_ sender: UIButton) {
        
        let accountText = accountTextField.text!
        let passwordText = passwordTextField.text!
        let checkText = checkTextField.text!
        
        if logInSegmentControl.selectedSegmentIndex == 0 {
            if accountTextField.text == "appworks_school@gmail.com" &&
            passwordTextField.text == "1234" {
                showAlert(title: "Log In", message: "Success!")
            } else if accountText.isEmpty == true {
                showAlert(title: "Error", message: "Account should not be empty.")
            } else if passwordText.isEmpty == true {
                showAlert(title: "Error", message: "Password should not be empty.")
            } else { showAlert(title: "Error", message: "Login fail") }
        }
        
        if logInSegmentControl.selectedSegmentIndex == 1 {
            if accountTextField.text == "appworks_school@gmail.com" &&
            passwordTextField.text == "1234" &&
                checkTextField.text == "1234" {
                showAlert(title: "Sign In", message: "Success!")
            } else if accountText.isEmpty == true {
                showAlert(title: "Error", message: "Account should not be empty.")
            } else if passwordText.isEmpty == true {
                showAlert(title: "Error", message: "Password should not be empty.")
            } else if checkText.isEmpty == true &&
                checkTextField.backgroundColor == .white {
                showAlert(title: "Error", message: "Check Password should not be empty.")
            } else { showAlert(title: "Error", message: "Signup fail") }
        }
    }
}
