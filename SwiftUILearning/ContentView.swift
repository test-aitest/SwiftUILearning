//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("print")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
