//
//  LoginView.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 23/07/23.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var remember: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Iniciar Sesión").font(.system(size: 30).bold())
                    .padding(.bottom, 100)
                VStack {
                    Text("Correo electrónico").frame(maxWidth: .infinity, alignment: .leading)
                    TextField(
                            "Correo electrónico",
                            text: $username
                    ).padding(8)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .background(Color("backgroundInput"))
                        .cornerRadius(20)
                }
                VStack {
                    Text("Contraseña").frame(maxWidth: .infinity, alignment: .leading)
                    TextField(
                            "Contraseña",
                            text: $password
                    ).padding(8)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .background(Color("backgroundInput"))
                        .cornerRadius(20)
                }
                HStack {
                    HStack {
                        Image(systemName: remember ? "checkmark.square.fill" : "square")
                            .foregroundColor(remember ? Color(UIColor.systemBlue) : Color.secondary)
                            .onTapGesture {
                                        self.remember.toggle()
                                    }
                        Text("Recuérdame").font(.system(size: 14)).underline()
                    }
                    Spacer()
                    Text("Olvidaste la contraseña?").font(.system(size: 14)).underline()
                }
                Spacer()
                Text("Ingresar")
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(8).background(Color("primary"))
                    .cornerRadius(10)
                HStack {
                    Divider().frame(width: 100, height: 1).background(.black)
                    Spacer()
                    Text("O ingresa con").bold()
                    Spacer()
                    Divider().frame(width: 100, height: 1).background(.black)
                }
            }.padding()
        }
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("backButton")
                .resizable()
                .frame(width: 24, height: 30)
            }
        )
        .navigationBarBackButtonHidden(true)
        .background(Color("#FFFFFF"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
