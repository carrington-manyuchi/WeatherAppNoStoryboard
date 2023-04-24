//
//  WeatherTableViewCell.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    // Every table view cell needs to be registered to the table
       
       static let identifier = "WeatherTableViewCell"
       
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
           imageView.clipsToBounds = true
           return imageView
       }()
       
       private let dayLabel: UILabel = {
           let dayLabel = UILabel()
            dayLabel.textColor = .white
            dayLabel.font = .systemFont(ofSize: 17, weight: .bold)
            dayLabel.text = "Custom Cell"
           return dayLabel
       }()

}
