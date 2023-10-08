//
//  CryptoVc.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit
import SnapKit

class CryptoVc: BaseController {
    
    let cryptos = [
        Crypto(image: "bitcoin-logo", nameLabel: "Bitcoin", percentLabel: "+1,6%", priceLabel: "$29,850.15", cryptoPriceLabel: "2.73 BTC"),
        Crypto(image: "ethereum-logo", nameLabel: "Ethereum", percentLabel: "-0,2%", priceLabel: "$10,561.24", cryptoPriceLabel: "47.61 ETH"),
        Crypto(image: "Vector", nameLabel: "Litecoin", percentLabel: "-2,10%", priceLabel: "$3,676.76", cryptoPriceLabel: "39,27 LTC"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        
    ]
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "gearshape"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        button.tintColor = UIColor(red: 185/255, green: 193/255, blue: 217/255, alpha: 1)
        return button
    }()
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .white
        table.layer.cornerRadius = 20
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    override func setupView() {
        view.addSubview(button)
        view.addSubview(tableView)
        tableView.register(CryptoTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func setupConstraints() {
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.leading.equalTo(view.snp.trailing).offset(-50)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        tableView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(200)
            make.width.equalTo(400)
            make.height.equalTo(500)
        }
    }
}

struct Crypto {
    var image : String
    var nameLabel : String
    var percentLabel : String
    var priceLabel : String
    var cryptoPriceLabel : String
}

extension CryptoVc: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CryptoTableViewCell
        let crypto = cryptos[indexPath.row]
        cell.image.image = UIImage(named: crypto.image)
        cell.nameLabel.text = crypto.nameLabel
        cell.priceLabel.text = crypto.priceLabel
        cell.percentLabel.text = crypto.percentLabel
        cell.cryptoPriceLabel.text = crypto.cryptoPriceLabel
        
        switch indexPath.row {
        case 0:
            cell.view.backgroundColor = UIColor(red: 254/255, green: 237/255, blue: 236/255, alpha: 100)
        case 1:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 241/255, blue: 249/255, alpha: 100)
        case 2:
            cell.view.backgroundColor = UIColor(red: 234/255, green: 252/255, blue: 246/255, alpha: 100)
        case 3:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        case 4:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        default:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        }
        return cell
    }
}
