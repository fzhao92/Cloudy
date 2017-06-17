//
//  DayViewViewModelTest.swift
//  Cloudy
//
//  Created by Forrest Zhao on 6/6/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import XCTest
@testable import Cloudy

class DayViewViewModelTest: XCTestCase {
    
    var viewModel: DayViewViewModel!
    
    override func setUp() {
        super.setUp()
        
        let data = loadStubFromBundle(withName: "forecast", extension: "json")
        let weatherData: WeatherData = try! JSONDecoder.decode(data: data)
        
        viewModel = DayViewViewModel(weatherData: weatherData)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDate() {
        XCTAssertEqual(viewModel.date, "Thu October 6")
    }
    
    func testTime_TwelveHour() {
        let timeNotation: TimeNotation = .twelveHour
        UserDefaults.standard.set(timeNotation.rawValue, forKey: UserDefaultsKeys.timeNotation)
        
        XCTAssertEqual(viewModel.time, "11:32 AM")
    }
    
    func testTime_TwentyFourHour() {
        let timeNotation: TimeNotation = .twelveHour
        UserDefaults.standard.set(timeNotation.rawValue, forKey: UserDefaultsKeys.timeNotation)
        
        XCTAssertEqual(viewModel.time, "11:32 AM")
    }
    
    
    
}
