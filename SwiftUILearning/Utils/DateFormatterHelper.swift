//
//  DateFormatterHelper.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import Foundation

struct DateFormatterHelper {
    static func formattedCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        return dateFormatter.string(from: Date()).uppercased()
    }
}
