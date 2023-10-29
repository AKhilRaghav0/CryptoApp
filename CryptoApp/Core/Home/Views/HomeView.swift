//
//  HomeView.swift
//  CryptoApp
//
//  Created by Akhil on 29/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    
    var body: some View {
        ZStack {
            
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //content layer
            
            VStack{
                
                HStack{
                    CircleButtonView(iconName: showp)
                    Spacer()
                    Text("Live Prices")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.theme.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()){
                                showPortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)
                
                
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
