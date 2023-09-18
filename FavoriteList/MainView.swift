//
//  ContentView.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 16.09.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
         NavigationView {
           Login()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
