//
//  StateObjectView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published var tapCount: Int = 0
    
    func increment(){
        tapCount += 1
    }
}

struct StateObjectView: View {
    
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        Button("Tap count: \(viewModel.tapCount)"){
            viewModel.increment()
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
