//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Akhil on 30/10/23.
//

import Foundation

class HomeViewModel: ObservableObject{

    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    
     
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins .append(DeveloperPreview.instance.coin)
        }
        
        
    }
}
