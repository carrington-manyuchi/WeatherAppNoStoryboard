//
//  Current.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import Foundation


// MARK: - Current
struct Current: Codable {
    let dt: Int
    let temp: Double
    let weather: [WeatherElement]
}
