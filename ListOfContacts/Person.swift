//
//  Person.swift
//  ListOfContacts
//
//  Created by Варвара Фомина on 10.11.2021.
//

struct Persons {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
}
