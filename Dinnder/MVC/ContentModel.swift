//
//  ContentModel.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/29/20.
//  Model for app function

import Foundation
import SwiftUI


struct ContentModel {
    // List of content cards to display
    var contentCards = [ContentCard]()
    
    // Add new restaurant and map info as a content card
    mutating func addCard(restaurant: Restaurant){
        
        let newRestaurant: Restaurant = restaurant
        let newMapView: MapView = MapView(restaurant: newRestaurant)
        var curGroup = GroupCard()
        let newCard: ContentCard = ContentCard(restaurant: newRestaurant, mapView: newMapView, group: curGroup)
        
        contentCards.append(newCard)
        
    }
    
    
}
