//
//  WeatherDayRepresentable.swift
//  Cloudy
//
//  Created by Forrest Zhao on 6/4/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

protocol WeatherDayRepresentable {
    
    var day: String { get }
    var date: String { get }
    var image: UIImage? { get }
    var windSpeed: String { get }
    var temperature: String { get }
    
}
