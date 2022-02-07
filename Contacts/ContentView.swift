//
//  ContentView.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getPersonArray()
    private let title = "Contact List"
    
    var body: some View {
        TabView {
            ListNames(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
