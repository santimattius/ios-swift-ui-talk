//
//  TransitionView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct TransitionView: View {
       
    var body: some View {
        Card(text: "Book", color: .orange)
    }
}

struct Card: View{
    
    let text: String
    let color: Color
    
    var body: some View{
        RoundedRectangle(cornerRadius:12)
            .frame(width: 250, height: 250)
            .foregroundColor(self.color)
            .overlay{
                Text(self.text)
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
            }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransitionView()
            Card(text: "Book", color: .orange)
        }
    }
}
