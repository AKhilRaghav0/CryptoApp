import Foundation


// CoinGeko Coin Info
/*
 
 
 URI: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en

 
 JSON Response:
 
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 34339,
     "market_cap": 669235927353,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 719707359424,
     "total_volume": 7108542216,
     "high_24h": 34347,
     "low_24h": 33950,
     "price_change_24h": 197.67,
     "price_change_percentage_24h": 0.57897,
     "market_cap_change_24h": 1636807397,
     "market_cap_change_percentage_24h": 0.24518,
     "circulating_supply": 19527318,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -50.38298,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 50421.25768,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-10-29T12:13:20.134Z",
     "sparkline_in_7d": {
       "price": [
         29937.507106612047,
         29908.980915511478,
         
       ]
     },
     "price_change_percentage_24h_in_currency": 0.578972425834702
   }
 
 */


struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let CurrentHoldings: Double?
    
    
    enum Codingkeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case atl
        case altDate = "alt_date"
        case lastUpdated = "last_updated"
        case PriceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case CurrentHoldings
        
    }
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: ath, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, CurrentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (CurrentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
