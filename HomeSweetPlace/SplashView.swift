//
//  SplashView.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 24/07/23.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        VStack {
            Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 70).padding()
            Text("Home Sweet Place").font(.custom(
                "Apple SD Gothic Neo", size: 18).weight(.ultraLight))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
