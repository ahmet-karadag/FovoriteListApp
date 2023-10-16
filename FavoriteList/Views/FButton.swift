//
//  FButton.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 16.10.2023.
//

import SwiftUI

struct FButton: View {
    let title: String
    let bacground: Color
    let action: ()->Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .foregroundStyle(bacground)
                Text(title)
                    .foregroundStyle(Color(.white))
                    .bold()
                   
            }
        })
       
    }
}

#Preview {
    FButton(title: "values", bacground: .green) {
        //action
    }
}
