//
//  MapView.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/28/20.
//

import SwiftUI

import MapKit

struct MapView: UIViewRepresentable {
    let restaurant: Restaurant
    
    // Get restaurant object
    init (restaurant: Restaurant){
        self.restaurant = restaurant
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        // Get latitude and longitude from restaurant object
        let coordinate = CLLocationCoordinate2D(latitude: restaurant.location.0, longitude: restaurant.location.1)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}
