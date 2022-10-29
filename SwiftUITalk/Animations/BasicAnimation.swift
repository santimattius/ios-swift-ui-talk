//
//  BasicAnimation.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct BasicAnimation: View {
    
    @State private var isPressed = false

    var body: some View {
        ZStack{
            Circle()
                .frame(width: 180, height: 180)
                .foregroundColor(isPressed ? Color(.systemGray4): .green)
                       
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(isPressed ?.green: Color(.systemGray6))
                .scaleEffect(isPressed ? 1.0: 0.5)
            
        }.onTapGesture {
            withAnimation(.easeInOut){
                self.isPressed.toggle()
            }
        }
    }
}

struct BasicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BasicAnimation()
    }
}
