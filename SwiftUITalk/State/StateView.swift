//
//  StateView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct StateView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlayView: View {
    var body: some View {
        Image(systemName: "play.circle.fill")
            .font(.system(size: 100))
            .foregroundColor(.blue)
    }
}

struct StopView: View {
    var body: some View {
        Image(systemName: "stop.circle.fill")
            .font(.system(size: 100))
            .foregroundColor(.red)
    }
}


struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StateView()
        }
    }
}
