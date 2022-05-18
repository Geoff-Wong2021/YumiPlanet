//
//  ReservationController.swift
//  Booking
//
//  Created by Geoff on 17/5/22.
//


import UIKit

class ReservationViewController: UIViewController {
    var people = ""
    var time = ""
    var seats = ""
    var name = ""
    var phone = ""


    @IBOutlet weak var peopleLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var seatsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBAction func homeButton(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleLabel.text = people
        timeLabel.text = time
        seatsLabel.text = seats
        nameLabel.text = name
        phoneLabel.text = phone
        
    }


}
