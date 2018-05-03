//
//  LoginViewController.swift
//  TravelApp
//
//  Created by danixsofyan on 02/05/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var image: UIImage?
    @IBOutlet weak var bg: UIImageView!
    
    
    @IBAction func loginButtonTaped(_ sender: UIButton) {
        login()
    }
    
    @IBAction func facebookButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func dismisButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bg.image = image
    }
    
    //MARK: Function
    func login() {
        view.endEditing(true)
        guard
            let email = usernameTextField.text, email == "danixsofyan",
            let password = passwordTextField.text, password == "a"
            else{
                let alert = UIAlertController(title: "Error", message: "Invalid email or password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
                return
        }
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        appDelegate.showHomeViewController()
//        let vc = storyboard?.instantiateViewController(withIdentifier: "home") as! HomeViewController
//        navigationController?.pushViewController(vc, animated: true)
    }

}
