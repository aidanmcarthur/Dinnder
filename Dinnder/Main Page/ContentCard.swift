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
    let group: GroupCard
    
    // Constructor for content card
    init(restaurant: Restaurant, mapView: MapView, group: GroupCard){
        self.restaurant = restaurant
        self.mapView = mapView
        self.group = group
        
    }
    
    var body: some View {
        
        VStack {
            
            // Group card at top
            
            // Restaurant information/object
            restaurant
                
                
            Spacer()
        }
        
        
        .frame(minWidth: UIScreen.main.bounds.width * 0.95, idealWidth: UIScreen.main.bounds.width * 0.95, maxWidth: UIScreen.main.bounds.width * 0.95, minHeight: UIScreen.main.bounds.height * 0.40, idealHeight: UIScreen.main.bounds.height * 0.7, maxHeight: UIScreen.main.bounds.height * 0.7, alignment: .bottom)
        
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius:10)
        
        
        
        
        
        
        
    }
    
    
}

struct ContentCard_Previews: PreviewProvider {
    static var previews: some View {
        var curRestaurant = Restaurant(restaurantName: "mcdonalds", genre: "Fast Food", address: "1711 E Speedway Blvd", location: (32.236341, -110.946133), rating: 3.96777)
        
        var nextRestaurant = Restaurant(restaurantName: "burgerking", genre: "Fast Food", address: "871 W Saint Marys Rd", location: (32.228837, -110.983324), rating: 5.0)
        
        var group = GroupCard()
        ContentCard(restaurant: curRestaurant, mapView: MapView(restaurant: curRestaurant), group: group)
    }
}
