//
//  Presenter.swift
//  viperCrypto
//
//  Created by Osman Esad on 5.01.2023.
//

import Foundation

protocol AnyPresenter {
    var router : AnyRouter? {get set}
    var interactor : AnyInteractor? {get set}
    var view : AnyView? {get set}
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>)
    
}

class CryptoPresenter : AnyPresenter {
    
    
   
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let cryptos):
            print("Update")
        case .failure(let error):
            print("Error")
            
        }
    }
    
    
}
