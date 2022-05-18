//
//  NameViewController.swift
//  Booking
//
//  Created by Geoff on 17/5/22.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var NameText: UITextField!
    
   
    @IBAction func loginButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToBooking", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBooking" {
            let VC = segue.destination as! BookingViewController
            VC.name = NameText.text!
        }
    }


}
