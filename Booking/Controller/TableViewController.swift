//
//  TableViewController.swift
//  Booking
//
//  Created by Geoff on 17/5/22.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var number: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        number.text = String(Int(sender.value))
    }
    
    
    @IBOutlet weak var time: UITextField!
    let datePicker = UIDatePicker()
    
    var seats = "room"
    @IBAction func Seats(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            seats = "room"
            
        }
        else if sender.selectedSegmentIndex == 1 {
            seats = "Foyer"
        }
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToConfirmation", sender: nil)
    }
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    func createDatePicker() {
        time.textAlignment = .center
        //tool bar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //done button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        //assign tool bar to keyboard
        time.inputAccessoryView = toolbar
        //assign datepicker to textfield
        time.inputView = datePicker
        //date picker mode
        datePicker.datePickerMode = .dateAndTime
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        time.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToConfirmation" {
            let VC = segue.destination as! ConfirmationViewController
            VC.name = nameTextField.text!
            VC.people = number.text!
            VC.time = time.text!
            VC.seats = seats
            VC.phone = phoneTextField.text!
        }
    }


}

