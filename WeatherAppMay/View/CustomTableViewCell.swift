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
         dayLabel.font = .systemFont(ofSize: 20, weight: .bold)
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
        lowTempLabel.font = .systemFont(ofSize: 23, weight: .bold)
        lowTempLabel.text = "7.5°"
        return lowTempLabel
    }()
    
    private let highTempLabel: UILabel = {
        let highTempLabel = UILabel()
        highTempLabel.textColor = .white
        highTempLabel.font = .systemFont(ofSize: 23, weight: .bold)
        highTempLabel.text = "29.5°"
        return highTempLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(dayLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(lowTempLabel)
        contentView.addSubview(highTempLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize = contentView.frame.size.height-6
        let dayLabelSize = dayLabel.sizeThatFits(contentView.frame.size)
        let lowTempLabelSize = lowTempLabel.sizeThatFits(contentView.frame.size)
        let highTempLabelSize = highTempLabel.sizeThatFits(contentView.frame.size)
        
        dayLabel.frame = CGRect(x: 15 , y: (contentView.frame.size.height-dayLabelSize.height)/2, width: 140, height: dayLabelSize.height)
        
        myImageView.frame = CGRect(x: 30+dayLabel.frame.size.width, y: 3, width: imageSize, height: imageSize)
        
        
        lowTempLabel.frame = CGRect(x: 45+dayLabel.frame.size.width+myImageView.frame.size.width, y: (contentView.frame.size.height-lowTempLabelSize.height)/2, width: lowTempLabelSize.width, height: lowTempLabelSize.height)
        
        highTempLabel.frame = CGRect(x: 30+dayLabel.frame.size.width+myImageView.frame.size.width+lowTempLabel.frame.size.width, y: (contentView.frame.size.height-highTempLabelSize.height)/2, width: contentView.frame.size.width-45-dayLabel.frame.size.width-imageSize, height: highTempLabelSize.height)
        
        
    }
    
    func configure(with model: Daily){
        
        self.highTempLabel.textAlignment = .center
        self.lowTempLabel.textAlignment = .center
        
        
        self.lowTempLabel.text = "\(Int(model.temp.min))°"
        self.highTempLabel.text = "\(Int(model.temp.max))°"
        self.dayLabel.text =  getDayForDate(Date(timeIntervalSince1970: Double(model.dt)))
        self.imageView!.image = UIImage(named: "cloud")
        self.imageView!.contentMode = .scaleAspectFit
 
    }
    
    func getDayForDate(_ date: Date?) -> String {
        guard let inputDate = date else {
            return ""
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: inputDate)
    }
    

}
