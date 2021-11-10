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
        let test = DataManager()
        var persons: [Person] = []
        
        let count = test.names.count
        
        for i in 0...count-1 {
            persons.append(Person(name: test.names[i],
                                  surname: test.surnames[i],
                                  email: test.emails[i],
                                  phoneNumber: test.phoneNumbers[i]))
        }
        
    return(persons)
        
    }
}

