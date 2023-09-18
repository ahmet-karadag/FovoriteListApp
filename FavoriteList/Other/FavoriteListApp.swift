//
//  FavoriteListApp.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 16.09.2023.
//

import SwiftUI
import FirebaseCore

@main
struct FavoriteListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
