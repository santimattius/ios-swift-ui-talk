//
//  ImageView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("palta")
            .resizable()
            .edgesIgnoringSafeArea(.vertical)
//            .scaledToFill()
            .aspectRatio(contentMode: .fill)
//            .frame(width: 300)
            .clipped()
//            .clipShape(Circle())
//            .opacity(0.5)
            .overlay(
//                Image(systemName: "play.circle")
//                    .font(.system(size: 80))
//                    .foregroundColor(.red)
                Rectangle()
                    .scaledToFill()
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay(
                        Text("Coding with SwiftUI")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                            .lineSpacing(8)
                            .padding()
                    )
                
            )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
