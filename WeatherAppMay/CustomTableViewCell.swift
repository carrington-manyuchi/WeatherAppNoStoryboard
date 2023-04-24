//
//  CustomTableViewCell.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

 // Every table view cell needs to be registered to the table
    
    static let identifier = "CustomTableViewCell"
    
    private let dayLabel: UILabel = {
        let dayLabel = UILabel()
         dayLabel.textColor = .white
         dayLabel.font = .systemFont(ofSize: 17, weight: .bold)
         dayLabel.text = "Day Label"
        return dayLabel
    }()
    
    
    private let myImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "sun")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let lowTempLabel: UILabel = {
        let lowTempLabel = UILabel()
        lowTempLabel.textColor = .white
        lowTempLabel.font = .systemFont(ofSize: 17, weight: .bold)
        lowTempLabel.text = "7.5°"
        return lowTempLabel
    }()
    
    private let highTempLabel: UILabel = {
        let highTempLabel = UILabel()
        highTempLabel.textColor = .white
        highTempLabel.font = .systemFont(ofSize: 17, weight: .bold)
        highTempLabel.text = "29.5°"
        return highTempLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(dayLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(lowTempLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize = contentView.frame.size.height-6
        let dayLabelSize = dayLabel.sizeThatFits(contentView.frame.size)
        
        dayLabel.frame = CGRect(x: 15 , y: (contentView.frame.size.height-dayLabelSize.height)/2, width: dayLabelSize.width, height: dayLabelSize.height)
        
        myImageView.frame = CGRect(x: 25+dayLabel.frame.size.width, y: 3, width: imageSize, height: imageSize)
        
        
        lowTempLabel.frame = CGRect(x: 35+dayLabel.frame.size.width+myImageView.frame.size.width, y: 3, width: contentView.frame.size.width-10-dayLabel.frame.size.width-imageSize, height: contentView.frame.size.height)
        
        
//        myImageView.frame = CGRect(x: 2+dayLabel.frame.size.width, y: 3, width: contentView.frame.size.width-10-dayLabel.frame.size.width-imageSize, height: contentView.frame.size.height)
//
//        lowTempLabel.frame = CGRect(x: contentView.frame.size.width-imageSize, y: 3, width: imageSize, height: imageSize)
        
    }
    

}
