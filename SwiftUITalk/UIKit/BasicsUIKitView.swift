//
//  BasicsUIKitView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 25/10/22.
//

import SwiftUI

struct BasicsUIKitView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: MapView(
                    latitude: -34.9100222,
                    longitude: -56.1678687
                )
            ) {
                Text("Open Map")
            }
            .navigationTitle("Using MapKit")
        }
    }
}

struct BasicsUIKitView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsUIKitView()
    }
}
