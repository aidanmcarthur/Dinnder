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
    let address: String
    let location: (Double, Double)
    
    // Restaurant constructor
    init(restaurantName:String, genre:String, address:String, location:(Double, Double)){
        self.restaurantName = restaurantName
        self.genre = genre
        self.address = address
        self.location = location
    }
    
    var body: some View {
        
        //Restaurant image
        Image(restaurantName).resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius:10)
            .frame(width:200.0, height:200.0)
            .padding()
        
        // Restaurant Info
        VStack(alignment: .leading) {
            Text(restaurantName)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading, 15)
             
            HStack(alignment: .top) {
                Text(genre)
                    .font(.headline)
                Spacer()
                Text(address)
                    .font(.headline)
            }
            .padding(.leading, 15)
            .padding(.top, 10)
            .padding(.trailing, 15)
                       
        }
        
        
    }
    
    
    
    
    

}
