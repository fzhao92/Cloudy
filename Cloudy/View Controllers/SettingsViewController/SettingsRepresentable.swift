//
//  SettingsRepresentable.swift
//  Cloudy
//
//  Created by Forrest Zhao on 6/4/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

protocol SettingsRepresentable {
    
    var text: String { get }
    
    var accessoryType: UITableViewCellAccessoryType { get }
    
}
