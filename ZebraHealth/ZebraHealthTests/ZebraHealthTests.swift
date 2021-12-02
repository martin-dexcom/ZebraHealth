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

    func testWhenIAddMoreDataToBarChartThenDataGetsNormalized() {
        var dataset: [ChartData] = [
            ChartData(label: "Dec 2021", value: 500),
            ChartData(label: "Dec 2022", value: 500), // 1
        ]
        let barchart = BarChart(title: "Debug", legend: "This is a demonstration implementation", barColor: .green, data: dataset)
        // Los datos que ya existen dentro del bar chart los pueda normalizar.
        let normalizedData = barchart.normalizedValue(index: 1)
        XCTAssertEqual(normalizedData, 1.0)
    }

}
