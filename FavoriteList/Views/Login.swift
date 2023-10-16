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
                Header(title: "Favorite List", subtitle: "finished things", angle: 16, background: .green)
                //Login
                Form{
                    TextField("email",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    SecureField("password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    FButton(title: "Log in", bacground: .blue) {
                        //wil be done later
                    }.padding()
                    
                }
                .offset(y: -50)

                
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
