//
//  Weather.swift
//  WeatherAppMay
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/24.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weather = try? JSONDecoder().decode(Weather.self, from: jsonData)
//

import Foundation


// MARK: - Weather
struct Weather: Codable {
    let current: Current
    let hourly: [Current]
    let daily: [Daily]

   
}




