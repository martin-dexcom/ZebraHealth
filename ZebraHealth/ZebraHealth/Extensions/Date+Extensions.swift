//
//  Date+Extensions.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import Foundation

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
