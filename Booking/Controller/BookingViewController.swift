//
//  BookingViewController.swift
//  Booking
//
//  Created by Geoff on 17/5/22.
//

import UIKit

class BookingViewController: UIViewController {

    
    @IBAction func bookNowButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToTable", sender: nil)
    }
    var name: String = ""
    @IBAction func User(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToUser", sender: nil)
    }
    @IBAction func homeButton(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTotable" {
            let VC = segue.destination as! TableViewController
            VC.name = name
        }
    }


}
