//
//  BasicAnimation.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct BasicAnimation: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 180, height: 180)
                .foregroundColor(.green)
                       
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(Color(.systemGray6))
                .scaleEffect(0.5)
            
        }
    }
}

struct BasicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BasicAnimation()
    }
}
