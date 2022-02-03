//
//  ContactList.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    let title: String
    
    var body: some View {
        List(contacts) { contact in
            Section(contact.fullName) {
                Text(contact.phoneNumber)
                Text(contact.email)
            }
        }
        .navigationTitle(title)
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(
            contacts: Person.getPersonArray(),
            title: "Contact List"
        )
    }
}
