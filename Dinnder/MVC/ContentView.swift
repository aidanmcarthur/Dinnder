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
    
    var curCard: ContentCard?
    var nextCard: ContentCard?
    
    // Constructor for viewer in MVC
    init(model: ContentModel, controller: ContentController){
        self.model = model
        self.controller = controller
        
        // TOFIX: Temporary assignments NOT FOR PRODUCTION
        curCard = nil
        nextCard = nil
    }
    
    var body: some View {
        
        // Stack of content cards for restaurants
        ZStack(){
            curCard
            nextCard
        }
            
    }
}

