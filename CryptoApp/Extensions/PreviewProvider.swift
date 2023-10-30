   

import Foundation
import SwiftUI


extension PreviewProvider {
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance 
    }
     
}

class DeveloperPreview {
    
    static let instance  = DeveloperPreview()
    init() {}
    
    let HomeVM = HomeViewModel()
    
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        currentPrice: 34339,
        marketCap: 669235927353,
        marketCapRank: 1,
        fullyDilutedValuation: 719707359424,
        totalVolume: 7108542216,
        high24H: 34345,
        low24H: 33950,
        priceChange24H: 197.67,
        priceChangePercentage24H: 0.57,
        marketCapChange24H: 83293,
        marketCapChangePercentage24H: 8932,
        circulatingSupply: 389322,
        totalSupply: 83298,
        maxSupply: 7329,
        ath: 78372,
        athChangePercentage: -50.32,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 50421.25768,
        atlDate: "2013-07-06T00:00:00:00Z",
        lastUpdated: "2023-10-29T12:13:20.134Z",
        sparklineIn7D: SparklineIn7D(price: [2994.30, 320392489, 932093
        ]), 
        priceChangePercentage24HInCurrency: 0.57, CurrentHoldings: 1.5)
}
let newInstance = DeveloperPreview()
