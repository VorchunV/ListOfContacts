//
//  ContactsViewController.swift
//  ListOfContacts
//
//  Created by Варвара Фомина on 10.11.2021.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    
    private let contact = Person.getContactList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        let person = contact[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath =  tableView.indexPathForSelectedRow else { return }
        let person = contact[indexPath.row]
        detailVC.person = person
        
    }
    
    
}
