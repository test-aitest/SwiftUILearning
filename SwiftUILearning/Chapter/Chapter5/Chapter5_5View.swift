//
//  Chapter5_5View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_5View: View {
    @State var vehicle: Int = 0
    let sysnameList = ["bicycle", "car", "tram"]
    var body: some View {
        List {
            Picker(selection: $vehicle, label: Text("乗り物")) {
                Text("自転車").tag(0)
                Text("車").tag(1)
                Text("電車").tag(2)
            }.pickerStyle(.inline)
        }
    }
}

#Preview {
    Chapter5_5View()
}
