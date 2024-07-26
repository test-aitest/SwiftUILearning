//
//  CourseRow.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct CourseRow: View {
    var body: some View {
        HStack(alignment:.top) {
            Image(systemName: "paperplane.circle.fill")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(.blue)
                .clipShape(Circle())
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("SwiftUI")
                    .font(.headline)
                    .bold()
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

#Preview {
    CourseRow()
}
