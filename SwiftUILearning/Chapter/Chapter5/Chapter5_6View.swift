//
//  Chapter5_6View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_6View: View {
    @State private var selectedColor: Int = 0
    let colorView: [Color] = [.red, .blue, .green]
    var body: some View {
        Picker(selection: $selectedColor,label: Text("Color")) {
            Text("Red").tag(0)
            Text("Blue").tag(1)
            Text("Green").tag(2)
        }.pickerStyle(.segmented)
            .frame(width: 300)
            .padding(20)
        
        VStack(spacing: 15.0) {
            switch colorView[selectedColor] {
            case .red:
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 80, height: 80)
            case .blue:
                Circle()
                    .stroke(lineWidth: 8.0)
                    .foregroundColor(.blue)
                    .frame(width: 80, height: 80)
            case .green:
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 80, height: 80)
            default:
                Text("No color")
            }
            
            Text("This color is") +
            Text(" \(colorView[selectedColor])").bold().font(.title).foregroundColor(colorView[selectedColor])
        }
    }
}

#Preview {
    Chapter5_6View()
}
