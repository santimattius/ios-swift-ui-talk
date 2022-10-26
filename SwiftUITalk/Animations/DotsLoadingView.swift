//
//  DotsLoadingView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct DotsLoadingView: View {
    @State private var isLoading = false
       
    var body: some View {
       HStack{
           ForEach(0...2, id: \.self){ index  in
               Circle()
                   .frame(width: 32, height: 32)
                   .foregroundColor(self.isLoading ? .white: .gray)
                   .scaleEffect(self.isLoading ? 0 : 1)
                   .animation(
                       Animation
                        .linear(duration:1)
                        .repeatForever()
                        .delay(Double(index)/3),
                       value: self.isLoading
                   )
               
           }
       }.onAppear {
           self.isLoading = true
       }
   }
}

struct DotsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DotsLoadingView()
    }
}
