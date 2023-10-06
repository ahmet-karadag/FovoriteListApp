//
//  Login.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 17.09.2023.
//

import SwiftUI

struct Login: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack {
                //header
                 Header()
                //Login
                Form{
                    TextField("email",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        //make log in
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color(.blue))
                            Text("Log in")
                                .foregroundStyle(Color(.white))
                                .bold()
                               
                        }
                    }).padding()
                }

                
                //account
                VStack {
                    Text("new around here")
                   NavigationLink("create an account", destination: Register())
                }.padding(.bottom,45)
                Spacer()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
