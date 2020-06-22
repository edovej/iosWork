//
//  WeatherData.swift
//  Clima
//
//  Created by Edin Vejzagic on 30/5/20.
//  Copyright © 2020 VarApp . All rights reserved.
//

import Foundation


struct WeatherData: Codable{
    let name: String
    let main: Main
    let weather: [Weather]
    let wind: Wind
}

struct Main: Codable{
    let temp: Double
    
}

struct Weather: Codable {
    let description: String
    let id: Int
}

struct Wind: Codable{
    let speed: Double
}
