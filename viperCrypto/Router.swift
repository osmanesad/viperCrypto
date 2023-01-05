//
//  Router.swift
//  viperCrypto
//
//  Created by Osman Esad on 5.01.2023.
//

import Foundation

protocol AnyRouter {
    static func startExecution() -> AnyRouter
}

class CryptoRouter: AnyRouter {
    
    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        return router
        
    }
    
    
}
