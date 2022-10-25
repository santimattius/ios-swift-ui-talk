//
//  MapView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 25/10/22.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let latitude: Double
    let longitude: Double
    
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(
            latitude: self.latitude,
            longitude: self.longitude
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 2,
            longitudeDelta: 2
        )
        
        let  region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(latitude: -34.9100222, longitude: -56.1678687)
    }
}
