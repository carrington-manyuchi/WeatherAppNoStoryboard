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
    
    private let _switch: UISwitch = {
        let _switch = UISwitch()
        _switch.onTintColor = .blue
        _switch.isOn = true
        return _switch
    
    }()
    
    private let myImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "sun")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Custom Cell"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(_switch)
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize = contentView.frame.size.height-6
        
        
        _switch.frame = CGRect(x: 5 , y: 5, width: 100, height: contentView.frame.size.height-10)
        
        myLabel.frame = CGRect(x: 10+_switch.frame.size.width, y: 0, width: contentView.frame.size.width-10-_switch.frame.size.width-imageSize, height: contentView.frame.size.height)
        
        myImageView.frame = CGRect(x: contentView.frame.size.width-imageSize, y: 3, width: imageSize, height: imageSize)
    }
    

}
