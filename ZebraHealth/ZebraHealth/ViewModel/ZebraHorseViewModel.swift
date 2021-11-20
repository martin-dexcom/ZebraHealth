//
//  ZebraHorseViewModel.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

class ZebraHorseViewModel: ObservableObject {
    @Published var chartData: [ChartData] = []
    @Published var mrHorse = UserProfile(username: "mrHorse123",
                                      displayName: "Mr. Butter Butterington",
                                      profilePicture: "horse",
                                      membershipType: .diamond)
    
    private init() {
        chartData.append(contentsOf: chartDataSet)
    }
    
    func addToChart(value: String) {
        let formatted = Date().getFormattedDate(format: "MMM d") // Set output format
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
