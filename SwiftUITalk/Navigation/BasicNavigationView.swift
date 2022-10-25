//
//  BasicNavigationView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import SwiftUI

struct BasicNavigationView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Second View")) {
                Text("Hello, World!")
            }
            .navigationTitle("Navigation")
        }
    }
}

struct BasicNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BasicNavigationView()
    }
}
