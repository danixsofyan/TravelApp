//
//  ViewController.swift
//  TravelApp
//
//  Created by danixsofyan on 30/04/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var Judul: UILabel!
    @IBOutlet weak var SJudul: UILabel!
    @IBOutlet weak var BackgroundSplash: UIImageView!
    
    //MARK: Actions
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "login") as! LoginViewController
        vc.modalTransitionStyle = .crossDissolve
        vc.image = UIImage.imageWithView(view: view)
        navigationController?.present(vc, animated: true)
    }
    
    @IBAction func SignupButtonTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "signup") as! SignupViewController
        vc.modalTransitionStyle = .crossDissolve
        vc.image = UIImage.imageWithView(view: view)
        navigationController?.present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        BackgroundSplash.image = UIImage(named: "Bg")
//        Judul.textColor = UIColor.white
//        SJudul.textColor = UIColor.white
    }

}

    //MARK: Extensions
    //Convert UIview to UIImage
    extension UIImage {
        class func imageWithView(view: UIView) -> UIImage? {
            UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
            view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
            let img = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return img
        }
    }

