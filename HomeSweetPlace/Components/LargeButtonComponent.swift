//
//  LargeButtonComponent.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 31/07/23.
//

import SwiftUI

struct LargeButtonComponent: View {
    
    var text: String
    var disabled: Bool = false
    
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(8).background(Color(disabled ? "disableButton" : "primary"))
            .cornerRadius(10)
            .disabled(disabled)
    }
}

struct LargeButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        LargeButtonComponent(text: "Test")
    }
}
