//
//  ContentView.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/28/20.
//  Viewer for app function

import SwiftUI


struct ContentView: View {
    let model: ContentModel
    let controller: ContentController
    
    var curRestaurant = Restaurant(restaurantName: "mcdonalds", genre: "Fast Food", address: "1711 E Speedway Blvd", location: (32.236341, -110.946133), rating: 5.0)
    
    var nextRestaurant = Restaurant(restaurantName: "burgerking", genre: "Fast Food", address: "871 W Saint Marys Rd", location: (32.228837, -110.983324), rating: 5.0)
    
    var curGroup = GroupCard()
    
    var curCard: ContentCard?
    var nextCard: ContentCard?
    
    // Constructor for viewer in MVC
    init(model: ContentModel, controller: ContentController){
        self.model = model
        self.controller = controller
        
        
        // TOFIX: Temporary assignments NOT FOR PRODUCTION
        curCard = ContentCard(restaurant: curRestaurant, mapView: MapView(restaurant: curRestaurant), group: curGroup)
        nextCard = ContentCard(restaurant: nextRestaurant, mapView: MapView(restaurant: nextRestaurant), group: curGroup)
    }
    
    var body: some View {
        
        VStack(){
            curGroup
                
                
            // Stack of content cards for restaurants
            curCard
            
        }
        .offset(y:-40)
        
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        var model = ContentModel()
        var controller = ContentController()
        
        ContentView(model: model, controller: controller)
        
        
    }
}
