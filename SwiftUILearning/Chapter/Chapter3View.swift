//
//  SwiftUIView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct Chapter3View: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!")
            Image(systemName: "person.badge.plus")
                .font(.system(size: 100))
                .symbolRenderingMode(.monochrome)
                .foregroundStyle(.red.gradient)
            Image(systemName: "person.badge.plus")
                .font(.system(size: 100))
                .symbolRenderingMode(.multicolor)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 25.0).fill(.blue.gradient))
            VStack(spacing: 10.0) {
                Image(systemName: "speaker.wave.3.fill", variableValue: 0.0).font(.system(size: 100))
                Image(systemName: "speaker.wave.3.fill", variableValue: 0.2).font(.system(size: 100))
                Image(systemName: "speaker.wave.3.fill", variableValue: 0.5).font(.system(size: 100))
                Image(systemName: "speaker.wave.3.fill", variableValue: 1.0).font(.system(size: 100))
            }
            .background(.red.gradient)
            .padding(10)
            Image("Card")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300.0)
            ZStack {
                Image("Card")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0, height: 200.0)
                    .scaleEffect(1.8)
                    .offset(x: 50, y: -10)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(color: .red,radius: 30)
                Text("Hello Zstack")
                    .font(.largeTitle)
                    .padding(15)
                    .position(x: 140.0, y: 40)
            }
        }
    }
}

#Preview {
    Chapter3View()
}
