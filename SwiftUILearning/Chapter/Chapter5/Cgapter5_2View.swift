//
//  Cgapter5_2View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Cgapter5_2View: View {
    @State var flg: Bool
    
    var body: some View {
        VStack {
            Toggle(isOn: $flg, label: {
                Text(flg ? "Hello, World!" : "こんにちは")
            })
            .fixedSize()
            .tint(.blue)
            if flg {
                Image(systemName: "heart.fill")
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 80))
            } else {
                Image(systemName: "heart.slash")
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 80))
            }
        }
    }
}

#Preview {
    Cgapter5_2View(flg: true)
}
