//
//  Chapter2View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct Chapter2View: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello Japan")
            HStack {
                Text("Hello Hstack")
                    .font(.title)
                    .foregroundColor(Color.red)
                Text("Heelo")
                Image(systemName: "square.and.arrow.up.circle")
            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
        Text("春は曙やうや右翼白くなりゆく山ぎは少し明かりて、紫立ちたる雲の細くたなびきたる")
            .multilineTextAlignment(.trailing)
            .padding([.top, .trailing], 20.0)
            .padding(.trailing, 10)
            .background(.yellow)
            .frame(width: 200)
        Text("No").bold() + Text("123").font(.largeTitle).foregroundColor(.red)
        VStack(alignment: .leading, spacing: 20.0) {
            Text("aaaaaaaaaa")
            Text("bbbbbbbbbb")
            Text("cccccccccc")
            Text("dddddddddd")
        }
    }
}

#Preview {
    Chapter2View()
}
