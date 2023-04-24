//
//  Daily.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import Foundation

// MARK: - Daily
struct Daily: Codable {
    let dt: Int
    let temp: Temp
    let weather: [WeatherElement]
}
