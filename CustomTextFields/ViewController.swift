//
//  ViewController.swift
//  CustomTextFields
//
//  Created by Gurjap on 2022-04-14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: CustomTextFields!
    @IBOutlet weak var passwordTextField: CustomTextFields!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        print("login button is tapped")
    }
    
}

