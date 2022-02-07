//
//  ListNames.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import SwiftUI

struct ListNames: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailList(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ListNames_Previews: PreviewProvider {
    static var previews: some View {
        ListNames(
            contacts: Person.getPersonArray()
        )
    }
}
