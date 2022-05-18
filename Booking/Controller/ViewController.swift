//
//  ViewController.swift
//  Booking
//
//  Created by Geoff on 18/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func LoginButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToLogin", sender: nil)
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToLogin", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
}
