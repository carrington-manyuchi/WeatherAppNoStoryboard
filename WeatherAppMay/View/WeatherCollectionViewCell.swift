//
//  WeatherCollectionViewCell.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    static let identifier = "WeatherCollectionViewCell"
    
    private let iconImageView: UIImageView = {
       let iconImageView = UIImageView()
        iconImageView.image = UIImage(named: "sun")
        iconImageView.contentMode = .scaleToFill
        iconImageView.clipsToBounds = true
        return iconImageView
    }()
    
    private let tempLabel: UILabel = {
        let tempLabel = UILabel()
        tempLabel.textColor = .white
        tempLabel.font = .systemFont(ofSize: 23, weight: .bold)
        tempLabel.text = "7.5°"
        return tempLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(tempLabel)
        contentView.addSubview(iconImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView.frame = CGRect(x: 5, y: 5, width: (contentView.frame.size.width)/2, height: contentView.frame.size
                                        .height)
        tempLabel.frame = CGRect(x: 5, y: 10, width: contentView.frame.size.width, height: contentView.frame.size.height)
    }
    
    func configure(with model: Current) {
        self.tempLabel.text = "\(model.temp)"
        self.iconImageView.contentMode = .scaleAspectFit
       self.iconImageView.image = UIImage(named: "rain")
    }
    
    
  
}
