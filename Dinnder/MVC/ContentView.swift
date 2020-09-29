//
//  ContentView.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/28/20.
//

import SwiftUI

struct ContentView: View {

    var curRestaurant = Restaurant(restaurantName:"Burger King", genre:"Fast Food", address:"2305 Broadway", location:(32.0, -116))
    
    var body: some View {

        VStack {
            // Map of current restaurant location
            MapView(restaurant: curRestaurant)
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            // Current restaurant information
            curRestaurant
                .offset(y:-130)
            
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
