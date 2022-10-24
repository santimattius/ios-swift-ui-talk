//
//  StateObjectView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct StateObjectView: View {
    
    @State private var tapCount: Int = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)"){
            tapCount += 1
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
