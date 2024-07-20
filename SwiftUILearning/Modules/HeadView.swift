//
//  HeadView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct HeadView: View {
    var tabNum: Int = 0
    let today = DateFormatterHelper.formattedCurrentDate()
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                if tabNum == 0 {
                    Text(today)
                        .font(CATEGORY)
                        .foregroundColor(GRAY_400)
                } else {
                    Spacer().frame(height: 16)
                }
                Text(tabIconList[tabNum])
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
    }
}

#Preview {
    HeadView()
        .background(.black)
}
