//
//  Restaurant.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/29/20.
//

import Foundation

import SwiftUI

struct Restaurant: View {
    let restaurantName: String
    let genre: String
    let location: String
    init(restaurantName:String, genre:String, location:String){
        self.restaurantName = restaurantName
        self.genre = genre
        self.location = location
    }
    
    var body: some View {
        Image(restaurantName).resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius:10)
        
            
        VStack(alignment: .leading) {
                       Text(restaurantName)
                           .font(.title)
                       HStack(alignment: .top) {
                           Text(genre)
                               .font(.subheadline)
                           Spacer()
                           Text(location)
                               .font(.subheadline)
                       }
                       .padding()
                   }
    }
    
    
    
    
    

}
