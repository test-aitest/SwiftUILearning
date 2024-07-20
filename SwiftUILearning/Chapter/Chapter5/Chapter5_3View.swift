//
//  Chapter5_3View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_3View: View {
    @State var price: Int
    @State var num: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("価格：\(price)")
            Stepper(value: $num, in: 0 ... 10) {
                Text("個数：\(num)")
            }.fixedSize()
            Text("お支払額：\(price * num)")
                .bold()
        }
    }
}

#Preview {
    Chapter5_3View(price: 240, num: 0)
}
