//
//  Register.swift
//  FavoriteList
//
//  Created by ahmet karadağ on 17.09.2023.
//

import SwiftUI

struct Register: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Header(title: "Register", subtitle: "register and make your list", angle: -16, background: .red)
            Form{
                TextField("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                
                FButton(title: "create an account", bacground: .green) {
                    //wil be done later / register
                }.padding()
            }
            .offset(y: -60 )
            Spacer()
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
