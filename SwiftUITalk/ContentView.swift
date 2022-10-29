//
//  ContentView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TalkLoading()
                .frame(width: 300,height: 300)
            Text("Welcome to SwiftUi Talk!")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.gray)
                .lineSpacing(8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
