//
//  ContentCard.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/29/20.
//
//  Content card displaying restaurant and map info


import SwiftUI


/**
 Card object containing all pages of a single card object
 */
struct ContentCard: View {
    
    
    let restaurant: Restaurant
    let mapView: MapView
    let group: GroupCard
    
    let mainCardView: MainCardView
    let cardContactView: CardContactView
    var views: (MainCardView, CardContactView)
    
    
    // Constructor for content card
    init(restaurant: Restaurant, mapView: MapView, group: GroupCard){
        self.restaurant = restaurant
        self.mapView = mapView
        self.group = group
        self.mainCardView = MainCardView(restaurant: self.restaurant)
        
        self.cardContactView = CardContactView(contactInfo: "(520)555-5555", hours: [["Sunday", "8:00am-8:00pm"], ["Monday", "8:00am-8:00pm"], ["Tuesday", "8:00am-8:00pm"], ["Wednesday", "8:00am-8:00pm"], ["Thursday", "8:00am-8:00pm"], ["Friday", "8:00am-8:00pm"], ["Saturday", "8:00am-8:00pm"]])
        
        views = (mainCardView, cardContactView)
    }
    
    
    /**
     Card object representing the main display page for a card
     */
    struct MainCardView: View{
        let restaurant: Restaurant
        
        init(restaurant: Restaurant){
            self.restaurant = restaurant
        }
        
        var body: some View{
            VStack {
                // Restaurant information/object
                restaurant

                Spacer()
            }
        }
        
        
    }
    
    /**
     Card object representing the contact display page for a card
     */
    struct CardContactView: View{
        
        let contactInfo: String
        var hours = [[String]]()
        
        init(contactInfo: String, hours: [[String]]){
            self.contactInfo = contactInfo
            self.hours = hours
        }
        
        var body: some View{
            VStack(){
                VStack(){
                    HStack(){
                        Text("Hours")
                            .font(.largeTitle)
                            .bold()
                            
                        Spacer()
                    }
                    
                    ForEach(hours, id: \.self) { hour in
                        HStack(){
                            Text(hour[0])
                            Spacer()
                            Text(hour[1])
                            
                        }

                    }
                    Spacer()
                }
                .padding()
                
                VStack(){
                    HStack(){
                        Text("Contact")
                            .font(.largeTitle)
                            .bold()
                            
                        Spacer()
                    }
                    
                    HStack(){
                        Text(contactInfo)
                        Spacer()
                    }
                    
                    HStack(){
                        Text("InsertWebsiteHere")
                        Spacer()
                    }
                }
                .padding()
                
                
            }
            
            

            
        }
        
        
    }
    
    
    var body: some View {
        
        cardContactView
        
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
