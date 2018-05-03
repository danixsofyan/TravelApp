//
//  SignupViewController.swift
//  TravelApp
//
//  Created by danixsofyan on 02/05/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var bg: UIImageView!
    @IBAction func dismisButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bg.image = image
    }

}
