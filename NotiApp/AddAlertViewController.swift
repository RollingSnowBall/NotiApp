//
//  AddAlertViewController.swift
//  NotiApp
//
//  Created by JUNO on 2022/05/12.
//

import UIKit

class AddAlertViewController: UIViewController {
    
    var pickedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func tapDismissBtn(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true,completion: nil)
    }
    
    @IBAction func tapSaveBtn(_ sender: UIBarButtonItem) {
        pickedDate?(datePicker.date)
        self.dismiss(animated: true,completion: nil)
    }
    
}
