//
//  BarChartCell.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct BarChartCell: View {
    var height: Double
    var barColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5.0)
            .fill(barColor)
            .scaleEffect(CGSize(width: 1.0, height: height), anchor: .bottom)
    }
}

struct BarChartCell_Previews: PreviewProvider {
    static var previews: some View {
        BarChartCell(height: 100, barColor: .blue)
    }
}
