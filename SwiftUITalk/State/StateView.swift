//
//  StateView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct StateView: View {
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }){
            if isPlaying {
                StopView()
            } else {
                PlayView()
            }
        }
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
        StateView()
    }
}
