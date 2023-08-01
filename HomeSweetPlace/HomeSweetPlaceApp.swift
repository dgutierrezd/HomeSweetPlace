//
//  HomeSweetPlaceApp.swift
//  HomeSweetPlace
//
//  Created by Daniel Gutierrez on 23/07/23.
//

import SwiftUI

@main
struct HomeSweetPlaceApp: App {
    @State var isActive: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if self.isActive {
                    ContentView()
                } else {
                    SplashView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
