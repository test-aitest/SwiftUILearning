//
//  Chapter5_7View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_7View: View {
    @State var date = Date()
    var body: some View {
        VStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 20) {
                DatePicker(selection: $date, in: dateClosedRange, displayedComponents: .date) {
                    Text("日付：")
                }.fixedSize()
                    .environment(\.locale, Locale(identifier: "ja_JP"))
                DatePicker(selection: $date, in: dateClosedRange, displayedComponents: .hourAndMinute) {
                    Text("時刻：")
                }.fixedSize()
                    .environment(\.locale, Locale(identifier: "ja_JP"))
                    .frame(alignment: .leading)
            }.frame(width: 200)
            
            Text("(\(date.description(with: Locale(identifier: "ja_JP"))))")
        }
    }
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: +7, to: Date())!
        return min ... max
    }
}

#Preview {
    Chapter5_7View()
}
