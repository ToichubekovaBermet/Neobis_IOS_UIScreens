//
//  WeatherVc.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit
import SnapKit

class WeatherVc: BaseController {
    
    private lazy var  sunImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 675-2")
        return image
    }()
    
    private lazy var  infoView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        view.layer.borderColor = UIColor(red: 196/255, green: 222/255, blue: 238/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.9
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    private lazy var  locationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame")
        
        return image
    }()
    
    private lazy var  arrowImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "opt")
        
        return image
    }()
    
    private lazy var  cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Бишкек"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  notificationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame-2")
        
        return image
    }()
    
    private lazy var  dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Сегодня, 19 Август"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  tempLabel: UILabel = {
        let label = UILabel()
        label.text = " 27°"
        label.font = .systemFont(ofSize: 70)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        return label
    }()
    
    private lazy var  clarityLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  middleSlash1: UILabel = {
        let label = UILabel()
        label.text = "|"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        return label
    }()
    
    private lazy var  middleSlash2: UILabel = {
        let label = UILabel()
        label.text = "|"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  windLabel: UILabel = {
        let label = UILabel()
        label.text = "Ветер "
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  windImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ветер")
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 2, height: 2)
        image.layer.shadowRadius = 7
        image.layer.shadowOpacity = 0.3
        
        return image
    }()
    
    private lazy var  windSpeed: UILabel = {
        let label = UILabel()
        label.text = "15 km/h"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  rainLabel: UILabel = {
        let label = UILabel()
        label.text = "Дождь"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  rainDropImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Дождь")
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 2, height: 2)
        image.layer.shadowRadius = 7
        image.layer.shadowOpacity = 0.3
        
        return image
    }()
    
    private lazy var  rainPercentage: UILabel = {
        let label = UILabel()
        label.text = "26%"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.shadowRadius = 7
        label.layer.shadowOpacity = 0.3
        
        return label
    }()
    
    private lazy var  arrowUpImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
        
        return image
    }()
    
    private lazy var  weekInfoViewButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.2
        button.setTitle("Прогноз на неделю ", for: .normal)
        button.tintColor = UIColor(red: 68/255, green: 78/255, blue: 114/255, alpha: 1)
        button.addTarget(self, action: #selector(weekInfoButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    override func setupView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1.0).cgColor,
            UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1.0).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        view.addSubview(sunImage)
        view.addSubview(infoView)
        view.addSubview(locationImage)
        view.addSubview(cityLabel)
        view.addSubview(arrowImage)
        view.addSubview(notificationImage)
        infoView.addSubview(dateLabel)
        infoView.addSubview(tempLabel)
        infoView.addSubview(clarityLabel)
        infoView.addSubview(middleSlash1)
        infoView.addSubview(middleSlash2)
        infoView.addSubview(windLabel)
        infoView.addSubview(windImage)
        infoView.addSubview(windSpeed)
        infoView.addSubview(rainLabel)
        infoView.addSubview(rainDropImage)
        infoView.addSubview(rainPercentage)
        view.addSubview(weekInfoViewButton)
    }
    
    override func setupConstraints() {
        sunImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.width.equalTo(200)
            make.height.equalTo(200)
        }
        infoView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(sunImage.snp.bottom).offset(30)
            make.width.equalTo(350)
            make.height.equalTo(300)
        }
        locationImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        
        cityLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(62)
            make.leading.equalTo(locationImage.snp.trailing).offset(6)
            make.width.equalTo(100)
            make.height.equalTo(37)
        }
        arrowImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalTo(cityLabel.snp.trailing).offset(10)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        notificationImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.trailing.equalToSuperview().offset(-50)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(15)
            make.height.equalTo(30)
            make.width.equalTo(172)
        }
        tempLabel.snp.makeConstraints {make in
            make.centerX.equalToSuperview()
            make.top.equalTo(dateLabel.snp.bottom).offset(10)
            make.width.equalTo(125)
            make.height.equalTo(130)
        }
        clarityLabel.snp.makeConstraints {make in
            make.centerX.equalToSuperview()
            make.top.equalTo(tempLabel.snp.bottom).offset(10)
            make.width.equalTo(125)
            make.height.equalTo(37)
        }
        windImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.leading.equalToSuperview().offset(70)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        windLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.leading.equalTo(windImage.snp.trailing).offset(10)
            make.height.equalTo(28)
            make.width.equalTo(52)
        }
        middleSlash1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.leading.equalTo(windLabel.snp.trailing).offset(10)
            make.height.equalTo(28)
            make.width.equalTo(3)
        }
        windSpeed.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.leading.equalTo(middleSlash1.snp.trailing).offset(10)
            make.height.equalTo(28)
            make.width.equalTo(66)
        }
        weekInfoViewButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(infoView.snp.bottom).offset(30)
            make.height.equalTo(64)
            make.width.equalTo(250)
        }
        
    }
}

extension WeatherVc {
    @objc func weekInfoButtonPressed() {
        let vc = WeatherWeekVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
    
