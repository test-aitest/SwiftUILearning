//
//  Chapter5_4View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_4View: View {
    @State var volume: Double = 0.0
    
    var body: some View {
        VStack(spacing: 50) {
            if volume == 1.0 {
                Text("1.0になりました")
                    .font(.title)
            }
            GroupBox {
                Slider(value: $volume)
                Text("\(format(volume))").font(.largeTitle)
            }
            Image(systemName: "speaker.wave.3", variableValue: volume)
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
    
    func format(_ num: Double) -> String {
        let result = String(round(volume*100) / 100)
        return result
    }
}


#Preview {
    Chapter5_4View()
}
