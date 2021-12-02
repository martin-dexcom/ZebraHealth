//
//  ZebraHealthTests.swift
//  ZebraHealthTests
//
//  Created by mxg0820 on 11/19/21.
//

import XCTest
@testable import ZebraHealth

class ZebraHealthTests: XCTestCase {
    
    // Arrange
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testWhenMaxValueAddedThenBarChartGetsNormalizedValue() {
        // Arrange
        let dataset: [ChartData] = [
            ChartData(label: "Nov 2021", value: 10),
            ChartData(label: "Dec 2021", value: 15)
        ]
        // Act
        let barchart = BarChart(title: "Test", legend: "An amazingly debug chart", barColor: .green, data: dataset)
        let normalizedValue = barchart.normalizedValue(index: 1)
        // Assert
        XCTAssertEqual(normalizedValue, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
