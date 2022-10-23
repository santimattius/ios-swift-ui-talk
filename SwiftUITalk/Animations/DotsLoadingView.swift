//
//  DotsLoadingView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct DotsLoadingView: View {
    var body: some View {
        Circle()
            .frame(width: 32, height: 32)
            .foregroundColor(.gray)
    }
}

struct DotsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DotsLoadingView()
    }
}
