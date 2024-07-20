//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("WEDNESDAY, APRIL 15")
                            .font(CATEGORY)
                            .foregroundColor(GRAY_400)
                        Text("Today")
                            .font(PAGE_TITLE)
                            .foregroundColor(Color.white)
                            .lineSpacing(40.0)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Image("Avator")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                }
                .frame(width: 335)
                
                VStack(spacing: 20) {
                    ForEach(0..<cardList.count-1, id: \.self) { index in
                        cardList[index]
                    }
                    AppListView()
                    cardList[cardList.count-1]
                }
            }
            .padding(.horizontal, 20.0).padding(.top, 28.0)
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}
