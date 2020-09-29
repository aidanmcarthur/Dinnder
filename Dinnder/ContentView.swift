//
//  ContentView.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            Restaurant(restaurantName:"Burger King", genre:"Fast Food", location:"2305 Broadway")
                .frame(width:200.0, height:200.0)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            .padding()
            
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
