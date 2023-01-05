//
//  Interactor.swift
//  viperCrypto
//
//  Created by Osman Esad on 5.01.2023.
//

import Foundation

protocol AnyInteractor {
    var presenter: AnyPresenter? {get set}
    
    func downloadCryptos()
    
}

class CryptoInteractor : AnyInteractor {
    var presenter: AnyPresenter?
    
    func downloadCryptos() {
        <#code#>
    }
    
}
