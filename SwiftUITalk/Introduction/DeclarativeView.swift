//
//  DeclarativeView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct DeclarativeView: View {
    var persons: [Person] = [
        Person(name: "Swift"),
        Person(name: "Kotlin")
    ]
    var body: some View {
        List(persons) { person in
            Text(person.name)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

struct DeclarativeView_Previews: PreviewProvider {
    static var previews: some View {
        DeclarativeView()
    }
}
