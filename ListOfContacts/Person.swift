//
//  Person.swift
//  ListOfContacts
//
//  Created by Варвара Фомина on 10.11.2021.
//

import Foundation

struct Person {
    
    var name: String
    var surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {
    
    static func getContactList() -> [Person] {
        let person = DataManager()
        var persons: [Person] = []
        
        let count = person.names.count
        for index in 0...count-1 {
            persons.append(Person(name: person.names[index],
                                  surname: person.surnames[index],
                                  email: person.emails[index],
                                  phoneNumber: person.phoneNumbers[index]))
        }

    return(persons)
        
    }
}

