//
//  HomeView.swift
//  CryptoApp
//
//  Created by Akhil on 29/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //content layer
            
            VStack{
                
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
