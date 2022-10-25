//
//  BasicsListView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 25/10/22.
//

import SwiftUI

struct Restaurant: Identifiable {
    let id: UUID = UUID()
    let name: String
}

struct BasicsListView: View {
    
    let restaurants = [
        Restaurant(name: "Venecia"),
        Restaurant(name: "Alberto's"),
        Restaurant(name: "Ruby"),
    ]
    
    var body: some View {
        List(restaurants){ restaurant in
            Text("Come and eat at \(restaurant.name)")
        }
    }
}

struct BasicsListView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsListView()
    }
}
