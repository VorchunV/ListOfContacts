//
//  OpenContactsViewController.swift
//  ListOfContacts
//
//  Created by Варвара Фомина on 10.11.2021.
//

import UIKit


class OpenContactsViewController: UITableViewController {
    
    private let contact = Person.getContactList()
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
         contact.count
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        let person = contact[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(named: "phoneNumber")
        } else {
            content.text = person.email
            content.image = UIImage(named: "email")
        }
        cell.contentConfiguration = content
     
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView,titleForHeaderInSection section: Int) -> String? {
        return contact[section].fullName
    }
    
    
    
    
    
    
    
    
    
    
}
