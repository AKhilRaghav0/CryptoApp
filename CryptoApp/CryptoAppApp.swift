//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Akhil on 29/10/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
     
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
