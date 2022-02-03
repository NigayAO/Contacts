//
//  Person.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import Foundation

struct Person: Identifiable {
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let email: String
    let image = "person.fill"
    let id: Int
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersonArray() -> [Person] {
        let firstNames = DataManager.shared.names.shuffled()
        let secondNames = DataManager.shared.surNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        var arrayOfPersons: [Person] = []
        
        for index in 0..<firstNames.count {
            arrayOfPersons.append(Person(
                firstName: firstNames[index],
                secondName: secondNames[index],
                phoneNumber: phones[index],
                email: emails[index],
                id: index
            ))
        }
        
        return arrayOfPersons
    }
}
