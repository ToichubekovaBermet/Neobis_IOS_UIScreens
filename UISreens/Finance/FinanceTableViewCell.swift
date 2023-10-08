//
//  FinanceTableViewCell.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit
import SnapKit

class FinanceTableViewCell: UITableViewCell {
    
    var color = UIColor()
    
    let image : UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 5
        
        return image
    }()
    
    let view : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22)
        
        return label
    }()
    
    let priceLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .boldSystemFont(ofSize: 18)
        
        return cLabel
    }()
    
    let labelInformation : UILabel = {
        let cLabel = UILabel()
        cLabel.textColor = .gray
        cLabel.font = .systemFont(ofSize: 16)
        
        return cLabel
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(view)
        view.addSubview(image)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(labelInformation)

        view.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        image.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
        nameLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.trailing).offset(10)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
        }
        labelInformation.snp.makeConstraints { make in
            make.top.equalTo(priceLabel.snp.bottom).offset(3)
            make.trailing.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
