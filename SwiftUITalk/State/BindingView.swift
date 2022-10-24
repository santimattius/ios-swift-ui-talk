//
//  BindingView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct BindingView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PushButton: View {
    let title: String
    @State var isOn: Bool


    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .frame(width: 80,height: 80)
        .padding()
        .background(isOn ? .green : .red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .shadow(radius: isOn ? 0 : 5)
        
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BindingView()
            PushButton(title: "Hello", isOn: true)
        }
    }
}
