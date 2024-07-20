//
//  Chapter5_1View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_1View: View {
    @State var num: Int
    @State var msg: String
    @State var flg: Bool
    var body: some View {
        HStack {
            VStack {
                Text(msg)
                Button(String(num), action: {
                    let pushNum = Int.random(in: 0 ... 1)
                    num = pushNum
                    hello()
                })
                .font(.title)
                .buttonStyle(.bordered)
                .tint(.pink)
                .buttonBorderShape(.capsule)
            }
            VStack {
                Button(action: {flg.toggle()}, label: {
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .overlay(Text("apple"))
                        .foregroundColor(.pink)
                })
                Text(flg ? "アップル" : "Apple")
            }
        }
    }
    func hello() {
        msg = num == 0 ? "こんにちは" : "Hello"
    }
}

#Preview {
    Chapter5_1View(num: 0, msg: "Hello", flg: true)
}
