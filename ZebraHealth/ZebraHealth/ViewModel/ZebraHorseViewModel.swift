//
//  ZebraHorseViewModel.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

class ZebraHorseViewModel: ObservableObject {
    @Published var chartData: [ChartData] = []
    
    private init() {
        chartData.append(contentsOf: chartDataSet)
    }
    
    func addToChart(value: String) {
        let formatted = Date().getFormattedDate(format: "MMM d") // Set output formate
        let newData = ChartData(label: Date().getFormattedDate(format: formatted), value: toInt(from: value))
        chartData.append(newData)
    }
    
    private func toInt(from string: String) -> Double {
        Double(Int(string) ?? 0)
    }
}


extension ZebraHorseViewModel {
    static let shared = ZebraHorseViewModel()
}
