//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Go to Chapter2", destination: Chapter2View())
                NavigationLink("Go to Chapter3", destination: Chapter3View())
            }
        }
    }
}

#Preview {
    ContentView()
}
