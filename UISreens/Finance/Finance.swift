//
//  Finance.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit
import SnapKit

struct Finance {
    var image : String
    var nameLabel : String
    var priceLabel : String
    var labelInformation : String
}
 
class FinanceVC: BaseController, UITableViewDelegate {
    
    private lazy var labelFinance: UILabel = {
        let label = UILabel()
        label.text = "Баланс"
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    private lazy var labelMoney: UILabel = {
        let label = UILabel()
        label.text = "$1200.89"
        label.font = .systemFont(ofSize: 36)
        return label
    }()
    
    private lazy var time: UIDatePicker = {
        let date = UIDatePicker()
        return date
    }()
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .white
        table.layer.cornerRadius = 20
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    let finances = [
        Finance(image: "home_alt_fill", nameLabel: "Дом", priceLabel: "$321", labelInformation: "Продукты"),
        Finance(image: "tag", nameLabel: "Покупки", priceLabel: "$574", labelInformation: "Одежда"),
        Finance(image: "happy", nameLabel: "Транспорт", priceLabel: "$124", labelInformation: "Такси"),
        Finance(image: "heart_fill", nameLabel: "Здоровье", priceLabel: "$765", labelInformation: "Лечение"),
        Finance(image: "cookie", nameLabel: "Фитнес", priceLabel: "$324", labelInformation: "Тренировки"),
        Finance(image: "mail", nameLabel: "Счета", priceLabel: "$726", labelInformation: "Коммунальные"),
        Finance(image: "heart_fill", nameLabel: "Ресторан", priceLabel: "$325", labelInformation: "Ужин"),
        
    ]
    
    override func setupView() {
        view.backgroundColor = UIColor(red: 0.979, green: 0.979, blue: 0.979, alpha: 1)
        view.addSubview(labelFinance)
        view.addSubview(labelMoney)
        view.addSubview(time)
        view.addSubview(tableView)
        tableView.register(FinanceTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    override func setupConstraints() {
        
        labelFinance.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
            make.width.equalTo(60)
            make.height.equalTo(20)
        }
        labelMoney.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(labelFinance.snp.bottom).offset(5)
            make.width.equalTo(170)
            make.height.equalTo(44)
        }
        time.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(labelMoney.snp.bottom).offset(30)
            make.width.equalTo(170)
            make.height.equalTo(44)
        }
        tableView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(time.snp.bottom).offset(45)
            make.width.equalTo(375)
            make.height.equalTo(500)
        }
    }
}

extension FinanceVC: UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finances.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FinanceTableViewCell

        let finance = finances[indexPath.row]

        cell.nameLabel.text = finance.nameLabel
        cell.priceLabel.text = finance.priceLabel
        cell.labelInformation.text = finance.labelInformation
        cell.imageView?.image = UIImage(named: finance.image)
        
        switch indexPath.row {
        case 0:
            cell.view.backgroundColor = UIColor(red: 255/255, green: 195/255, blue: 40/255, alpha: 100)
        case 1:
            cell.view.backgroundColor = UIColor(red: 60/255, green: 0/255, blue: 158/255, alpha: 100)
        case 2:
            cell.view.backgroundColor = UIColor(red: 156/255, green: 199/255, blue: 65/255, alpha: 100)
        case 3:
            cell.view.backgroundColor = UIColor(red: 194/255, green: 65/255, blue: 204/255, alpha: 100)
        case 4:
            cell.view.backgroundColor = UIColor(red: 30/255, green: 134/255, blue: 255/255, alpha: 100)
        case 5:
            cell.view.backgroundColor = UIColor(red: 35/255, green: 192/255, blue: 227/255, alpha: 100)
        case 6:
            cell.view.backgroundColor = UIColor(red: 194/255, green: 65/255, blue: 204/255, alpha: 100)
        default:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        }
        
        return cell
    }
    
}
