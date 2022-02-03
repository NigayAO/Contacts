//
//  DetailList.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import SwiftUI

struct DetailList: View {
    let contact: Person
    
    var body: some View {
        List {
            ImageView(image: contact.image)
            rowView(image: "phone", text: contact.phoneNumber)
            rowView(image: "tray", text: contact.email)
        }
        .listStyle(.grouped)
        .navigationTitle(contact.fullName)
    }
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        DetailList(contact: Person.getPersonArray()[0])
    }
}

struct rowView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
                .fontWeight(.medium)
        }
    }
}

struct ImageView: View {
    let image: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: image)
                .resizable()
                .frame(width: 100, height: 100)
            .padding()
            Spacer()
        }
    }
}
