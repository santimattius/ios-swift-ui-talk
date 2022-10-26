//
//  BindingView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct BindingView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            PushButton(isOn: $isOn)
        }
    }
}

struct PushButton: View {
    
    @Binding var isOn: Bool

    var body: some View {
        Button(isOn ?  "Enable": "Disable") {
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
        }
    }
}
