//
//  DetailViewController.swift
//  ListOfContacts
//
//  Created by Варвара Фомина on 10.11.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var navigationName: UINavigationItem!
    @IBOutlet var phoneNameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNameLabel.text = person.phoneNumber
        emailLabel.text = person.email
        navigationName.title = person.fullName
        
    }


   

}
