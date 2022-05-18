//
//  ConfirmationViewController.swift
//  Booking
//
//  Created by Geoff on 17/5/22.
//

import UIKit

class ConfirmationViewController:
    UIViewController {
    
    @IBAction func MyReservation(_ sender: Any) {
        self.performSegue(withIdentifier: "goToReservation", sender: nil)
    }
    var people = ""
    var time = ""
    var seats = ""
    var name = ""
    var phone = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToReservation" {
            let VC = segue.destination as! ReservationViewController
            VC.name = name
            VC.people = people
            VC.time = time
            VC.seats = seats
            VC.phone = phone
            print(seats)
        }
    }



}

