//
//  View.swift
//  viperCrypto
//
//  Created by Osman Esad on 5.01.2023.
//

import Foundation
import UIKit

protocol AnyView {
    
    var presenter : AnyPresenter? {get set}
    
    func update(with cryptos: [Crypto])
    func update(with error: String)
    
}

class CryptoViewController : UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    var presenter: AnyPresenter?
    
    private let tableView: UITableView {
        let table = UITableView()
        table.register(UITableView.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        <#code#>
    }
    
    func update(with cryptos: [Crypto]) {
        
    }
    
    func update (with error: String) {
        
    }
}

