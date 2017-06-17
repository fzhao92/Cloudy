
//
//  File.swift
//  Cloudy
//
//  Created by Forrest Zhao on 6/6/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import XCTest
import Foundation

extension XCTestCase {
    
    func loadStubFromBundle(withName name: String, extension: String) -> Data {
        let bundle = Bundle(for: classForCoder)
        let url = bundle.url(forResource: name, withExtension: `extension`)
        
        return try! Data(contentsOf: url!)
    }
}
