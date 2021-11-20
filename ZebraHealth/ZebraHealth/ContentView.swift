//
//  ContentView.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProfileSection()
            BarChart(title: "Daily Activity", legend: "Trots", barColor: .yellow, data: chartDataSet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
