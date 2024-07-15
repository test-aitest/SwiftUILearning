//
//  SwiftUIView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct Chapter3View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
    }
}

#Preview {
    Chapter3View()
}
