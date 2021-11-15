//
//  Crypto.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import Foundation


struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto{
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 55000),
        Crypto(name: "Ethirium", ticker: "ETH", value: 3500),
        Crypto(name: "Ripple", ticker: "Xrp", value: 589),
        Crypto(name: "Stellar", ticker: "XLM", value: 20),
        Crypto(name: "Algorand", ticker: "ALGO", value: 3)
    ]
}
