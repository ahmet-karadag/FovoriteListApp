//
//  Header.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 18.09.2023.
//

import SwiftUI

struct Header: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,80)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 350)
        .offset(y: -150)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "title", subtitle: "subtitle", angle: 16, background: .blue)
    }
}
