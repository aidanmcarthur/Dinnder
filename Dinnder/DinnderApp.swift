//
//  DinnderApp.swift
//  Dinnder
//
//  Created by Aidan McArthur on 9/28/20.
//  Main app

import SwiftUI

@main
struct DinnderApp: App {
    var model: ContentModel
    let controller: ContentController
    
    init() {
        model = ContentModel()
        controller = ContentController()
    }
    var body: some Scene {
        WindowGroup {
            ContentView(model: self.model, controller: self.controller)
        }
    }
}
