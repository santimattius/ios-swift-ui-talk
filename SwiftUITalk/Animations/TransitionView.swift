//
//  TransitionView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct TransitionView: View {
    
    @State private var showTranslation = false
    
    var body: some View {
        VStack {
            Card(text: "Book", color: .black)
            
            if showTranslation {
                Card(text: "Libro", color: .yellow)
                //                    .transition(
                //                        .asymmetric(
                //                            insertion: .scale,
                //                            removal: .opacity
                //                        )
                //                    )
                    .transition(.offsetScaledOpacityOut)
            }
        }.onTapGesture {
            withAnimation(Animation.spring()){
                self.showTranslation.toggle()
            }
        }
    }
}

extension AnyTransition {
    
    static var offsetScaledOpacityOut:AnyTransition{
        .offset(x: 0, y: 700)
        .combined(with: .scale)
        .combined(with: .opacity)
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
