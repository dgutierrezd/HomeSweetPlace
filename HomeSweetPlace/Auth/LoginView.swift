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
    @State private var showPassword: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    Text("Iniciar Sesión").font(.system(size: 30).bold()).padding(.bottom, 30).foregroundColor(.black)
                    Spacer()
                    VStack {
                        Text("Correo electrónico").frame(maxWidth: .infinity, alignment: .leading).padding(.bottom, 10).foregroundColor(.black)
                        InputComponent(placeholder: "Correo electrónico", errorText: "Correo electrónico incorrecto", text: $username, email: true)
                    }.padding(.bottom, 25)
                    VStack {
                        Text("Contraseña").frame(maxWidth: .infinity, alignment: .leading).padding(.bottom, 10)
                            .foregroundColor(.black)
                        ZStack(alignment: .trailing) {
                            Group {
                                InputComponent(placeholder: "Contraseña", errorText: "Contraseña incorrecta",text: $password, password: !showPassword)
                                Button(action: {
                                    showPassword.toggle()
                                }) {
                                    Image(systemName: self.showPassword ? "eye.slash" : "eye")
                                        .accentColor(.gray)
                                }.padding(.trailing, 8)
                            }
                        }
                    }
                    HStack {
                        HStack {
                            Image(systemName: remember ? "checkmark.square.fill" : "square")
                                .foregroundColor(remember ? Color("secondary") : Color.secondary)
                                .onTapGesture {
                                            self.remember.toggle()
                                        }
                            Text("Recuérdame").font(.system(size: 14)).underline().foregroundColor(.black)
                        }
                        Spacer()
                        Text("Olvidaste la contraseña?").font(.system(size: 14)).underline().foregroundColor(.black)
                    }.padding(.top, 30)
                    Spacer()
                    LargeButtonComponent(text: "Ingresar", disabled: username.isEmpty || password.isEmpty).padding(.top, 50)
                    HStack {
                        Divider().frame(width: 100, height: 1).background(.black)
                        Spacer()
                        Text("O ingresa con").bold().foregroundColor(.black)
                        Spacer()
                        Divider().frame(width: 100, height: 1).background(.black)
                    }.padding(.top, 40)
                    HStack {
                        Button(action: {}, label: {
                            Image("google").resizable().aspectRatio(contentMode: .fit).frame(width: 18)
                        })
                        .frame(width: 80, height: 40)
                        .background(Color("secondary"))
                        .cornerRadius(10)
                        Spacer()
                        Button(action: {}, label: {
                            Image("apple").resizable().aspectRatio(contentMode: .fit).frame(width: 18)
                        })
                        .frame(width: 80, height: 40)
                        .background(Color("secondary"))
                        .cornerRadius(10)
                        Spacer()
                        Button(action: {}, label: {
                            Image("facebook").resizable().aspectRatio(contentMode: .fit).frame(width: 11)
                        })
                        .frame(width: 80, height: 40)
                        .background(Color("secondary"))
                        .cornerRadius(10)
                    }.padding(.bottom, 46).padding(.top, 60)
                    HStack {
                        Text("No tienes cuenta?").foregroundColor(.black)
                        Text("¡Registrate!").foregroundColor(Color("primary"))
                    }
                }.padding().ignoresSafeArea(.keyboard).scrollDismissesKeyboard(.interactively)
            }
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
