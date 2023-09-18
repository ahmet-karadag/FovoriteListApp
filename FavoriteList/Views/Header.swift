//
//  Header.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 18.09.2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.green)
                .rotationEffect(Angle(degrees: 16))
            VStack{
                Text("Favorite List")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("finished things")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,30)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 300)
        .offset(y: -100)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
