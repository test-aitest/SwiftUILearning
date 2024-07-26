//
//  CoursesView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct CoursesView: View {
    @State var show: Bool = false
    @Namespace var nameSpace
    @State var selectedItem: Course? = nil
    @State var isDisable: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView() {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: UIScreen.main.bounds.width/3))], spacing: 16) {
                    ForEach(courses) { item in
                        CourseItem(course: item)
                            .matchedGeometryEffect(
                                id: item.id, in: nameSpace, isSource: !show
                            )
                            .frame(height: 250)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                    selectedItem = item
                                    isDisable = true
                                }
                            }
                            .disabled(isDisable)
                    }.zIndex(1.0)
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            
            if show {
                if selectedItem != nil {
                    ScrollView {
                        ZStack(alignment: .topTrailing) {
                            CourseItem(course: selectedItem!)
                                .matchedGeometryEffect(id: selectedItem!.id, in: nameSpace, isSource: !show)
                                .frame(height: 300)
                            CloseButton()
                                .padding(16)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        show.toggle()
                                        selectedItem = nil
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                            isDisable = false
                                        }
                                    }
                                }
                        }.zIndex(2.0)
                        ForEach(0 ..< 20) {_ in
                            CourseRow()
                                .padding(.horizontal, 16)
                        }
                    }
                    .background(.white)
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
    var content: some View {
        List(0 ..< 30) { item in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
    
}

#Preview {
    CoursesView()
}
