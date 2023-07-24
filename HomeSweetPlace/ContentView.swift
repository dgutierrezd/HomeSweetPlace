//
//  ContentView.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 23/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 70).padding()
                Text("Home Sweet Place").font(.custom(
                    "Apple SD Gothic Neo", size: 18).weight(.ultraLight))
                Spacer()
                NavigationLink(destination: LoginView()) {
                    Text("Iniciar Sesión")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding().background(Color("primary"))
                        .cornerRadius(19)
                        .padding(.bottom, 30)
                }
                Button(action: {}) {
                    Text("Registrarme").fontWeight(.bold).foregroundColor(Color("secondary"))
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
