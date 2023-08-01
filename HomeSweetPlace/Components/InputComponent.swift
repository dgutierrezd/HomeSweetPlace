//
//  InputComponent.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 31/07/23.
//

import SwiftUI

struct InputComponent: View {
    
    var placeholder: String
    var error: Bool = false
    var errorText: String = ""
    @Binding var text: String
    var password: Bool = false
    var email: Bool = false
    
    var body: some View {
        VStack {
            if password{
                SecureField(
                    placeholder,
                    text: $text
                )
                .padding(8)
                .textInputAutocapitalization(.never)
                .background(Color("backgroundInput"))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(error ? "error" : "gray"), lineWidth: 1))
                .autocorrectionDisabled(true)
            } else {
                TextField(
                        placeholder,
                        text: $text
                )
                .padding(8)
                .textInputAutocapitalization(.never)
                .background(Color("backgroundInput"))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(error ? "error" : "gray"), lineWidth: 1))
                .keyboardType(email ? .emailAddress : .default)
                .autocorrectionDisabled(true)
            }
            if error {
                HStack {
                    Text(errorText).foregroundColor(Color("error"))
                    Spacer()
                }
            }
            
        }
    }
}

struct InputComponent_Previews: PreviewProvider {
    @State static var inputText: String = ""
    
    static var previews: some View {
        InputComponent(placeholder: "Type...", text: $inputText)
    }
}
