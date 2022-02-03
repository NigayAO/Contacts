//
//  ListNames.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import SwiftUI

struct ListNames: View {
    let contacts: [Person]
    let title: String
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: DetailList(contact: contact)) {
                Text(contact.fullName)
            }
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
}

struct ListNames_Previews: PreviewProvider {
    static var previews: some View {
        ListNames(
            contacts: Person.getPersonArray(),
            title: "Contact List"
        )
    }
}
