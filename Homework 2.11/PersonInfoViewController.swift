//
//  ViewController.swift
//  Homework 2.11
//
//  Created by Ivan on 29.10.2024.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
        
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        eMailLabel.text = "Email: \(person.eMail)"
    }
}
