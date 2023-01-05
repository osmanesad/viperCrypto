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
    
    var presenter: AnyPresenter?
    var cryptos : [Crypto] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cryptos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
   
    
    private var tableView: UITableView {
        let table = UITableView()
        table.register(UITableView.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }
    
    private let messageLabel : UILabel = {
        let label = UILabel()
        label.isHidden = false
        label.text = "Yükleniyor" // Loading Data...
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        view.addSubview(messageLabel)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds // Ekran boyutu kadar
        messageLabel.frame = CGRect(x: view.frame.width / 2 - 100, y: view.frame.height / 2 - 25, width: 200, height: 50)
        
    }
    
    func update(with cryptos: [Crypto]) {
        DispatchQueue.main.async {
            self.cryptos = cryptos
            self.messageLabel.isHidden = true
            self.tableView.reloadData()
            self.tableView.isHidden = false
        }
    }
    
    func update (with error: String) {
        
    }
}

