//
//  Travel.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 6/9/23.
//

import Foundation
import UIKit
import SnapKit

class Travel: BaseController {
    
    private lazy var labelTravel: UILabel = {
        var label = UILabel()
        label.text = "Путешествуйте"
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    private lazy var labelTraveling: UILabel = {
        var label = UILabel()
        label.text = "Почувствуйте прилив энергии"
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    private lazy var labelTraveling1: UILabel = {
        var label = UILabel()
        label.text = "Мы поможем вам исследовать, сравнить и забронировать впечатления - все в одном месте."
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var searchBar: UISearchBar = {
        let search = UISearchBar()
        search.text = "Куда хотите поехать?"
        search.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25)
        search.layer.cornerRadius = 3
        return search
    }()
    
    private lazy var imageAbuDhabi: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "AbuDhabi")
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = image.bounds
        gradientLayer.bounds = image.bounds.insetBy(dx: -0.5*image.bounds.size.width, dy: -0.5*image.bounds.size.height)
        gradientLayer.position = image.center
        gradientLayer.locations = [0.11, 0.35]
            gradientLayer.colors =
            [ UIColor(red: 0, green: 0, blue: 0, alpha: 0.49).cgColor,
              UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        image.layer.addSublayer(gradientLayer)
        
        return image
    }()
    private lazy var imageLabel : UILabel = {
        let label = UILabel()
        label.text = "ABU DHABI"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var imageSanAntonio: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "San Antonio")
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = image.bounds
        gradientLayer.bounds = image.bounds.insetBy(dx: -0.5*image.bounds.size.width, dy: -0.5*image.bounds.size.height)
        gradientLayer.position = image.center
        gradientLayer.locations = [0.11, 0.35]
            gradientLayer.colors =
            [ UIColor(red: 0, green: 0, blue: 0, alpha: 0.49).cgColor,
              UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        image.layer.addSublayer(gradientLayer)
        
        return image
    }()
    private lazy var imageLabelSanAntonio : UILabel = {
        let label = UILabel()
        label.text = "SAN ANTONIO"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var imageAbuDhabi1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "AbuDhabi")
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = image.bounds
        gradientLayer.bounds = image.bounds.insetBy(dx: -0.5*image.bounds.size.width, dy: -0.5*image.bounds.size.height)
        gradientLayer.position = image.center
        gradientLayer.locations = [0.11, 0.35]
            gradientLayer.colors =
            [ UIColor(red: 0, green: 0, blue: 0, alpha: 0.49).cgColor,
              UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        image.layer.addSublayer(gradientLayer)
        
        return image
    }()
    private lazy var imageLabel1 : UILabel = {
        let label = UILabel()
        label.text = "ABU DHABI"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    
    
    override func setupView() {
        view.addSubview(labelTravel)
        view.addSubview(labelTraveling)
        view.addSubview(labelTraveling1)
        view.addSubview(searchBar)
        view.addSubview(imageAbuDhabi)
        imageAbuDhabi.addSubview(imageLabel)
        view.addSubview(imageSanAntonio)
        imageSanAntonio.addSubview(imageLabelSanAntonio)
        view.addSubview(imageAbuDhabi1)
        imageAbuDhabi1.addSubview(imageLabel1)
    }
    override func setupConstraints() {
        labelTravel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.leading.equalToSuperview().offset(115)
            make.height.equalTo(34)
            make.width.equalTo(184)
        }
        labelTraveling.snp.makeConstraints { make in
            make.top.equalTo(labelTravel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(34)
            make.width.equalTo(430)
        }
        labelTraveling1.snp.makeConstraints { make in
            make.top.equalTo(labelTraveling.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(40)
            make.height.equalTo(60)
            make.width.equalTo(330)
        }
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(labelTraveling1.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
            make.width.equalTo(355)
        }
        imageAbuDhabi.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(230)
            make.width.equalTo(355)
        }
        imageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(40)
            make.width.equalTo(150)
            make.height.equalTo(33)
        }
        
        imageSanAntonio.snp.makeConstraints { make in
            make.top.equalTo(imageAbuDhabi.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(230)
            make.width.equalTo(355)
        }
        imageLabelSanAntonio.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(40)
            make.width.equalTo(150)
            make.height.equalTo(33)
        }
        imageAbuDhabi1.snp.makeConstraints { make in
            make.top.equalTo(imageSanAntonio.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(230)
            make.width.equalTo(355)
        }
        imageLabel1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(40)
            make.width.equalTo(150)
            make.height.equalTo(33)
        }
    }
}
