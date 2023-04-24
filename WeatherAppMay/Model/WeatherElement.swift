//
//  WeatherElement.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//

import Foundation


// MARK: - WeatherElement
struct WeatherElement: Codable {
    let main: Main
}


enum Main: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
}
