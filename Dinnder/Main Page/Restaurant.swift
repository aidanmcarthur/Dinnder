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
    let rating: Float
    
    // Restaurant constructor
    init(restaurantName:String, genre:String, address:String, location:(Double, Double), rating:Float){
        self.restaurantName = restaurantName
        self.genre = genre
        self.address = address
        self.location = location
        self.rating = rating
    }
    
    var body: some View {
        
        VStack(){
            //Restaurant image
            Image("mcdonaldsfood").resizable()
                .frame(height: UIScreen.main.bounds.height * 0.6)
                .aspectRatio(contentMode: .fill)
            
            
            // Restaurant Info
            VStack(alignment: .leading) {
                Text(restaurantName)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 15)
                
                VStack(){
                    HStack(alignment: .top) {
                        Text(genre)
                            .font(.headline)
                        Spacer()
                        Text(String(format: "Rating: %.2f / 5.00", rating))
                            .font(.headline)
                            
                        
                    }
                    Spacer()
                    Spacer()
                    HStack(alignment:.top){
                        Text(address)
                            .font(.headline)
                       
                        Spacer()
                        Text("")
                        
                    }
                    
                        
                    
                        
                }
                
                .padding(.leading, 15)
                .padding(.top, 10)
                .padding(.trailing, 15)
                           
            }
            .offset(y:-20)
            
        }
        
        
    }
    
    
    
    
    

}
