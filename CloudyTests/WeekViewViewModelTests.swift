//
//  WeekViewViewModelTests.swift
//  Cloudy
//
//  Created by Forrest Zhao on 6/6/17.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import XCTest
@testable import Cloudy

class WeekViewViewModelTests: XCTestCase {
    
    var viewModel: WeekViewViewModel!
    
    override func setUp() {
        super.setUp()
        
        let data = loadStubFromBundle(withName: "forecast", extension: "json")
        let weatherData: WeatherData = try! JSONDecoder.decode(data: data)
        
        viewModel = WeekViewViewModel(weatherData: weatherData.dailyData)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfSections() {
        XCTAssertEqual(viewModel.numberOfSections, 1)
    }
    
    func testNumberOfDays() {
        XCTAssertEqual(viewModel.numberOfDays, 8)
    }
    
    func testViewModelForIndex() {
        let weatherDayViewViewModel = viewModel.viewModel(for: 5)
        
        XCTAssertEqual(weatherDayViewViewModel.day, "Monday")
        XCTAssertEqual(weatherDayViewViewModel.date, "October 10")
    }
    
}
