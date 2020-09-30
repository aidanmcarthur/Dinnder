//
//  ContentCard.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/29/20.
//
//  Content card displaying restaurant and map info

import SwiftUI

struct ContentCard: View {
    
    let restaurant: Restaurant
    let mapView: MapView
    
    // Constructor for content card
    init(restaurant: Restaurant, mapView: MapView){
        self.restaurant = restaurant
        self.mapView = mapView
        
    }
    
    var body: some View {
        
        VStack {
            // Map of restaurant location
            mapView
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
                
            
            // Restaurant information
            restaurant
                .offset(y:-130)
            
            Spacer()
        }
        
    }
}
