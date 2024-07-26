//
//  CoursesItem.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct CourseItem: View {
    var course: Course = courses[0]
    
#if os(iOS)
    var cornerRadius: CGFloat = 22
#else
    var cornerRadius: CGFloat = 10
#endif
    
    var body: some View {
        //        List(0 ..< 100) { _ in
        //            CourseRow()
        //         }.listStyle(InsetGroupedListStyle())
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

#Preview {
    CourseItem()
}
